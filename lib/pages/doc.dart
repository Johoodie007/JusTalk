import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Doc extends StatelessWidget {
  const Doc({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Stack(
        children: [
          SizedBox(
            width: 445,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 410),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFEFEFEF),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(14, 24.1, 0, 283),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin:
                                const EdgeInsets.fromLTRB(22.1, 0, 22.1, 41.9),
                            child: Align(
                              alignment: Alignment.topLeft,
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
                                        'assets/vectors/vector_10_x2.svg',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              decoration: BoxDecoration(
                                color: const Color(0xFFFFFFFF),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Container(
                                width: 41,
                                height: 35,
                                padding: const EdgeInsets.fromLTRB(
                                    10, 7.5, 16.9, 5.3),
                                child: SizedBox(
                                  width: 14,
                                  height: 22.1,
                                  child: SvgPicture.asset(
                                    'assets/vectors/vector_54_x2.svg',
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: SizedBox(
                    width: 393,
                    height: 274,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35),
                        image: const DecorationImage(
                          fit: BoxFit.contain,
                          image: AssetImage(
                            'assets/images/basemap_image.png',
                          ),
                        ),
                      ),
                      child: const SizedBox(
                        width: 393,
                        height: 274,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: -108,
            top: -70,
            child: SizedBox(
              width: 281,
              height: 270,
              child: SvgPicture.asset(
                'assets/vectors/container_1_x2.svg',
              ),
            ),
          ),
          Positioned(
            right: 15,
            top: 57,
            child: Container(
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
          ),
          Positioned(
            left: -2,
            bottom: 28,
            child: Opacity(
              opacity: 0.2,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/images/rectangle_15.png',
                    ),
                  ),
                ),
                child: const SizedBox(
                  width: 429,
                  height: 513,
                ),
              ),
            ),
          ),
          Positioned(
            left: -2,
            bottom: -28,
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xFF202B7D),
                borderRadius: BorderRadius.circular(40),
              ),
              child: SizedBox(
                width: 431,
                height: 112,
                child: Container(
                  padding: const EdgeInsets.fromLTRB(0, 30, 0, 46.1),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 5.7, 0, 0),
                        child: SizedBox(
                          width: 30.1,
                          height: 30.2,
                          child: SvgPicture.asset(
                            'assets/vectors/vector_61_x2.svg',
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 5.7, 0, 0),
                        child: SizedBox(
                          width: 30.1,
                          height: 30.2,
                          child: SvgPicture.asset(
                            'assets/vectors/vector_34_x2.svg',
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 5.7, 0, 0),
                        child: SizedBox(
                          width: 30.1,
                          height: 30.2,
                          child: SvgPicture.asset(
                            'assets/vectors/vector_36_x2.svg',
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 5.9),
                        width: 30,
                        height: 30,
                        child: SizedBox(
                          width: 30,
                          height: 30,
                          child: SvgPicture.asset(
                            'assets/vectors/vector_24_x2.svg',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 14,
            top: 439,
            child: SizedBox(
              height: 27,
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
          Positioned(
            left: 14,
            bottom: 438,
            child: Opacity(
              opacity: 0.7,
              child: SizedBox(
                height: 27,
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
          ),
          Positioned(
            left: 13.1,
            bottom: 404.4,
            child: SizedBox(
              width: 23.3,
              height: 24.4,
              child: SvgPicture.asset(
                'assets/vectors/vector_21_x2.svg',
              ),
            ),
          ),
          Positioned(
            left: 39.2,
            bottom: 404.4,
            child: SizedBox(
              width: 23.3,
              height: 24.4,
              child: SvgPicture.asset(
                'assets/vectors/vector_58_x2.svg',
              ),
            ),
          ),
          Positioned(
            left: 65.3,
            bottom: 404.4,
            child: SizedBox(
              width: 23.3,
              height: 24.4,
              child: SvgPicture.asset(
                'assets/vectors/vector_29_x2.svg',
              ),
            ),
          ),
          Positioned(
            left: 91.5,
            bottom: 403.4,
            child: SizedBox(
              width: 23.3,
              height: 25.4,
              child: SvgPicture.asset(
                'assets/vectors/vector_63_x2.svg',
              ),
            ),
          ),
          Positioned(
            left: 117.6,
            bottom: 403.4,
            child: SizedBox(
              width: 23.3,
              height: 25.4,
              child: SvgPicture.asset(
                'assets/vectors/vector_66_x2.svg',
              ),
            ),
          ),
          Positioned(
            right: 52.9,
            top: 438.8,
            child: SizedBox(
              width: 24.3,
              height: 24.4,
              child: SvgPicture.asset(
                'assets/vectors/vector_35_x2.svg',
              ),
            ),
          ),
          Positioned(
            right: 12,
            top: 440.8,
            child: SizedBox(
              width: 25.1,
              height: 16.8,
              child: SvgPicture.asset(
                'assets/vectors/vector_52_x2.svg',
              ),
            ),
          ),
          Positioned(
            right: 90.2,
            top: 437.8,
            child: SizedBox(
              width: 25.1,
              height: 25.2,
              child: SvgPicture.asset(
                'assets/vectors/vector_53_x2.svg',
              ),
            ),
          ),
          Positioned(
            left: 13,
            bottom: 161,
            child: SizedBox(
              height: 744,
              child: Text(
                'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos.',
                style: GoogleFonts.getFont(
                  'Inter',
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: const Color(0xFF000000),
                ),
              ),
            ),
          ),
          Positioned(
            left: 13,
            bottom: 356,
            child: SizedBox(
              height: 25,
              child: Text(
                'About',
                style: GoogleFonts.getFont(
                  'Inter',
                  fontWeight: FontWeight.w700,
                  fontSize: 21,
                  color: const Color(0xFF000000),
                ),
              ),
            ),
          ),
          Positioned(
            left: 13,
            bottom: 140,
            child: SizedBox(
              height: 25,
              child: Text(
                'Location',
                style: GoogleFonts.getFont(
                  'Inter',
                  fontWeight: FontWeight.w700,
                  fontSize: 21,
                  color: const Color(0xFF000000),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
