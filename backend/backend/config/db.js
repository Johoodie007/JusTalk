const mongoose = require('mongoose');

const connectDB = async () => {
  try {
    await mongoose.connect('mongodb://localhost:27017/jusTalk');
    console.log('MongoDB connected...');
  } catch (err) {
    console.error(err.messanoge);
    process.exit(1);
  }
};

module.exports = connectDB;