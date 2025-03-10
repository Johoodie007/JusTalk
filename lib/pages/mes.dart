import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;
import 'webrtc_service.dart';

class Mes extends StatefulWidget {
  const Mes({super.key});

  @override
  MesState createState() => MesState();
}

class MesState extends State<Mes> {
  bool _isTextMode = false; // To toggle between text mode and voice note mode
  final TextEditingController _controller = TextEditingController();

  final WebRTCService webRTCService = WebRTCService();

  RTCVideoRenderer localRenderer = RTCVideoRenderer();
  RTCVideoRenderer remoteRenderer = RTCVideoRenderer();

  @override
  void initState() {
    super.initState();
    _setupRenderers();
    webRTCService.initialize(localRenderer, remoteRenderer);
  }

  Future<void> _setupRenderers() async {
    await localRenderer.initialize();
    await remoteRenderer.initialize();
  }

  @override
  Widget build(BuildContext context) {
    double maxWidth = MediaQuery.of(context).size.width * 0.8;

    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Column(
          children: [
            // Header (Doctor Info + Call buttons + Three-dot menu)
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.grey[300],
                        child: SvgPicture.asset('assets/vectors/rectangle_72_x2.svg', width: 35),
                      ),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Dr. Mariam Mousa',
                            style: GoogleFonts.inter(fontSize: 16, fontWeight: FontWeight.w700),
                          ),
                          Text(
                            'Online',
                            style: GoogleFonts.inter(fontSize: 12, color: Colors.green),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () => webRTCService.startCall(),
                        icon: Icon(Icons.video_call, color: Colors.blue),
                      ),
                      IconButton(
                        onPressed: () => webRTCService.endCall(),
                        icon: Icon(Icons.call_end, color: Colors.red),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Video Streams
            Expanded(
              child: Row(
                children: [
                  Flexible(child: RTCVideoView(localRenderer, mirror: true)),
                  Flexible(child: RTCVideoView(remoteRenderer)),
                ],
              ),
            ),

            // Chat Messages
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: ListView(
                  children: [
                    // Chat bubbles go here
                  ],
                ),
              ),
            ),

            // Message Input Box
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
                        // Send message functionality
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
