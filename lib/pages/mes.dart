import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_app/utils.dart';
import 'package:google_fonts/google_fonts.dart';

class Mes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
    Container(
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Container(
        padding: EdgeInsets.fromLTRB(0, 0, 1, 0),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color(0x4DD9D9D9),
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: 16,
                    top: 184.9,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(35),
                      child: SizedBox(
                        width: 241,
                        height: 90,
                        child: SvgPicture.asset(
                          'assets/vectors/rectangle_19_x2.svg',
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: -11.2,
                    top: 298.9,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(35),
                      child: SizedBox(
                        width: 251,
                        height: 109,
                        child: SvgPicture.asset(
                          'assets/vectors/rectangle_23_x2.svg',
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: -7.2,
                    top: 550.9,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(35),
                      child: SizedBox(
                        width: 251,
                        height: 125,
                        child: SvgPicture.asset(
                          'assets/vectors/rectangle_24_x2.svg',
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 15,
                    top: 423.9,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(35),
                      child: SizedBox(
                        width: 261,
                        height: 104,
                        child: SvgPicture.asset(
                          'assets/vectors/rectangle_21_x2.svg',
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 15,
                    top: 694.9,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(35),
                      child: SizedBox(
                        width: 239,
                        height: 79,
                        child: SvgPicture.asset(
                          'assets/vectors/rectangle_29_x2.svg',
                        ),
                      ),
                    ),
                  ),
            SizedBox(
                    width: double.infinity,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(3, 12.1, 11.2, 51),
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          SizedBox(
                            width: double.infinity,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(29.1, 0, 25.9, 2.8),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 2, 0, 0.1),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.fromLTRB(0, 0, 6.1, 0),
                                              child: Text(
                                                '18:30',
                                                style: GoogleFonts.getFont(
                                                  'Inter',
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 15,
                                                  color: Color(0xFF000000),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.fromLTRB(0, 0, 0, 0.9),
                                              child: SizedBox(
                                                width: 18.1,
                                                height: 17.1,
                                                child: SvgPicture.asset(
                                                  'assets/vectors/vector_28_x2.svg',
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 96.3,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.fromLTRB(0, 2, 4, 0.5),
                                              child: SizedBox(
                                                width: 25.1,
                                                height: 17.6,
                                                child: SvgPicture.asset(
                                                  'assets/vectors/vector_38_x2.svg',
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.fromLTRB(0, 0, 12.7, 0),
                                              child: SizedBox(
                                                width: 23.2,
                                                height: 20.1,
                                                child: SvgPicture.asset(
                                                  'assets/vectors/vector_39_x2.svg',
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.fromLTRB(0, 2, 0, 0),
                                              child: SizedBox(
                                                width: 31.1,
                                                height: 18.1,
                                                child: SvgPicture.asset(
                                                  'assets/vectors/vector_69_x2.svg',
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 8.5),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xFFF9F9F9),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Container(
                                        width: 41,
                                        height: 35,
                                        padding: EdgeInsets.fromLTRB(10, 8.3, 16.9, 4.6),
                                        child: SizedBox(
                                          width: 14,
                                          height: 22.1,
                                          child: SvgPicture.asset(
                                            'assets/vectors/vector_20_x2.svg',
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(18.9, 0, 18.9, 105),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 5.5, 23.5, 0),
                                        child: Text(
                                          'Dr. Mariam Mousa',
                                          style: GoogleFonts.getFont(
                                            'Inter',
                                            fontWeight: FontWeight.w700,
                                            fontSize: 20,
                                            color: Color(0xFF000000),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 0, 12, 4.3),
                                        child: SizedBox(
                                          width: 25.1,
                                          height: 25.2,
                                          child: SvgPicture.asset(
                                            'assets/vectors/vector_56_x2.svg',
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 8.1, 10, 4.7),
                                        child: SizedBox(
                                          width: 25.1,
                                          height: 16.8,
                                          child: SvgPicture.asset(
                                            'assets/vectors/vector_48_x2.svg',
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 5, 0, 4),
                                        child: SizedBox(
                                          width: 25.1,
                                          height: 20.4,
                                          child: SvgPicture.asset(
                                            'assets/vectors/vector_59_x2.svg',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(35, 0, 35, 55),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      'God Morning, 
                                How You doing Jo?',
                                      style: GoogleFonts.getFont(
                                        'Inter',
                                        fontWeight: FontWeight.w700,
                                        fontSize: 23,
                                        color: Color(0xFF0000FF),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 46),
                                  child: Text(
                                    'I’m Not Okay Doc,
                                I’m Depressed And
                                Can’t Sleep',
                                    style: GoogleFonts.getFont(
                                      'Inter',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 22,
                                      color: Color(0xE5FFFFFF),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 107, 38),
                                  child: Align(
                                    alignment: Alignment.topCenter,
                                    child: Text(
                                      'It’s Okay Not Felling
                                Okay Joe,
                                When Its Started?',
                                      style: GoogleFonts.getFont(
                                        'Inter',
                                        fontWeight: FontWeight.w700,
                                        fontSize: 22,
                                        color: Color(0xFF0000FF),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(2, 0, 2, 43),
                                  child: Text(
                                    'Three Months Ago,
                                I got Divorced 
                                And Didn't See My
                                Kids Since Then',
                                    style: GoogleFonts.getFont(
                                      'Inter',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 22,
                                      color: Color(0xE5FFFFFF),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(30, 0, 30, 62),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      'Lets Talk About Your
                                Ex Wife...',
                                      style: GoogleFonts.getFont(
                                        'Inter',
                                        fontWeight: FontWeight.w700,
                                        fontSize: 21,
                                        color: Color(0xFF0000FF),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(14.8, 0, 14.8, 0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xFF0000FF),
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Container(
                                      width: 61,
                                      height: 59,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            left: 27,
                            top: 50.9,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(80),
                              child: SizedBox(
                                width: 71,
                                height: 64,
                                child: SvgPicture.asset(
                                  'assets/images/rectangle_7.jpeg.jpeg',
                                  'assets/vectors/rectangle_72_x2.svg',
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              right: -13,
              bottom: 3,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0x40000000)),
                  color: Color(0xFFFFFFFF),
                ),
                child: SizedBox(
                  width: 449,
                  height: 128,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(15, 32, 26, 33),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 2, 17, 0),
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xFF000000)),
                            borderRadius: BorderRadius.circular(35),
                            color: Color(0xFFFFFFFF),
                          ),
                          child: Container(
                            width: 312,
                            padding: EdgeInsets.fromLTRB(29, 19, 29, 18),
                            child: Opacity(
                              opacity: 0.65,
                              child: Text(
                                'Type Message...',
                                style: GoogleFonts.getFont(
                                  'Inter',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                  color: Color(0xFF000000),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 79,
                          height: 63,
                          child: SvgPicture.asset(
                            'assets/vectors/container_x2.svg',
                          ),
                        ),
                      ],
                    ),
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