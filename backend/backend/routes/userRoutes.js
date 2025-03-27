const express = require("express");
const { check, validationResult } = require("express-validator");
const multer = require("multer");
const path = require("path");
const User = require("../models/userModel");
const {
  registerUser,
  loginUser,
  forgotPassword,
  resetPassword,
} = require("../controllers/userController");
const upload = require('../middleware/multconf');

const router = express.Router();

// Register User
router.post(
  "/register",
  [
    check("fullName", "Full Name is required").not().isEmpty(),
    check("email", "Please include a valid email").isEmail(),
    check("password", "Please enter a password with 6 or more characters").isLength({ min: 6 }),
  ],
  async (req, res) => {
    const errors = validationResult(req);
    if (!errors.isEmpty()) {
      return res.status(400).json({ errors: errors.array() });
    }
    try {
      await registerUser(req, res);
    } catch (err) {
      console.error(err.message);
      res.status(500).json({ msg: "Server error" });
    }
  }
);

// Login User
router.post(
  "/login",
  [
    check("email", "Please include a valid email").isEmail(),
    check("password", "Password is required").exists(),
  ],
  async (req, res) => {
    const errors = validationResult(req);
    if (!errors.isEmpty()) {
      return res.status(400).json({ errors: errors.array() });
    }
    try {
      await loginUser(req, res);
    } catch (err) {
      console.error(err.message);
      res.status(500).json({ msg: "Server error" });
    }
  }
);

// Get user by ID
router.get('/users/:userId', async (req, res) => {
  try {
    const user = await User.findById(req.params.userId);
    if (!user) return res.status(404).json({ message: "User not found" });

     res.json(user);
  } catch (error) {
            console.error(error);
            res.status(500).json({ message: "Server error" });
        }
});


// Update Profile
router.post("/update-profile", upload.single("profilePic"), async (req, res) => {
  try {
    const { userId, bio } = req.body;
    let updateFields = { bio };

    if (req.file) {
      updateFields.profilePic = req.file.filename;
    }

    const user = await User.findByIdAndUpdate(userId, updateFields, { new: true });
    res.json({ message: "Profile updated successfully", user });
  } catch (err) {
    res.status(500).json({ message: "Error updating profile", error: err });
  }
});

// Forgot Password
router.post("/forgot-password", [check("email", "Please include a valid email").isEmail()], async (req, res) => {
  try {
    await forgotPassword(req, res);
  } catch (err) {
    console.error(err.message);
    res.status(500).json({ msg: "Server error" });
  }
});

// Reset Password
router.post(
  "/reset-password",
  [
    check("token", "Token is required").not().isEmpty(),
    check("password", "Password must be at least 6 characters").isLength({ min: 6 }),
  ],
  async (req, res) => {
    try {
      await resetPassword(req, res);
    } catch (err) {
      console.error(err.message);
      res.status(500).json({ msg: "Server error" });
    }
  }
);

module.exports = router;
