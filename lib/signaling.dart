import 'package:socket_io_client/socket_io_client.dart' as IO;

class Signaling {
  late IO.Socket socket;

  // Constructor to initialize connection
  Signaling() {
    _initializeSocket();
  }

  void _initializeSocket() {
    socket = IO.io(
      'http://192.168.8.154:3000',
      <String, dynamic>{
        'transports': ['websocket'],
        'autoConnect': false,
        'reconnectionAttempts': 5, // Auto-reconnect up to 5 times
        'reconnectionDelay': 2000, // Delay between reconnect attempts
      },
    );

    socket.connect();

    socket.on('connect', (_) {
      print('✅ Connected to signaling server');
    });

    socket.on('offer', (data) {
      print('📩 Received offer: $data');
      _handleOffer(data);
    });

    socket.on('answer', (data) {
      print('📩 Received answer: $data');
      _handleAnswer(data);
    });

    socket.on('candidate', (data) {
      print('📩 Received ICE candidate: $data');
      _handleCandidate(data);
    });

    socket.on('disconnect', (_) {
      print('❌ Disconnected from signaling server');
    });

    socket.on('connect_error', (error) {
      print('⚠️ Connection error: $error');
    });

    socket.on('reconnect_attempt', (_) {
      print('🔄 Reconnecting...');
    });
  }

  void sendOffer(Map<String, dynamic> offer) {
    if (socket.connected) {
      socket.emit('offer', offer);
      print('📤 Sent offer');
    } else {
      print('⚠️ Not connected to server, cannot send offer');
    }
  }

  void sendAnswer(Map<String, dynamic> answer) {
    if (socket.connected) {
      socket.emit('answer', answer);
      print('📤 Sent answer');
    } else {
      print('⚠️ Not connected to server, cannot send answer');
    }
  }

  void sendCandidate(Map<String, dynamic> candidate) {
    if (socket.connected) {
      socket.emit('candidate', candidate);
      print('📤 Sent ICE candidate');
    } else {
      print('⚠️ Not connected to server, cannot send candidate');
    }
  }

  void _handleOffer(Map<String, dynamic> data) {
    print('📥 Handling incoming offer: $data');
    // Implement logic to process WebRTC offer
  }

  void _handleAnswer(Map<String, dynamic> data) {
    print('📥 Handling incoming answer: $data');
    // Implement logic to process WebRTC answer
  }

  void _handleCandidate(Map<String, dynamic> data) {
    print('📥 Handling incoming ICE candidate: $data');
    // Implement logic to add ICE candidate to WebRTC connection
  }
}
