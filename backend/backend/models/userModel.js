const mongoose = require('mongoose');
const crypto = require('crypto');

const UserSchema = new mongoose.Schema({
  fullName: { type: String, required: true },
  email: { type: String, required: true, unique: true },
  password: { type: String, required: true },
  role: { type: String, enum: ['Patient'], required: true },
  verified: { type: Boolean, default: false },
  resetPasswordToken: { type: String },
  resetPasswordExpires: { type: Date },
  date: { type: Date, default: Date.now },
});

// Generate a reset password token and expiration
UserSchema.methods.generateResetPasswordToken = function () {
  // Generate a token using crypto.randomBytes
  this.resetPasswordToken = crypto.randomBytes(32).toString('hex');
  // Set expiration time for the reset token (1 hour from now)
  this.resetPasswordExpires = Date.now() + 3600000; // 1 hour from now
  return this.resetPasswordToken;
};

// Compare password (used when user logs in)
userSchema.methods.comparePassword = async function (candidatePassword) {
  return bcrypt.compare(candidatePassword, this.password);
};
module.exports = mongoose.model('User', UserSchema);
