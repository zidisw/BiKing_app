import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen2 extends StatelessWidget {
  static String routeName = 'SplashScreen2';

  const SplashScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
        width: double.infinity,
        child: Container(
            width: double.infinity,
            height: 800 * fem,
            decoration: const BoxDecoration(
              color: Color(0xffffffff),
            ),
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  top: 0,
                  child: SizedBox(
                    width: 391 * fem,
                    height: 150.76 * fem,
                    child: Image.asset(
                      'assets/images/atas.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  bottom: -30,
                  child: SizedBox(
                    width: 391 * fem,
                    height: 150.76 * fem,
                    child: Image.asset(
                      'assets/images/atas2.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: SizedBox(
                    child: Image.asset(
                      'assets/images/Vector-2.png',
                      height: 45.h,
                      width: 25.w,
                    ),
                  ),
                ),
                Positioned(
                  left: 55 * fem,
                  top: 250 * fem,
                  child: SizedBox(
                    width: 250 * fem,
                    height: 139.4 * fem,
                    child: Image.asset(
                      'assets/images/welcome.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  left: 57 * fem,
                  top: 230 * fem,
                  
                  child: SizedBox(
                    width: 250 * fem,
                    height: 50 * fem,
                    child: Text(
                      'SELAMAT DATANG',
                      style: GoogleFonts.poppins(
                          fontSize: 25 * ffem,
                          color: const Color(0xff38acff),
                          fontWeight: FontWeight.w700,
                          height: 1.5 * ffem / fem,
                          letterSpacing: 0.6 * fem,
                          decoration: TextDecoration.none
                          ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),

                Positioned(
                  left: 45 * fem,
                  top: 400 * fem,
                  child: SizedBox(
                    width: 270 * fem,
                    height: 100 * fem,
                    child: Text(
                      'BiKing adalah aplikasi Bimbingan Konseling yang membantu siswa untuk menemukan solusi atas masalah yang dihadapi. Kamu dapat melakukan interaksi dengan Guru BK kamu tanpa harus datang ke sekolah.',
                      style: GoogleFonts.poppins(
                          fontSize: 13 * ffem,
                          color: const Color(0xff3444871),
                          fontWeight: FontWeight.w400,
                          height: 1.15 * ffem / fem,
                          letterSpacing: 0.39 * fem,
                          decoration: TextDecoration.none
                          ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),

                Positioned(
                  left: 105 * fem,
                  top: 526 * fem,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'LoginScreen');
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: const Color(0xff38acff),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10 * fem),
                      ),
                      padding: EdgeInsets.symmetric(
                          horizontal: 50 * fem, vertical: 10 * fem),
                    ),
                    child: Text(
                      'Asiiap!',
                      style: GoogleFonts.poppins(
                          fontSize: 15 * ffem,
                          color: const Color(0xffffffff),
                          fontWeight: FontWeight.w700,
                          height: 1.5 * ffem / fem,
                          letterSpacing: 0.45 * fem,
                          decoration: TextDecoration.none
                          ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  ),

            ] 
          ) 
        ) 
      );  
  } 
} 
