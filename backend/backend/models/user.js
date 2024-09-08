const mongoose = require('mongoose');

const UserSchema = new mongoose.Schema({
  fullName: { type: String, required: true },
  email: { type: String, required: true, unique: true },
  password: { type: String, required: true },
  cv: { type: String },
  certification: { type: String },
  role: { type: String, enum: ['patient', 'doctor'], required: true },
  verified: { type: Boolean, default: false },
  resetPasswordToken: { type: String },
  resetPasswordExpires: { type: Date },
  date: { type: Date, default: Date.now },
});

module.exports = mongoose.model('User', UserSchema);