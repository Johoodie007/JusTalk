import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_app/utils.dart';
import 'package:google_fonts/google_fonts.dart';

class LogIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
    Container(
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Stack(
          children: [
            Positioned(
              right: -130.5,
              top: -80,
              child: Opacity(
                opacity: 0.4,
                child: SizedBox(
                  width: 281,
                  height: 270,
                  child: SvgPicture.asset(
                    'assets/vectors/ellipse_21_x2.svg',
                  ),
                ),
              ),
            ),
            Positioned(
              right: -182.5,
              top: -104,
              child: Opacity(
                opacity: 0.6,
                child: SizedBox(
                  width: 304,
                  height: 262,
                  child: SvgPicture.asset(
                    'assets/vectors/ellipse_11_x2.svg',
                  ),
                ),
              ),
            ),
      SizedBox(
              width: double.infinity,
              child: Container(
                padding: EdgeInsets.fromLTRB(18, 12, 23.5, 68),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      left: -18,
                      right: -23.5,
                      bottom: -159,
                      child: Opacity(
                        opacity: 0.8,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0x40CACACA),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Container(
                            width: 428,
                            height: 773,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(14, 0, 14.4, 27.7),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 2, 0, 0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 0, 5.8, 0),
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
                                        margin: EdgeInsets.fromLTRB(0, 0, 0, 1),
                                        child: SizedBox(
                                          width: 18,
                                          height: 17,
                                          child: SvgPicture.asset(
                                            'assets/vectors/vector_4_x2.svg',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 95.8,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 2, 4, 0.5),
                                        child: SizedBox(
                                          width: 25,
                                          height: 17.5,
                                          child: SvgPicture.asset(
                                            'assets/vectors/vector_37_x2.svg',
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 0, 12.7, 0),
                                        child: SizedBox(
                                          width: 23.1,
                                          height: 20,
                                          child: SvgPicture.asset(
                                            'assets/vectors/vector_44_x2.svg',
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 2, 0, 0),
                                        child: SizedBox(
                                          width: 31,
                                          height: 18,
                                          child: SvgPicture.asset(
                                            'assets/vectors/vector_22_x2.svg',
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
                            margin: EdgeInsets.fromLTRB(31.1, 0, 31.1, 152.7),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 0, 1.6),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFFFFFF),
                                      ),
                                      child: Container(
                                        width: 53,
                                        height: 59,
                                        padding: EdgeInsets.fromLTRB(0, 3.7, 0, 3.7),
                                        child: SizedBox(
                                          width: 53,
                                          height: 51.6,
                                          child: SvgPicture.asset(
                                            'assets/vectors/vector_67_x2.svg',
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 24.6, 0, 0),
                                    child: Text(
                                      'Just Talk',
                                      style: GoogleFonts.getFont(
                                        'Inter',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 30,
                                        color: Color(0xFF273686),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 4.5, 22),
                            child: Text(
                              'Welcome Back',
                              style: GoogleFonts.getFont(
                                'Inter',
                                fontWeight: FontWeight.w700,
                                fontSize: 30,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(6.5, 0, 6.5, 6.3),
                            child: Align(
                              alignment: Alignment.topRight,
                              child: SizedBox(
                                width: 288,
                                height: 211,
                                child: SvgPicture.asset(
                                  'assets/vectors/undraw_online_chat_re_c_4_lx_1_x2.svg',
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(2.8, 0, 0, 28.5),
                            child: Stack(
                              children: [
                                Positioned(
                                  top: -20.7,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: SizedBox(
                                      width: 383.7,
                                      height: 68.9,
                                      child: SvgPicture.asset(
                                        'assets/vectors/rectangle_31_x2.svg',
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 94.2,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: SizedBox(
                                      width: 383.7,
                                      height: 68.9,
                                      child: SvgPicture.asset(
                                        'assets/vectors/rectangle_4_x2.svg',
                                      ),
                                    ),
                                  ),
                                ),
                          Container(
                                  padding: EdgeInsets.fromLTRB(19.2, 20.7, 0, 19.1),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 0, 0, 86),
                                        child: Align(
                                          alignment: Alignment.topLeft,
                                          child: Opacity(
                                            opacity: 0.4,
                                            child: Text(
                                              'Enter Email',
                                              style: GoogleFonts.getFont(
                                                'Inter',
                                                fontWeight: FontWeight.w500,
                                                fontSize: 24,
                                                color: Color(0xFF000000),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Opacity(
                                          opacity: 0.4,
                                          child: Text(
                                            'Enter Password',
                                            style: GoogleFonts.getFont(
                                              'Inter',
                                              fontWeight: FontWeight.w500,
                                              fontSize: 24,
                                              color: Color(0xFF000000),
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
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 2.8, 14.7),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  right: 0,
                                  top: 0,
                                  bottom: 0,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: SizedBox(
                                      width: 383.7,
                                      height: 58.7,
                                      child: SvgPicture.asset(
                                        'assets/vectors/rectangle_1_x2.svg',
                                      ),
                                    ),
                                  ),
                                ),
                          Container(
                                  width: 383.7,
                                  padding: EdgeInsets.fromLTRB(0, 12.3, 14.2, 10.3),
                                  child: Text(
                                    'Log In',
                                    style: GoogleFonts.getFont(
                                      'Inter',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 30,
                                      color: Color(0xFFFFFFFF),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(5.8, 0, 0, 0),
                            child: Text(
                              'Forgot Password',
                              style: GoogleFonts.getFont(
                                'Inter',
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                                color: Color(0xFF0C0150),
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
          ],
        ),
      ),
    );
  }
}