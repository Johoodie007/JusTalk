import 'package:flutter/material.dart';
//import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
//import 'package:flutter_app/utils.dart';
import 'package:google_fonts/google_fonts.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

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
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 0, 6.1, 0),
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
                              margin: const EdgeInsets.fromLTRB(0, 0, 0, 0.9),
                              child: SizedBox(
                                width: 18.1,
                                height: 17.1,
                                child: SvgPicture.asset(
                                  'assets/vectors/vector_2_x2.svg',
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
                              margin:
                                  const EdgeInsets.fromLTRB(0, 2, 14.7, 0.5),
                              child: SizedBox(
                                width: 25.1,
                                height: 17.6,
                                child: SvgPicture.asset(
                                  'assets/vectors/vector_57_x2.svg',
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                              child: SizedBox(
                                width: 23.2,
                                height: 20.1,
                                child: SvgPicture.asset(
                                  'assets/vectors/vector_74_x2.svg',
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 2, 0, 0),
                              child: SizedBox(
                                width: 31.1,
                                height: 18.1,
                                child: SvgPicture.asset(
                                  'assets/vectors/vector_49_x2.svg',
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
