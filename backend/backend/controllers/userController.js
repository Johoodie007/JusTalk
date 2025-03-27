const { validationResult } = require('express-validator');
const User = require('../models/userModel');
const bcrypt = require('bcryptjs');
const jwt = require('jsonwebtoken');
const nodemailer = require('nodemailer');
const multer = require('multer');


// Helper function to generate JWT token
const generateToken = (id, role) => {
  const payload = { id, role };
  return jwt.sign(payload, process.env.JWT_SECRET, { expiresIn: process.env.JWT_EXPIRE || 3600 });
};


// Fetch user profile
exports.getUserProfile = async (req, res) => {
  try {
    const user = await User.findById(req.params.id);
    if (!user) {
      return res.status(404).json({ message: "User not found" });
    }

    res.status(200).json(doctor);
  } catch (error) {
    console.error("🔥 Error fetching user profile:", error);
    res.status(500).json({ message: "Server error" });
  }
};


// register
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


//login
exports.loginUser = async (req, res) => {
  const { email, password } = req.body;

  try {
    // tried email normalization
    const cleanEmail = email.trim();
    const user = await User.findOne({ email: cleanEmail }).select('+password');

    if (!user) {
      console.log('Login Fail: No user for', cleanEmail);
      return res.status(401).json({ msg: 'Invalid credentials' });
    }

    // my password validation
    const isMatch = await bcrypt.compare(password, user.password);
    if (!isMatch) {
      console.log('Password mismatch for', cleanEmail);
      return res.status(401).json({ msg: 'Invalid credentials' });
    }

 const token = generateToken(user.id, user.role);

 res.json({
     msg: 'Login successful',
     token: token,
     userId: user._id,
 });
  } catch (error) {
    console.error('Login Error:', err.stack);
    res.status(500).json({ msg: 'Server error' });
  }
};


// Fetch doctor profile
exports.getUserProfile = async (req, res) => {
  try {
    const user = await User.findById(req.params.id);
    if (!user) {
      return res.status(404).json({ message: "User not found" });
    }

    res.status(200).json(doctor);
  } catch (error) {
    console.error("🔥 Error fetching User profile:", error);
    res.status(500).json({ message: "Server error" });
  }
};


// 🖼️ Configure image storage using multer
const storage = multer.diskStorage({
  destination: (req, file, cb) => {
    cb(null, 'uploads/'); // Ensure this folder exists
  },
  filename: (req, file, cb) => {
    cb(null, `${Date.now()}-${file.originalname}`);
  }
});

const upload = multer({ storage });

// Profile Update
exports.updateUserProfile = async (req, res) => {
  try {
    const { UserId, bio } = req.body;
    let updateData = { bio };

    if (req.file) {
      updateData.profilePic = `uploads/${req.file.filename}`;
    }

    const updatedUser = await User.findByIdAndUpdate(UserId, updateData, { new: true });

    if (!updatedUser) {
      return res.status(404).json({ message: "User not found" });
    }

    res.status(200).json({ message: "Profile updated successfully", updatedUser });
  } catch (err) {
    console.error("🔥 Server error:", err);
    res.status(500).json({ message: "Server error" });
  }
};


//forgot password
exports.forgotPasswordUser = async (req, res) => {
  const { email } = req.body;


  const errors = validationResult(req);
  if (!errors.isEmpty()) {
    return res.status(400).json({ errors: errors.array() });
  }

  try {

    const user = await User.findOne({ email });
    if (!user) {
      return res.status(400).json({ msg: 'User with this email does not exist' });
    }



    // password reset
    const resetToken = crypto.randomBytes(20).toString('hex');
    user.resetPasswordToken = resetToken;
    user.resetPasswordExpires = Date.now() + 3600000; // Token expires in 1 hour
    await user.save();


    const transporter = nodemailer.createTransport({
      service: 'gmail',
      auth: {
        user: process.env.EMAIL_USER, // Your email address
        pass: process.env.EMAIL_PASS, // Your email password or app-specific password
      },
    });


    const resetLink = `${process.env.FRONTEND_URL}/reset-password/user/${resetToken}`;


    const mailOptions = {
      to: user.email,
      subject: 'Password Reset Request',
      html: `<p>Click <a href="${resetLink}">here</a> to reset your password.</p>`,
    };


    const info = await transporter.sendMail(mailOptions);
    console.log('Email sent:', info.response);


    res.json({ msg: 'Password reset link has been sent to your email.' });
  } catch (err) {
    console.error(err.message);
    res.status(500).json({ msg: 'Server error' });
  }
};