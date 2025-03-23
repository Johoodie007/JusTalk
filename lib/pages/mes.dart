import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'webrtc_service.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:permission_handler/permission_handler.dart';

class Mes extends StatefulWidget {
  const Mes({super.key});

  @override
  MesState createState() => MesState();
}

class MesState extends State<Mes> {
  bool _isTextMode = false;
  bool isCallInProgress = false; // Track call state
  final TextEditingController _controller = TextEditingController();
  final WebRTCService webRTCService = WebRTCService();

  RTCVideoRenderer localRenderer = RTCVideoRenderer();
  RTCVideoRenderer remoteRenderer = RTCVideoRenderer();

  @override
  void initState() {
    super.initState();
    _setupRenderers();
    requestMediaPermissions();
  }

  Future<void> _setupRenderers() async {
    await localRenderer.initialize();
    await remoteRenderer.initialize();
  }

  Future<void> requestMediaPermissions() async {
    PermissionStatus cameraStatus = await Permission.camera.request();
    PermissionStatus micStatus = await Permission.microphone.request();

    if (cameraStatus.isGranted && micStatus.isGranted) {
      print("Permissions granted");
    } else {
      print("Permissions denied");
      openAppSettings();
    }
  }

  void startCall() {
    setState(() {
      isCallInProgress = true;
    });
    webRTCService.startCall();
  }

  void endCall() {
    setState(() {
      isCallInProgress = false;
    });
    webRTCService.endCall();
  }

  void sendMessage() {
    String message = _controller.text.trim();
    if (message.isNotEmpty) {
      print("Sending message: $message");
    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.grey[300],
                        child: SvgPicture.asset(
                          'assets/vectors/rectangle_72_x2.svg',
                          width: 45,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Dr. Mariam Mousa',
                            style: GoogleFonts.inter(fontSize: 18, fontWeight: FontWeight.w700),
                          ),
                          Text(
                            'Online',
                            style: GoogleFonts.inter(fontSize: 14, color: Colors.green),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: startCall,
                        icon: Icon(Icons.video_call, color: Colors.blue, size: 30),
                      ),
                      IconButton(
                        onPressed: endCall,
                        icon: Icon(Icons.call_end, color: Colors.red, size: 30),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            if (isCallInProgress)
              Center(child: CircularProgressIndicator()), // Show a loading indicator for call

            Expanded(
              child: Row(
                children: [
                  Flexible(child: RTCVideoView(localRenderer, mirror: true)),
                  Flexible(child: RTCVideoView(remoteRenderer)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _controller,
                      onChanged: (text) {
                        setState(() {
                          _isTextMode = text.isNotEmpty;
                        });
                      },
                      decoration: InputDecoration(
                        hintText: 'Type a message...',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  GestureDetector(
                    onTap: () {
                      if (_isTextMode) {
                        sendMessage();
                      } else {
                        // Voice note functionality
                      }
                    },
                    child: CircleAvatar(
                      backgroundColor: Colors.blue,
                      child: Icon(
                        _isTextMode ? Icons.send : Icons.mic,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
