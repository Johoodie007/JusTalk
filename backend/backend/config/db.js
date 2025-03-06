const mongoose = require('mongoose');

const connectDB = async () => {
  try {
    await mongoose.connect(process.env.MONGO_URI, {
      useNewUrlParser: true,
      useUnifiedTopology: true,
      useCreateIndex: true, // Add useCreateIndex option
      useFindAndModify: false, // Add useFindAndModify option
    });
    console.log('MongoDB connected...');
  } catch (err) {
    if (err.name === 'MongoNetworkError') {
      console.error('Error connecting to MongoDB: Network error');
    } else if (err.name === 'MongoError' && err.code === 18) {
      console.error('Error connecting to MongoDB: Authentication failed');
    } else {
      console.error('Error connecting to MongoDB:', err.message);
    }
    process.exit(1);
  }
};

module.exports = connectDB;