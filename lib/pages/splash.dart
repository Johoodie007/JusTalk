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
      child: Stack(
        children: [
          Positioned(
            right: 54.9,
            top: 773,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: SizedBox(
                width: 249.1,
                height: 70.4,
                child: SvgPicture.asset(
                  'assets/vectors/rectangle_12_x2.svg',
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(32.1, 12.1, 32, 93.4),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 43.8),
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
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin:
                                      const EdgeInsets.fromLTRB(0, 0, 6.1, 0),
                                  child: Text(
                                    '18:30',
                                    style: GoogleFonts.getFont(
                                      'Inter',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                      color: const Color(0xFF000000),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin:
                                      const EdgeInsets.fromLTRB(0, 0, 0, 0.9),
                                  child: SizedBox(
                                    width: 18.1,
                                    height: 17.1,
                                    child: SvgPicture.asset(
                                      'assets/vectors/vector_33_x2.svg',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 104.2,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.fromLTRB(
                                      0, 2, 14.7, 0.5),
                                  child: SizedBox(
                                    width: 25.1,
                                    height: 17.6,
                                    child: SvgPicture.asset(
                                      'assets/vectors/vector_47_x2.svg',
                                    ),
                                  ),
                                ),
                                Container(
                                  margin:
                                      const EdgeInsets.fromLTRB(0, 0, 10, 0),
                                  child: SizedBox(
                                    width: 23.2,
                                    height: 20.1,
                                    child: SvgPicture.asset(
                                      'assets/vectors/vector_19_x2.svg',
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.fromLTRB(0, 2, 0, 0),
                                  child: SizedBox(
                                    width: 31.1,
                                    height: 18.1,
                                    child: SvgPicture.asset(
                                      'assets/vectors/vector_64_x2.svg',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 49.5, 90.4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 2.2, 2.4),
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
                                'assets/vectors/vector_15_x2.svg',
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 25.7, 0, 0),
                        child: Text(
                          'Just Talk',
                          style: GoogleFonts.getFont(
                            'Inter',
                            fontWeight: FontWeight.w500,
                            fontSize: 30,
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
                  margin: const EdgeInsets.fromLTRB(6.4, 0, 0, 0),
                  child: Text(
                    'Get Started',
                    style: GoogleFonts.getFont(
                      'Inter',
                      fontWeight: FontWeight.w500,
                      fontSize: 30,
                      color: const Color(0xFFFFFFFF),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
