const { validationResult } = require('express-validator');
const User = require('../models/userModel');
const bcrypt = require('bcryptjs');
const jwt = require('jsonwebtoken');
const crypto = require('crypto');
const nodemailer = require('nodemailer');

// Helper function to generate JWT token
const generateToken = (id, role) => {
  const payload = { id, role };
  return jwt.sign(payload, process.env.JWT_SECRET, { expiresIn: process.env.JWT_EXPIRE || 3600 });
};

// userController.js - UPDATED
exports.registerUser = async (req, res) => {
  const errors = validationResult(req);
  if (!errors.isEmpty()) return res.status(400).json({ errors: errors.array() });

  const { fullName, email, password } = req.body;

  try {
    if (await User.findOne({ email })) {
      return res.status(400).json({ msg: 'Email already exists' });
    }

    // Remove manual hashing - let pre-save hook handle it
    const user = new User({ fullName, email, password, role: 'Patient' });
    await user.save();

    res.json({ token: generateToken(user.id, user.role) });
  } catch (err) {
    console.error('Registration Error:', err.stack);
    res.status(500).json({ msg: 'Server error' });
  }
};

exports.loginUser = async (req, res) => {
  const { email, password } = req.body;

  try {
    // Enhanced email normalization
    const cleanEmail = email.trim().toLowerCase();
    const user = await User.findOne({ email: cleanEmail }).select('+password');

    if (!user) {
      console.log('Login Fail: No user for', cleanEmail);
      return res.status(401).json({ msg: 'Invalid credentials' });
    }

    // Enhanced password validation
    const isMatch = await bcrypt.compare(password, user.password);
    if (!isMatch) {
      console.log('Password mismatch for', cleanEmail);
      return res.status(401).json({ msg: 'Invalid credentials' });
    }

    res.json({
      token: generateToken(user.id, user.role),
      userId: user.id.toString()
    });
  } catch (err) {
    console.error('Login Error:', err.stack);
    res.status(500).json({ msg: 'Server error' });
  }
};

exports.forgotPasswordUser = async (req, res) => {
  const { email } = req.body;

  // Validate the input email
  const errors = validationResult(req);
  if (!errors.isEmpty()) {
    return res.status(400).json({ errors: errors.array() });
  }

  try {
    // Check if the user exists
    const user = await User.findOne({ email });
    if (!user) {
      return res.status(400).json({ msg: 'User with this email does not exist' });
    }

    // Create a reset token for password reset
    const resetToken = crypto.randomBytes(20).toString('hex');
    user.resetPasswordToken = resetToken;
    user.resetPasswordExpires = Date.now() + 3600000; // Token expires in 1 hour
    await user.save();

    // Set up the nodemailer transporter
    const transporter = nodemailer.createTransport({
      service: 'gmail',
      auth: {
        user: process.env.EMAIL_USER, // Your email address
        pass: process.env.EMAIL_PASS, // Your email password or app-specific password
      },
    });

    // The reset link that the user will click
    const resetLink = `${process.env.FRONTEND_URL}/reset-password/user/${resetToken}`;

    // Set up the mail options
    const mailOptions = {
      to: user.email,
      subject: 'Password Reset Request',
      html: `<p>Click <a href="${resetLink}">here</a> to reset your password.</p>`,
    };

    // Send the email using async/await
    const info = await transporter.sendMail(mailOptions);
    console.log('Email sent:', info.response);

    // Respond to the user
    res.json({ msg: 'Password reset link has been sent to your email.' });
  } catch (err) {
    console.error(err.message);
    res.status(500).json({ msg: 'Server error' });
  }
};