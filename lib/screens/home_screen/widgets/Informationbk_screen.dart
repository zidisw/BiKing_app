import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InformasibkScreen extends StatefulWidget {
  const InformasibkScreen({Key? key}) : super(key: key);
  static String routeName = 'InformasibkScreen';

  @override
  State<InformasibkScreen> createState() => _InformasibkScreenState();
}

class _InformasibkScreenState extends State<InformasibkScreen> {
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
        title: Text(
          'Informasi Seputar BK',
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      backgroundColor: const Color(0xFFFFFFFF),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                // alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Bimbingan dan Konseling SMA Negeri 16 Makassar",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          color: const Color(0xFF0579CC),
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Image.asset(
                        "assets/images/video.png",
                        width: double.infinity,
                        height: 188.28,
                      ),
                      Text(
                        "BK SMA 16 Makassar adalah sebuah unit kerja yang bertanggung jawab untuk memberikan layanan bimbingan dan konseling bagi siswa SMA 16 Makassar agar dapat memperoleh dukungan dan bantuan dalam mengatasi berbagai masalah yang dihadapi, baik masalah akademik maupun non-akademik.",
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
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Koordinator BK",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.poppins(
                          color: const Color(0xFF0579CC),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: Container(
                          alignment: Alignment.center,
                          width: 100,
                          height: 100,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                "assets/images/gurubk.png",
                              ),
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 7),
                          child: Text(
                            "Nama Koordninator BK",
                            style: GoogleFonts.poppins(
                              color: const Color(0xFF000000),
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text(
                            "“Sebagai koordinator BK, tugas saya adalah memastikan bahwa program bimbingan dan konseling di sekolah berjalan dengan baik dan sesuai dengan tujuan kita untuk membantu siswa tumbuh dan berkembang.”",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                              color: const Color(0xFF000000),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 35,
                      ),
                      Text(
                        "Guru-guru BK",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.poppins(
                          color: const Color(0xFF0579CC),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Container(
                                  alignment: Alignment.centerLeft,
                                  width: 100,
                                  height: 100,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                        "assets/images/gurubk.png",
                                      ),
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 7),
                                  child: Text(
                                    "Guru BK 1",
                                    style: TextStyle(
                                      color: Color(0xFF000000),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Column(
                              children: [
                                Container(
                                  alignment: Alignment.centerLeft,
                                  width: 100,
                                  height: 100,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                        "assets/images/gurubk.png",
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 7),
                                  child: Text(
                                    "Guru BK 2",
                                    style: GoogleFonts.poppins(
                                      color: const Color(0xFF000000),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Transform.scale(
                  scale: 1.0,
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    width: double.infinity,
                    height: 200,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/images/konseling.png",
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 35,
                      ),
                      Text(
                        "Visi Misi BK",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.poppins(
                          color: const Color(0xFF0579CC),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 3),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Container(
                                  alignment: Alignment.centerLeft,
                                  width: 5,
                                  height: 160,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                        "assets/images/verticalbar2.png",
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 16.0),
                                child: Column(
                                  children: [
                                    Align(
                                      child: Text.rich(
                                        TextSpan(
                                          text:
                                              'Mewujudkan siswa mandiri dengan kepribadian yang kuat dan mampu bersosialisasi melalui program bimbingan dan konseling yang efektif.\n',
                                          style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14,
                                          ),
                                          children: <TextSpan>[
                                            TextSpan(
                                              text: '• Melayani\n',
                                              style: GoogleFonts.poppins(
                                                fontSize: 14,
                                              ),
                                            ),
                                            TextSpan(
                                              text: '• Membimbing\n',
                                              style: GoogleFonts.poppins(
                                                fontSize: 14,
                                              ),
                                            ),
                                            TextSpan(
                                              text: '• Melatih\n',
                                              style: GoogleFonts.poppins(
                                                fontSize: 14,
                                              ),
                                            ),
                                            TextSpan(
                                              text: '• Mendidik\n',
                                              style: GoogleFonts.poppins(
                                                fontSize: 14,
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
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Dokumentasi Kegiatan BK",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.poppins(
                          color: const Color(0xFF0579CC),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Container(
                                  alignment: Alignment.centerLeft,
                                  width: 80,
                                  height: 80,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                        "assets/images/bk1.png",
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Column(
                              children: [
                                Container(
                                  alignment: Alignment.centerLeft,
                                  width: 80,
                                  height: 80,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                        "assets/images/bk2.png",
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Column(
                              children: [
                                Container(
                                  alignment: Alignment.centerLeft,
                                  width: 80,
                                  height: 80,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                        "assets/images/bk3.png",
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Column(
                              children: [
                                Container(
                                  alignment: Alignment.centerLeft,
                                  width: 80,
                                  height: 80,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                        "assets/images/bk4.png",
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Container(
                                  alignment: Alignment.centerLeft,
                                  width: 80,
                                  height: 80,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                        "assets/images/bk5.png",
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Column(
                              children: [
                                Container(
                                  alignment: Alignment.centerLeft,
                                  width: 80,
                                  height: 80,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                        "assets/images/bk6.png",
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Column(
                              children: [
                                Container(
                                  alignment: Alignment.centerLeft,
                                  width: 80,
                                  height: 80,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                        "assets/images/bk7.png",
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Column(
                              children: [
                                Container(
                                  alignment: Alignment.centerLeft,
                                  width: 80,
                                  height: 80,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                        "assets/images/bk8.png",
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 20),
                        child: GestureDetector(
                          onTap: () {
                            // aksi ketika teks "Lihat Selengkapnya >>" diklik
                          },
                          child: Text(
                            "Lihat Selengkapnya >>",
                            textAlign: TextAlign.right,
                            style: GoogleFonts.poppins(
                              color: const Color(0xFF9180FF),
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
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
        ),
      ),
    );
  }
}
