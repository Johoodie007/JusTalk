import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

class WebRTCService {
  late IO.Socket socket;
  RTCPeerConnection? peerConnection;
  MediaStream? localStream;
  MediaStream? remoteStream;

  final String signalingServerUrl = "http://192.168.8.154:3000"; // Update with your IP

  void initialize(RTCVideoRenderer localRenderer, RTCVideoRenderer remoteRenderer) {
    _connectToSignalingServer();

    // Remove immediate getUserMedia call from here.
  }

  void _connectToSignalingServer() {
    socket = IO.io(signalingServerUrl, <String, dynamic>{
      "transports": ["websocket"],
    });

    socket.on("connect", (_) => print("Connected to signaling server"));
    socket.on("offer", _handleOffer);
    socket.on("answer", _handleAnswer);
    socket.on("candidate", _handleCandidate);
  }

  Future<void> startCall() async {
    // Only initialize getUserMedia here when the call starts.
    localStream = await _getUserMedia();
    peerConnection = await _createPeerConnection();
    peerConnection?.addStream(localStream!);

    RTCSessionDescription offer = await peerConnection!.createOffer();
    await peerConnection!.setLocalDescription(offer);

    socket.emit("offer", {"sdp": offer.sdp, "type": offer.type});
  }

  Future<void> endCall() async {
    peerConnection?.close();
    peerConnection = null;
    socket.disconnect();
  }

  Future<void> _handleOffer(dynamic data) async {
    peerConnection = await _createPeerConnection();
    await peerConnection!.setRemoteDescription(
        RTCSessionDescription(data["sdp"], data["type"]));

    RTCSessionDescription answer = await peerConnection!.createAnswer();
    await peerConnection!.setLocalDescription(answer);

    socket.emit("answer", {"sdp": answer.sdp, "type": answer.type});
  }

  Future<void> _handleAnswer(dynamic data) async {
    await peerConnection!.setRemoteDescription(
        RTCSessionDescription(data["sdp"], data["type"]));
  }

  Future<void> _handleCandidate(dynamic data) async {
    RTCIceCandidate candidate =
    RTCIceCandidate(data["candidate"], data["sdpMid"], data["sdpMLineIndex"]);
    await peerConnection?.addCandidate(candidate);
  }

  Future<RTCPeerConnection> _createPeerConnection() async {
    Map<String, dynamic> config = {
      "iceServers": [
        {"urls": "stun:stun.l.google.com:19302"},
      ]
    };

    final connection = await createPeerConnection(config);

    connection.onIceCandidate = (RTCIceCandidate candidate) {
      socket.emit("candidate", {
        "candidate": candidate.candidate,
        "sdpMid": candidate.sdpMid,
        "sdpMLineIndex": candidate.sdpMLineIndex
      });
    };

    return connection;
  }

  // Only request user media when the call is initiated
  Future<MediaStream> _getUserMedia() async {
    final Map<String, dynamic> mediaConstraints = {
      "audio": true,
      "video": {"facingMode": "user"}
    };

    return await navigator.mediaDevices.getUserMedia(mediaConstraints);
  }
}
