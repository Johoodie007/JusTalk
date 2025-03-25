const mongoose = require("mongoose");
const bcrypt = require("bcryptjs");
//const crypto = require('crypto');

const DoctorSchema = new mongoose.Schema({
  fullName: { type: String, required: true },
  email: { type: String, required: true, unique: true },
  password: { type: String, required: true },
  role: { type: String, enum: ['Doctor'], required: true },
  verified: { type: Boolean, default: false },
  resetPasswordToken: { type: String },
  resetPasswordExpires: { type: Date },
  date: { type: Date, default: Date.now },
});

  // Pre-save hook to hash password before saving
   DoctorSchema.pre('save', async function (next) {
     try {
       if (this.isModified('password')) { // Only hash the password if it's being modified (e.g. on register or password change)
         this.password = await bcrypt.hash(this.password, 10);
       }
       next();
     } catch (err) {
       next(new Error('Password hashing failed'));
     }
   });

// Generate a reset password token and expiration
DoctorSchema.methods.generateResetPasswordToken = function () {
  this.resetPasswordToken = require("crypto").randomBytes(32).toString("hex");
  this.resetPasswordExpires = Date.now() + 3600000; // 1 hour
  return this.resetPasswordToken;
};

// Compare password function
DoctorSchema.methods.comparePassword = async function (candidatePassword) {
  return bcrypt.compare(candidatePassword, this.password);
};

module.exports = mongoose.model("Doctor", DoctorSchema);
