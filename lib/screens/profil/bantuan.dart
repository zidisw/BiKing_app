import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Bantuan extends StatefulWidget {
  const Bantuan({super.key});
  static String routeName = 'Bantuan';

  @override
  _Bantuan createState() => _Bantuan();
}

class _Bantuan extends State<Bantuan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.blue,
                Colors.purple,
              ],
            ),
          ),
        ),
        title: Text('Bantuan',
            style:
                GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w500)),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Align(
                alignment: Alignment.center,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: const Color(0xFF000000).withOpacity(0.30),
                          width: 1.0,
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(
                          vertical: 13.0, horizontal: 10.0),
                      child: Padding(
                        padding:
                            const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Apa saja masalah yang dapat dibahas dalam sesi konseling menggunakan aplikasi ini?",
                              textAlign: TextAlign.left,
                              style: GoogleFonts.poppins(
                                color: const Color(0xFF000000),
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Siswa dapat membahas berbagai macam masalah dalam sesi konseling menggunakan aplikasi ini, termasuk masalah akademik seperti kesulitan memahami materi pelajaran atau masalah pribadi seperti masalah keluarga, persahabatan, atau kesehatan mental.",
                              textAlign: TextAlign.left,
                              style: GoogleFonts.poppins(
                                color: const Color(0xFF000000),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 25),
                              child: Container(
                                alignment: Alignment.topCenter,
                                width: 300,
                                height: 230,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      "assets/images/bantuan.png",
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
