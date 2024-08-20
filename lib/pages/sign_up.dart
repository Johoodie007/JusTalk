import 'package:flutter/material.dart';
import "package:flutter_svg/flutter_svg.dart";
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

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
            right: -126.5,
            top: -81.1,
            child: Opacity(
              opacity: 0.4,
              child: SizedBox(
                width: 281,
                height: 270,
                child: SvgPicture.asset(
                  'assets/vectors/ellipse_2_x2.svg',
                ),
              ),
            ),
          ),
          Positioned(
            right: -178.5,
            top: -105.1,
            child: Opacity(
              opacity: 0.6,
              child: SizedBox(
                width: 304,
                height: 262,
                child: SvgPicture.asset(
                  'assets/vectors/ellipse_1_x2.svg',
                ),
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Container(
              padding: const EdgeInsets.fromLTRB(10, 12.1, 25.5, 23),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    left: -10,
                    right: -25.7,
                    bottom: -59.9,
                    child: Opacity(
                      opacity: 0.8,
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0x40CACACA),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const SizedBox(
                          width: 430.3,
                          height: 735.9,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 382.8,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: SizedBox(
                        width: 385.5,
                        height: 69.4,
                        child: SvgPicture.asset(
                          'assets/vectors/rectangle_3_x2.svg',
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 331,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: SizedBox(
                        width: 385.5,
                        height: 69.4,
                        child: SvgPicture.asset(
                          'assets/vectors/rectangle_13_x2.svg',
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 264.2,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: SizedBox(
                        width: 385.5,
                        height: 69.4,
                        child: SvgPicture.asset(
                          'assets/vectors/rectangle_41_x2.svg',
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 140.9,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: SizedBox(
                        width: 385.5,
                        height: 69.4,
                        child: SvgPicture.asset(
                          'assets/vectors/rectangle_5_x2.svg',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin:
                              const EdgeInsets.fromLTRB(22.1, 0, 12.6, 27.9),
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
                                      margin: const EdgeInsets.fromLTRB(
                                          0, 0, 6.1, 0),
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
                                      margin: const EdgeInsets.fromLTRB(
                                          0, 0, 0, 0.9),
                                      child: SizedBox(
                                        width: 18.1,
                                        height: 17.1,
                                        child: SvgPicture.asset(
                                          'assets/vectors/vector_42_x2.svg',
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 103.3,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.fromLTRB(
                                          0, 2, 11.1, 0.5),
                                      child: SizedBox(
                                        width: 25.1,
                                        height: 17.6,
                                        child: SvgPicture.asset(
                                          'assets/vectors/vector_3_x2.svg',
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.fromLTRB(
                                          0, 0, 12.7, 0),
                                      child: SizedBox(
                                        width: 23.2,
                                        height: 20.1,
                                        child: SvgPicture.asset(
                                          'assets/vectors/vector_31_x2.svg',
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin:
                                          const EdgeInsets.fromLTRB(0, 2, 0, 0),
                                      child: SizedBox(
                                        width: 31.1,
                                        height: 18.1,
                                        child: SvgPicture.asset(
                                          'assets/vectors/vector_27_x2.svg',
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
                          margin:
                              const EdgeInsets.fromLTRB(39.4, 0, 39.4, 135.5),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin:
                                      const EdgeInsets.fromLTRB(0, 0, 0, 1.4),
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      color: Color(0xFFFFFFFF),
                                    ),
                                    child: Container(
                                      width: 53.2,
                                      height: 59.4,
                                      padding: const EdgeInsets.fromLTRB(
                                          0, 3.7, 0, 3.7),
                                      child: SizedBox(
                                        width: 53.2,
                                        height: 52,
                                        child: SvgPicture.asset(
                                          'assets/vectors/vector_7_x2.svg',
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin:
                                      const EdgeInsets.fromLTRB(0, 24.8, 0, 0),
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
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 8.7, 49.6),
                          child: RichText(
                            text: TextSpan(
                              text: 'Register Please',
                              style: GoogleFonts.getFont(
                                'Inter',
                                fontWeight: FontWeight.w700,
                                fontSize: 30,
                                color: const Color(0xFF000000),
                              ),
                              children: [
                                TextSpan(
                                  text:
                                      'Your Information Is Totally Safe With Us',
                                  style: GoogleFonts.getFont(
                                    'Inter',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20,
                                    height: 1.3,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(30, 0, 30, 84),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Opacity(
                              opacity: 0.4,
                              child: Text(
                                'Enter Full Name',
                                style: GoogleFonts.getFont(
                                  'Inter',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 24,
                                  color: const Color(0xFF000000),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(30, 0, 30, 92),
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
                                  color: const Color(0xFF000000),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(30, 0, 30, 93),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Opacity(
                              opacity: 0.4,
                              child: Text(
                                'Enter Password',
                                style: GoogleFonts.getFont(
                                  'Inter',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 24,
                                  color: const Color(0xFF000000),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(30, 0, 30, 44.9),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Opacity(
                              opacity: 0.4,
                              child: Text(
                                'Confirm Password',
                                style: GoogleFonts.getFont(
                                  'Inter',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 24,
                                  color: const Color(0xFF000000),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(9.1, 0, 0, 30.1),
                          child: Stack(
                            children: [
                              Positioned(
                                left: -15.2,
                                right: 0,
                                top: -11.3,
                                bottom: -11.7,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: SizedBox(
                                    width: 385.5,
                                    height: 59,
                                    child: SvgPicture.asset(
                                      'assets/vectors/rectangle_11_x2.svg',
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 404.1,
                                padding: const EdgeInsets.fromLTRB(
                                    15.2, 11.3, 0, 11.7),
                                child: Text(
                                  'Sign Up',
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
                        Container(
                          margin: const EdgeInsets.fromLTRB(32.3, 0, 32.3, 0),
                          child: Align(
                            alignment: Alignment.topRight,
                            child: RichText(
                              text: TextSpan(
                                style: GoogleFonts.getFont(
                                  'Inter',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                  color: const Color(0xFF000000),
                                ),
                                children: [
                                  TextSpan(
                                    text: 'Already Have an Account?',
                                    style: GoogleFonts.getFont(
                                      'Inter',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20,
                                      height: 1.3,
                                    ),
                                  ),
                                  const TextSpan(
                                    text: ' ',
                                  ),
                                  TextSpan(
                                    text: 'Log In',
                                    style: GoogleFonts.getFont(
                                      'Inter',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20,
                                      height: 1.3,
                                      color: const Color(0xFF0C0150),
                                    ),
                                  ),
                                ],
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
          ),
        ],
      ),
    );
  }
}
