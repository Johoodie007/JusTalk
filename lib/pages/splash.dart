import 'package:flutter/material.dart';
//import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
//import 'package:flutter_app/utils.dart';
import 'package:google_fonts/google_fonts.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Container(
        padding: const EdgeInsets.fromLTRB(32.1, 12.1, 32.1, 217.8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 184.8),
              child: Align(
                alignment: Alignment.topLeft,
                child: SizedBox(
                  width: 346.1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 2, 0, 0.1),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(2.6, 0, 0, 114.7),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 2.2, 2.8),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color(0xFFFFFFFF),
                      ),
                      child: Container(
                        width: 53.2,
                        height: 59.4,
                        padding: const EdgeInsets.fromLTRB(0, 3.7, 0, 3.7),
                        child: SizedBox(
                          width: 53.2,
                          height: 52,
                          child: SvgPicture.asset(
                            'assets/vectors/vector_11_x2.svg',
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 26.2, 0, 0),
                    child: Text(
                      'Just Talk',
                      style: GoogleFonts.getFont(
                        'Inter',
                        fontWeight: FontWeight.w700,
                        fontSize: 30,
                        color: const Color(0xFF273686),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(7.7, 0, 0, 115.5),
              child: SizedBox(
                width: 278,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 22.7),
                      width: 222,
                      height: 96.1,
                      child: SizedBox(
                        width: 222,
                        height: 96.1,
                        child: SvgPicture.asset(
                          'assets/vectors/text_0_x2.svg',
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0.3, 0, 0.3, 0),
                      width: 222,
                      height: 24,
                      child: SizedBox(
                        width: 221.4,
                        height: 24,
                        child: SvgPicture.asset(
                          'assets/vectors/text_1_x2.svg',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(4.9, 0, 5.2, 0),
              child: Text(
                '       The best counseling from the best psychologists',
                style: GoogleFonts.getFont(
                  'Inter',
                  fontWeight: FontWeight.w700,
                  fontSize: 26,
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
