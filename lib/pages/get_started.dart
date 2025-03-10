import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_app/pages/role.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo & Title
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/vectors/vector_15_x2.svg',
                  width: 40,
                  fit: BoxFit.contain,
                ),
                const SizedBox(width: 10),
                Text(
                  'Just Talk',
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w500,
                    fontSize: 28,
                    color: const Color(0xFF273686),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),

            // Mental Health Image (Smallest Size)
            SizedBox(
              width: 100, // Small fixed width
              height: 100, // Small fixed height
              child: Image.asset(
                'assets/images/mental_health.png',
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 15),

            // Text Below Image
            Text(
              'Get the care you deserve',
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w700,
                fontSize: 18,
                color: const Color(0xFF0C0150),
              ),
            ),
            const SizedBox(height: 15),

            // Start Button
            SizedBox(
              width: screenWidth * 0.4, // Adjusted button width
              height: 45, // Reduced button height
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: const Color(0xFF273686),
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Role()),
                  );
                },
                child: Text(
                  'Start',
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
