import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutUsScreen extends StatefulWidget {
  const AboutUsScreen({super.key});
  static String routeName = 'AboutUsScreen';

  @override
  State<AboutUsScreen> createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
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
        title: Text('Tentang Kami',
            style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w500)),
      ),
      backgroundColor: const Color(0xFFFFFFFF),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    width: 300,
                    height: 230,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/images/imagetk.png",
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "BiKing adalah aplikasi bimbingan konseling untuk siswa SMA. Aplikasi ini memungkinkan membuat pelaporan yang dibuat oleh guru mata pelajaran, guru wali kelas, atau siswa yang dipilih dan diteruskan kepada guru BK yang dipilih. Dalam BiKing, tim kami berkomitmen untuk memberikan layanan bimbingan konseling yang berkualitas tinggi dan ramah siswa, serta menjaga kerahasiaan informasi dari setiap siswa yang menggunakan layanan kami. ",
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.poppins(
                      color: const Color(0xFF000000),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: SizedBox(
              width: 400,
              height: 95,
              child: Image.asset(
                'assets/images/footerberanda.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
