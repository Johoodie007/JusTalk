import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_app/pages/get_started.dart'; // Import GetStarted

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  SplashState createState() => SplashState();
}

class SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();

    // Navigate to GetStarted page after 3 seconds
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const GetStarted()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double imageWidth = screenWidth * 0.6; // Images take 60% of screen width

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo and Title
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/vectors/vector_11_x2.svg',
                  width: imageWidth * 0.2,
                  fit: BoxFit.contain,
                ),
                const SizedBox(width: 10),
                Text(
                  'Just Talk',
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w700,
                    fontSize: 30,
                    color: const Color(0xFF273686),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),

            // Main Splash Image
            SizedBox(
              width: imageWidth,
              child: SvgPicture.asset(
                'assets/vectors/text_0_x2.svg',
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 20),

            // Subtitle Image
            SizedBox(
              width: imageWidth * 0.8,
              child: SvgPicture.asset(
                'assets/vectors/text_1_x2.svg',
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 40),

            // Tagline Text
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'The best counseling from the best psychologists',
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: const Color(0xFF0C0150),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
