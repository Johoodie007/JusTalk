const { validationResult } = require('express-validator');
const Doctor = require('../models/doctorModel');
const bcrypt = require('bcryptjs');
const jwt = require('jsonwebtoken');
const crypto = require('crypto');
const multer = require('multer');
const path = require('path');

// Configure multer storage
const storage = multer.diskStorage({
  destination: function (req, file, cb) {
    cb(null, process.env.UPLOAD_DIR || 'uploads/');
  },
  filename: function (req, file, cb) {
    cb(null, `${Date.now()}-${file.originalname}`);
  },
});

const upload = multer({ storage: storage });

// Helper function to generate JWT token
const generateToken = (id, role) => {
  const payload = { id, role };
  return jwt.sign(payload, process.env.JWT_SECRET, { expiresIn: process.env.JWT_EXPIRE || 3600 });
};

// Register Doctor
exports.registerDoctor = async (req, res) => {
  const errors = validationResult(req);
  if (!errors.isEmpty()) {
    return res.status(400).json({ errors: errors.array() });
  }

  const { fullName, email, password } = req.body;

  try {
    let doctor = await Doctor.findOne({ email });
    if (doctor) {
      return res.status(400).json({ msg: 'Doctor with this email already exists' });
    }

    doctor = new Doctor({ fullName, email, password, role: 'Doctor' });

    const salt = await bcrypt.genSalt(Number(process.env.SALT_ROUNDS) || 10);
    doctor.password = await bcrypt.hash(password, salt);

    await doctor.save();

    const token = generateToken(doctor.id, doctor.role);
    res.json({ token });
  } catch (err) {
    console.error(err.message);
    res.status(500).json({ msg: 'Server error' });
  }
};

// Login Doctor
exports.loginDoctor = async (req, res) => {
  const { email, password } = req.body;

  try {
    let doctor = await Doctor.findOne({ email });
    if (!doctor) {
      return res.status(400).json({ msg: 'Invalid Credentials' });
    }

    const isMatch = await bcrypt.compare(password, doctor.password);
    if (!isMatch) {
      return res.status(400).json({ msg: 'Invalid Credentials' });
    }

    const token = generateToken(doctor.id, doctor.role);
    res.json({ token });
  } catch (err) {
    console.error(err.message);
    res.status(500).json({ msg: 'Server error' });
  }
};
