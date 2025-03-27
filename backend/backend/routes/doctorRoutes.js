const express = require('express');
const { check, validationResult } = require('express-validator');
const { registerDoctor, loginDoctor, forgotPasswordDoctor, resetPasswordDoctor } = require('../controllers/doctorController');
const Doctor = require('../models/doctorModel');
const path = require("path");
const upload = require('../middleware/multconf'); // Assuming this middleware handles file uploads
const router = express.Router();

// Register Doctor
router.post(
  '/register',
  upload.fields([{ name: 'cv', maxCount: 1 }, { name: 'certification', maxCount: 1 }]),
  [
    check('fullName', 'Full Name is required').not().isEmpty(),
    check('email', 'Please include a valid email').isEmail(),
    check('password', 'Please enter a password with 6 or more characters').isLength({ min: 6 }),
  ],
  async (req, res) => {
    const errors = validationResult(req);
    if (!errors.isEmpty()) {
      return res.status(400).json({ errors: errors.array() });
    }
    try {
      await registerDoctor(req, res);
    } catch (err) {
      console.error(err.message);
      res.status(500).json({ msg: 'Server error' });
    }
  }
);


router.post('/login', [
  check('email', 'Please include a valid email').isEmail(),
  check('password', 'Password is required').exists(),
], async (req, res) => {
  console.log("🔵 Incoming POST request to /login");
  console.log("📜 Body:", req.body);

  const errors = validationResult(req);
  if (!errors.isEmpty()) {
    console.log("❌ Validation errors:", errors.array());
    return res.status(400).json({ errors: errors.array() });
  }

  try {
    await loginDoctor(req, res);
  } catch (err) {
    console.error("🔥 Login Error:", err.message);
    res.status(500).json({ msg: 'Server error' });
  }
});


router.get('/doctors/:doctorId', async (req, res) => {
    try {
        const doctor = await Doctor.findById(req.params.doctorId);
        if (!doctor) {
            return res.status(404).json({ message: "Doctor not found" });
        }
        res.json(doctor);
    } catch (error) {
        console.error(error);
        res.status(500).json({ message: "Server error" });
    }
});



router.post('/update-doctor-profile', upload.single('profilePic'), async (req, res) => {
  try {
    const { doctorId, bio } = req.body;
    let updateData = { bio };

    if (req.file) {
      updateData.profilePic = req.file.path; // Ensure that file is saved and returned in response
    }

    const updatedDoctor = await Doctor.findByIdAndUpdate(doctorId, updateData, { new: true });
    res.status(200).json({ message: "Profile updated successfully", doctor: updatedDoctor });
  } catch (err) {
    res.status(500).json({ message: "Server error" });
  }
});


// Route for Doctor forgot password
router.post('/forgot-password', [
  check('email', 'Please include a valid email').isEmail(),
], forgotPasswordDoctor);

// Route for Doctor reset password
router.post('/reset-password', [
  check('token', 'Token is required').not().isEmpty(),
  check('password', 'Password must be at least 6 characters').isLength({ min: 6 }),
], resetPasswordDoctor);



module.exports = router;
