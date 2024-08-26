import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_app/pages/role.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: const Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Stack(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(32.1, 12.1, 45, 73.4),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 00, 49.5, 90.4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(32, 98, 9.2, 6.4),
                          child: SizedBox(
                            width: 53.2,
                            height: 39.4,
                            child: SvgPicture.asset(
                              'assets/vectors/vector_15_x2.svg',
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 84.7, 0, 0),
                          child: Text(
                            'Just Talk',
                            style: GoogleFonts.getFont(
                              'Inter',
                              fontWeight: FontWeight.w500,
                              fontSize: 45,
                              color: const Color(0xFF273686),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 42),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: SizedBox(
                        width: 316,
                        height: 379,
                        child: SvgPicture.asset(
                          'assets/vectors/undraw_active_support_re_b_7_sj_1_x2.svg',
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(5.9, 0, 0, 122.5),
                    child: Text(
                      '  Get the care you deserve ',
                      style: GoogleFonts.getFont(
                        'Inter',
                        fontWeight: FontWeight.w700,
                        fontSize: 26,
                        color: const Color(0xFF0C0150),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
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
                        // Navigate to the Role page
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Role()),
                        );
                      },
                      child: Text(
                        'Start',
                        style: GoogleFonts.getFont(
                          'Inter',
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
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
