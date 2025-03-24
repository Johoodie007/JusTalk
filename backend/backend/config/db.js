require('dotenv').config({ path: './port.env' });  // Ensure the path is correct
const mongoose = require('mongoose');

// Connect to MongoDB Database
const connectDB = async () => {
  try {
    // Debugging line to ensure the URI is being loaded
    console.log('Mongo URI:', process.env.MONGO_URI);
    if (!process.env.MONGO_URI) {
      throw new Error('MONGO_URI is not defined in port.env');
    }

    // Connect to MongoDB
    const connection = await mongoose.connect(process.env.MONGO_URI);

    console.log('MongoDB connected...');
    console.log("✅ Connected to MongoDB:", connection.connection.db.databaseName);
  } catch (err) {
    // Specific MongoDB error handling
    if (err.name === 'MongoNetworkError') {
      console.error('❌ Error connecting to MongoDB: Network error');
    } else if (err.name === 'MongoError' && err.code === 18) {
      console.error('❌ Error connecting to MongoDB: Authentication failed');
    } else {
      console.error('❌ Error connecting to MongoDB:', err.message);
    }
    process.exit(1);
  }
};

module.exports = connectDB;
