const multer = require('multer');
const path = require('path');
const Doctor = require('../models/doctorModel');
const bcrypt = require('bcryptjs');
const jwt = require('jsonwebtoken');

const storage = multer.diskStorage({
  destination: function (req, file, cb) {
    cb(null, 'uploads/');
  },
  filename: function (req, file, cb) {
    cb(null, `${Date.now()}-${file.originalname}`);
  },
});

const upload = multer({ storage: storage });

exports.registerDoctor = async (req, res) => {
  const { fullName, email, password } = req.body;
  const cv = req.files['cv'] ? req.files['cv'][0].path : null;
  const certification = req.files['certification'] ? req.files['certification'][0].path : null;

  try {
    let doctor = await Doctor.findOne({ email });
    if (doctor) {
      return res.status(400).json({ msg: 'Doctor with this email already exists' });
    }

    doctor = new Doctor({
      fullName,
      email,
      password,
      cv,
      certification,
      role: 'doctor',
    });

    const salt = await bcrypt.genSalt(10);
    doctor.password = await bcrypt.hash(password, salt);

    await doctor.save();

    const payload = {
      doctor: {
        id: doctor.id,
      },
    };

    jwt.sign(
      payload,
      'your_jwt_secret',
      { expiresIn: 3600 },
      (err, token) => {
        if (err) throw err;
        res.json({ token });
      }
    );
  } catch (err) {
    console.error(err.message);
    res.status(500).send('Server error');
  }
};

exports.forgotPasswordDoctor = async (req, res) => {
  const { email } = req.body;
  try {
    let doctor = await Doctor.findOne({ email });
    if (!doctor) {
      return res.status(400).json({ msg: 'Doctor with this email does not exist' });
    }
    // Generate reset token and set expiration
    const resetToken = crypto.randomBytes(20).toString('hex');
    doctor.resetPasswordToken = resetToken;
    doctor.resetPasswordExpires = Date.now() + 3600000; // 1 hour
    await doctor.save();
    // Send email with reset token
    res.json({ msg: 'Password reset email sent' });
  } catch (err) {
    console.error(err.message);
    res.status(500).send('Server error');
  }
};

module.exports.upload = upload;