const io = require("socket.io")(3000, {
    cors: {
        origin: "*",  // Allow all origins (for debugging)
    }
});

console.log("🚀 Signaling server is starting...");

io.on("connection", (socket) => {
    console.log(`✅ A user connected: ${socket.id}`);

    socket.on("disconnect", () => {
        console.log(`❌ User disconnected: ${socket.id}`);
    });
});

console.log("✅ Signaling server is running on port 3000");
