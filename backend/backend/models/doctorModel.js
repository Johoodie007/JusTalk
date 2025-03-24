const mongoose = require('mongoose');
const crypto = require('crypto');

const UserSchema = new mongoose.Schema({
  fullName: { type: String, required: true },
  email: { type: String, required: true, unique: true },
  password: { type: String, required: true },
  role: { type: String, enum: ['Doctor'], required: true },
  verified: { type: Boolean, default: false },
  resetPasswordToken: { type: String },
  resetPasswordExpires: { type: Date },
  date: { type: Date, default: Date.now }
});

// Method to generate a reset password token
UserSchema.methods.generateResetPasswordToken = function() {
  // Generate a token using crypto.randomBytes
  this.resetPasswordToken = crypto.randomBytes(32).toString('hex');
  // Set expiration time for the reset token (e.g., 1 hour)
  this.resetPasswordExpires = Date.now() + 3600000; // 1 hour from now
  return this.resetPasswordToken;
};

userSchema.methods.comparePassword = async function (candidatePassword) {
  return bcrypt.compare(candidatePassword, this.password);
};
module.exports = mongoose.model('Doctor', UserSchema);
