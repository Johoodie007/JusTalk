const mongoose = require('mongoose');
const bcrypt = require('bcryptjs');

const userSchema = new mongoose.Schema({
  _id: { type: mongoose.Schema.Types.ObjectId, auto: true },
  fullName: { type: String, required: true },
  email: { type: String, required: true, unique: true },
  password: { type: String, required: true },
  role: { type: String, enum: ['Patient'], required: true },
    profilePic: { type: String, default: 'default_profile.png' },
    bio: { type: String, default: '' },
  verified: { type: Boolean, default: false },
  resetPasswordToken: { type: String },
  resetPasswordExpires: { type: Date },
  date: { type: Date, default: Date.now },
});


// userModel.js - UPDATED
userSchema.pre('save', async function (next) {
  if (!this.isModified('password')) return next();

  try {
    this.password = await bcrypt.hash(this.password, 10);
    next();
  } catch (err) {
    next(new Error('Password hashing failed'));
  }
});


// 🔹 Generate a reset password token and expiration
userSchema.methods.generateResetPasswordToken = function () {
  this.resetPasswordToken = crypto.randomBytes(32).toString('hex');
  this.resetPasswordExpires = Date.now() + 3600000; // 1 hour from now
  return this.resetPasswordToken;
};
// Update password comparison method
userSchema.methods.comparePassword = async function (candidatePassword) {
  try {
    return await bcrypt.compare(candidatePassword, this.password);
  } catch (error) {
    throw new Error('Password comparison failed');
  }
};

// Add virtual field for clean user data
userSchema.virtual('cleanUser').get(function () {
  return {
    email: this.email,
    fullName: this.fullName,
    role: this.role,
  };
});


// Export the User model
module.exports = mongoose.model('User', userSchema);
