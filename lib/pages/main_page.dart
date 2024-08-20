import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
//import 'package:flutter_app/utils.dart';
import 'package:google_fonts/google_fonts.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

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
            right: -123,
            top: -82,
            child: Opacity(
              opacity: 0.4,
              child: SizedBox(
                width: 281,
                height: 270,
                child: SvgPicture.asset(
                  'assets/vectors/ellipse_22_x2.svg',
                ),
              ),
            ),
          ),
          Positioned(
            right: -172,
            top: -104,
            child: Opacity(
              opacity: 0.6,
              child: SizedBox(
                width: 304,
                height: 262,
                child: SvgPicture.asset(
                  'assets/vectors/ellipse_12_x2.svg',
                ),
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 926,
            child: Container(
              padding: const EdgeInsets.fromLTRB(7, 12, 14, 0),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    left: -11,
                    bottom: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFFEAEAEA),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: -4,
                            top: 329,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Opacity(
                                opacity: 0.85,
                                child: SizedBox(
                                  width: 158,
                                  height: 131,
                                  child: SvgPicture.asset(
                                    'assets/images/rectangle_16.jpeg.jpeg',
                                    //  'assets/vectors/rectangle_161_x2.svg',
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 433,
                            height: 675,
                            child: Container(
                              padding: const EdgeInsets.fromLTRB(11, 0, 0, 0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.fromLTRB(
                                        30, 0, 30, 121),
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        'Nearby Doctors',
                                        style: GoogleFonts.getFont(
                                          'Inter',
                                          fontWeight: FontWeight.w700,
                                          fontSize: 20,
                                          color: const Color(0xFF000000),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: const Color(0xFFFFFFFF),
                                        boxShadow: const [
                                          BoxShadow(
                                            color: Color(0x40000000),
                                            offset: Offset(0, 4),
                                            blurRadius: 5,
                                          ),
                                        ],
                                      ),
                                      child: Container(
                                        padding: const EdgeInsets.fromLTRB(
                                            18, 18, 21, 9.8),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              margin: const EdgeInsets.fromLTRB(
                                                  2, 0, 2, 7),
                                              child: Align(
                                                alignment: Alignment.topLeft,
                                                child: Text(
                                                  'Dr. Sara Emrah',
                                                  style: GoogleFonts.getFont(
                                                    'Inter',
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 20,
                                                    color:
                                                        const Color(0xFF000000),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.fromLTRB(
                                                  0, 0, 0, 17),
                                              child: Opacity(
                                                opacity: 0.7,
                                                child: Text(
                                                  'Depression Psychologists',
                                                  style: GoogleFonts.getFont(
                                                    'Inter',
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 20,
                                                    color:
                                                        const Color(0xFF000000),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.fromLTRB(
                                                  0.1, 0, 0.1, 0),
                                              child: Align(
                                                alignment: Alignment.topLeft,
                                                child: SizedBox(
                                                  width: 214.2,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Container(
                                                        margin: const EdgeInsets
                                                            .fromLTRB(
                                                            0, 0, 0, 2),
                                                        child: SizedBox(
                                                          width: 127.5,
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Container(
                                                                margin:
                                                                    const EdgeInsets
                                                                        .fromLTRB(
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        1),
                                                                child: SizedBox(
                                                                  width: 23.3,
                                                                  height: 23.2,
                                                                  child:
                                                                      SvgPicture
                                                                          .asset(
                                                                    'assets/vectors/vector_43_x2.svg',
                                                                  ),
                                                                ),
                                                              ),
                                                              Container(
                                                                margin:
                                                                    const EdgeInsets
                                                                        .fromLTRB(
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        1),
                                                                child: SizedBox(
                                                                  width: 23.3,
                                                                  height: 23.2,
                                                                  child:
                                                                      SvgPicture
                                                                          .asset(
                                                                    'assets/vectors/vector_26_x2.svg',
                                                                  ),
                                                                ),
                                                              ),
                                                              Container(
                                                                margin:
                                                                    const EdgeInsets
                                                                        .fromLTRB(
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        1),
                                                                child: SizedBox(
                                                                  width: 23.3,
                                                                  height: 23.2,
                                                                  child:
                                                                      SvgPicture
                                                                          .asset(
                                                                    'assets/vectors/vector_55_x2.svg',
                                                                  ),
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                width: 23.3,
                                                                height: 24.2,
                                                                child:
                                                                    SvgPicture
                                                                        .asset(
                                                                  'assets/vectors/vector_32_x2.svg',
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                width: 23.3,
                                                                height: 24.2,
                                                                child:
                                                                    SvgPicture
                                                                        .asset(
                                                                  'assets/vectors/vector_70_x2.svg',
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 24.2,
                                                        height: 26.2,
                                                        child: SvgPicture.asset(
                                                          'assets/vectors/vector_5_x2.svg',
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
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: -32,
                    top: 253,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(80),
                      child: Opacity(
                        opacity: 0.9,
                        child: SizedBox(
                          width: 223,
                          height: 218,
                          child: SvgPicture.asset(
                            'assets/images/rectangle_7.jpeg.jpeg',
                            //'assets/vectors/rectangle_71_x2.svg',
                          ),
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
                          margin: const EdgeInsets.fromLTRB(25.1, 0, 24, 25),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.fromLTRB(0, 2, 0, 0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin:
                                          const EdgeInsets.fromLTRB(0, 0, 6, 0),
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
                                          const EdgeInsets.fromLTRB(0, 0, 0, 1),
                                      child: SizedBox(
                                        width: 18,
                                        height: 17,
                                        child: SvgPicture.asset(
                                          'assets/vectors/vector_65_x2.svg',
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 96,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.fromLTRB(
                                          0, 2, 4, 0.5),
                                      child: SizedBox(
                                        width: 25.1,
                                        height: 17.5,
                                        child: SvgPicture.asset(
                                          'assets/vectors/vector_51_x2.svg',
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.fromLTRB(
                                          0, 0, 12.7, 0),
                                      child: SizedBox(
                                        width: 23.2,
                                        height: 20,
                                        child: SvgPicture.asset(
                                          'assets/vectors/vector_13_x2.svg',
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin:
                                          const EdgeInsets.fromLTRB(0, 2, 0, 0),
                                      child: SizedBox(
                                        width: 31.1,
                                        height: 18,
                                        child: SvgPicture.asset(
                                          'assets/vectors/vector_12_x2.svg',
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
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                          child: Align(
                            alignment: Alignment.topRight,
                            child: SizedBox(
                              width: 365.7,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.fromLTRB(
                                        0, 2.7, 0, 4.7),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.fromLTRB(
                                              0, 0, 0, 1.6),
                                          child: Container(
                                            decoration: const BoxDecoration(
                                              color: Color(0xFFFFFFFF),
                                            ),
                                            child: Container(
                                              width: 53.1,
                                              height: 59,
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      0, 3.7, 0, 3.7),
                                              child: SizedBox(
                                                width: 53.1,
                                                height: 51.6,
                                                child: SvgPicture.asset(
                                                  'assets/vectors/vector_68_x2.svg',
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.fromLTRB(
                                              0, 24.6, 0, 0),
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
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(34),
                                      image: const DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                          'assets/images/ellipse_3.jpeg',
                                        ),
                                      ),
                                    ),
                                    child: const SizedBox(
                                      width: 68,
                                      height: 68,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 26),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Hi JO , How You Doing',
                              style: GoogleFonts.getFont(
                                'Inter',
                                fontWeight: FontWeight.w700,
                                fontSize: 25,
                                color: const Color(0xFF000000),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(1, 0, 1, 20),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              decoration: BoxDecoration(
                                color: const Color(0x66D9D9D9),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: SizedBox(
                                width: 356,
                                child: Container(
                                  padding: const EdgeInsets.fromLTRB(
                                      15.1, 10, 14.2, 13),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.fromLTRB(
                                                0, 0, 14.8, 0),
                                            child: SizedBox(
                                              width: 25.1,
                                              height: 25,
                                              child: SvgPicture.asset(
                                                'assets/vectors/vector_9_x2.svg',
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: const EdgeInsets.fromLTRB(
                                                0, 5, 0, 1),
                                            child: Opacity(
                                              opacity: 0.7,
                                              child: Text(
                                                'Search Doctor',
                                                style: GoogleFonts.getFont(
                                                  'Inter',
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 16,
                                                  color:
                                                      const Color(0xFF000000),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            0, 5, 0, 0),
                                        child: SizedBox(
                                          width: 20,
                                          height: 20,
                                          child: SvgPicture.asset(
                                            'assets/vectors/vector_18_x2.svg',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(22, 0, 22, 119),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Recommended Doctors',
                              style: GoogleFonts.getFont(
                                'Inter',
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                                color: const Color(0xFF000000),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: const Color(0xFFFFFFFF),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color(0x40000000),
                                  offset: Offset(0, 4),
                                  blurRadius: 5,
                                ),
                              ],
                            ),
                            child: Container(
                              padding:
                                  const EdgeInsets.fromLTRB(18, 18, 21, 15.8),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin:
                                        const EdgeInsets.fromLTRB(2, 0, 2, 7),
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        'Dr. Mariam Mousa',
                                        style: GoogleFonts.getFont(
                                          'Inter',
                                          fontWeight: FontWeight.w700,
                                          fontSize: 20,
                                          color: const Color(0xFF000000),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin:
                                        const EdgeInsets.fromLTRB(0, 0, 0, 11),
                                    child: Opacity(
                                      opacity: 0.7,
                                      child: Text(
                                        'Depression Psychologists',
                                        style: GoogleFonts.getFont(
                                          'Inter',
                                          fontWeight: FontWeight.w700,
                                          fontSize: 20,
                                          color: const Color(0xFF000000),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.fromLTRB(
                                        0.1, 0, 0.1, 0),
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: SizedBox(
                                        width: 201.2,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              margin: const EdgeInsets.fromLTRB(
                                                  0, 0, 0, 2),
                                              child: SizedBox(
                                                width: 127.5,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      margin: const EdgeInsets
                                                          .fromLTRB(0, 0, 0, 1),
                                                      child: SizedBox(
                                                        width: 23.3,
                                                        height: 24.2,
                                                        child: SvgPicture.asset(
                                                          'assets/vectors/vector_30_x2.svg',
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      margin: const EdgeInsets
                                                          .fromLTRB(0, 0, 0, 1),
                                                      child: SizedBox(
                                                        width: 23.3,
                                                        height: 24.2,
                                                        child: SvgPicture.asset(
                                                          'assets/vectors/vector_41_x2.svg',
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      margin: const EdgeInsets
                                                          .fromLTRB(0, 0, 0, 1),
                                                      child: SizedBox(
                                                        width: 23.3,
                                                        height: 24.2,
                                                        child: SvgPicture.asset(
                                                          'assets/vectors/vector_16_x2.svg',
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 23.3,
                                                      height: 25.2,
                                                      child: SvgPicture.asset(
                                                        'assets/vectors/vector_73_x2.svg',
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 23.3,
                                                      height: 25.2,
                                                      child: SvgPicture.asset(
                                                        'assets/vectors/vector_40_x2.svg',
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 24.2,
                                              height: 27.2,
                                              child: SvgPicture.asset(
                                                'assets/vectors/vector_62_x2.svg',
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
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: -175,
                    bottom: 145,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 0,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Opacity(
                              opacity: 0.4,
                              child: SizedBox(
                                width: 273,
                                height: 236,
                                child: SvgPicture.asset(
                                  'assets/images/rectangle_9.jpeg.jpeg',
                                  //    'assets/vectors/rectangle_91_x2.svg',
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: -17,
                          top: 281,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Opacity(
                              opacity: 0.4,
                              child: SizedBox(
                                width: 172,
                                height: 175,
                                child: SvgPicture.asset(
                                  'assets/images/rectangle_13.jpeg.jpeg',
                                  //    'assets/vectors/rectangle_131_x2.svg',
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 248,
                          height: 194,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(17, 0, 17, 0),
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Positioned(
                                  left: -17,
                                  top: 128,
                                  child: Opacity(
                                    opacity: 0.6,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: const Color(0xFFFFFFFF),
                                        boxShadow: const [
                                          BoxShadow(
                                            color: Color(0x40000000),
                                            offset: Offset(0, 4),
                                            blurRadius: 5,
                                          ),
                                        ],
                                      ),
                                      child: const SizedBox(
                                        width: 218,
                                        height: 107,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: -17,
                                  bottom: 0,
                                  child: Opacity(
                                    opacity: 0.6,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: const Color(0xFFFFFFFF),
                                        boxShadow: const [
                                          BoxShadow(
                                            color: Color(0x40000000),
                                            offset: Offset(0, 4),
                                            blurRadius: 5,
                                          ),
                                        ],
                                      ),
                                      child: const SizedBox(
                                        width: 218,
                                        height: 106,
                                      ),
                                    ),
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.fromLTRB(
                                          0, 0, 9.1, 272),
                                      child: Opacity(
                                        opacity: 0.6,
                                        child: Text(
                                          'Dr. Elias Omar',
                                          style: GoogleFonts.getFont(
                                            'Inter',
                                            fontWeight: FontWeight.w700,
                                            fontSize: 20,
                                            color: const Color(0xFF000000),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Opacity(
                                      opacity: 0.6,
                                      child: Text(
                                        'Dr. Rima Salem',
                                        style: GoogleFonts.getFont(
                                          'Inter',
                                          fontWeight: FontWeight.w700,
                                          fontSize: 20,
                                          color: const Color(0xFF000000),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Positioned(
                                  left: -2,
                                  top: 167,
                                  child: Opacity(
                                    opacity: 0.6,
                                    child: SizedBox(
                                      height: 26,
                                      child: Text(
                                        'Anxiety  Psychologists',
                                        style: GoogleFonts.getFont(
                                          'Inter',
                                          fontWeight: FontWeight.w700,
                                          fontSize: 20,
                                          color: const Color(0xFF000000),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: -2,
                                  bottom: 43,
                                  child: Opacity(
                                    opacity: 0.6,
                                    child: SizedBox(
                                      height: 25,
                                      child: Text(
                                        'Anxiety  Psychologists',
                                        style: GoogleFonts.getFont(
                                          'Inter',
                                          fontWeight: FontWeight.w700,
                                          fontSize: 20,
                                          color: const Color(0xFF000000),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: -10.1,
                                  top: 202,
                                  child: Opacity(
                                    opacity: 0.6,
                                    child: SizedBox(
                                      width: 19,
                                      height: 22,
                                      child: SvgPicture.asset(
                                        'assets/vectors/vector_8_x2.svg',
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: -10.1,
                                  bottom: 11,
                                  child: Opacity(
                                    opacity: 0.6,
                                    child: SizedBox(
                                      width: 19,
                                      height: 21,
                                      child: SvgPicture.asset(
                                        'assets/vectors/vector_23_x2.svg',
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 10.9,
                                  top: 202,
                                  child: Opacity(
                                    opacity: 0.6,
                                    child: SizedBox(
                                      width: 17,
                                      height: 22,
                                      child: SvgPicture.asset(
                                        'assets/vectors/vector_46_x2.svg',
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 10.9,
                                  bottom: 11,
                                  child: Opacity(
                                    opacity: 0.6,
                                    child: SizedBox(
                                      width: 17,
                                      height: 21,
                                      child: SvgPicture.asset(
                                        'assets/vectors/vector_50_x2.svg',
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 31,
                                  top: 202,
                                  child: Opacity(
                                    opacity: 0.6,
                                    child: SizedBox(
                                      width: 17,
                                      height: 22,
                                      child: SvgPicture.asset(
                                        'assets/vectors/vector_45_x2.svg',
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 31,
                                  bottom: 11,
                                  child: Opacity(
                                    opacity: 0.6,
                                    child: SizedBox(
                                      width: 17,
                                      height: 21,
                                      child: SvgPicture.asset(
                                        'assets/vectors/vector_1_x2.svg',
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 53,
                                  top: 202,
                                  child: Opacity(
                                    opacity: 0.6,
                                    child: SizedBox(
                                      width: 17,
                                      height: 21,
                                      child: SvgPicture.asset(
                                        'assets/vectors/vector_17_x2.svg',
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 53,
                                  bottom: 12,
                                  child: Opacity(
                                    opacity: 0.6,
                                    child: SizedBox(
                                      width: 17,
                                      height: 20,
                                      child: SvgPicture.asset(
                                        'assets/vectors/vector_x2.svg',
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 73,
                                  top: 202,
                                  child: Opacity(
                                    opacity: 0.6,
                                    child: SizedBox(
                                      width: 17,
                                      height: 22,
                                      child: SvgPicture.asset(
                                        'assets/vectors/vector_25_x2.svg',
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 74,
                                  bottom: 12,
                                  child: Opacity(
                                    opacity: 0.6,
                                    child: SizedBox(
                                      width: 17,
                                      height: 20,
                                      child: SvgPicture.asset(
                                        'assets/vectors/vector_6_x2.svg',
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
                    left: -9,
                    bottom: -34,
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFF202B7D),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: SizedBox(
                        width: 431,
                        height: 112,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(0, 20, 0, 62),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 30,
                                height: 30,
                                child: SvgPicture.asset(
                                  'assets/vectors/vector_71_x2.svg',
                                ),
                              ),
                              SizedBox(
                                width: 30,
                                height: 30,
                                child: SvgPicture.asset(
                                  'assets/vectors/vector_14_x2.svg',
                                ),
                              ),
                              SizedBox(
                                width: 30,
                                height: 30,
                                child: SvgPicture.asset(
                                  'assets/vectors/vector_72_x2.svg',
                                ),
                              ),
                              SizedBox(
                                width: 30,
                                height: 30,
                                child: SizedBox(
                                  width: 30,
                                  height: 30,
                                  child: SvgPicture.asset(
                                    'assets/vectors/vector_60_x2.svg',
                                  ),
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
          ),
        ],
      ),
    );
  }
}
