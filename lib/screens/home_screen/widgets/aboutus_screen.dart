import 'package:flutter/material.dart';


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
        title: const Text('Tentang Kami',
        style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 20,
                fontWeight: FontWeight.w700)),
      ),
      backgroundColor: const Color(0xFFFFFFFF),
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 30, left: 30),
            child: Align(
              alignment: Alignment.center,
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
                  const Text(
                    "BiKing adalah aplikasi bimbingan konseling untuk siswa SMA. Aplikasi ini memungkinkan membuat pelaporan yang dibuat oleh guru mata pelajaran, guru wali kelas, atau siswa yang dipilih dan diteruskan kepada guru BK yang dipilih. Dalam BiKing, tim kami berkomitmen untuk memberikan layanan bimbingan konseling yang berkualitas tinggi dan ramah siswa, serta menjaga kerahasiaan informasi dari setiap siswa yang menggunakan layanan kami. ",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Color(0xFF000000),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: 118,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Transform.scale(
                scale: 1.3,
                child: Container(
                  alignment: Alignment.bottomCenter,
                  width: double.infinity,
                  height: 79,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/images/footerberanda.png",
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          
        ],
      )),
      
    );
  }
}