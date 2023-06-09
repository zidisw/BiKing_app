import 'package:flutter/material.dart';
import 'package:biking_app/screens/pelaporan/wali_kelas/buat_laporan_kehadiran.dart';
import 'package:biking_app/screens/pelaporan/wali_kelas/daftar_laporan_kehadiran.dart';
import 'package:biking_app/screens/pelaporan/wali_kelas/daftar_laporan_penanganan.dart';
import 'package:biking_app/screens/pelaporan/wali_kelas/tambah_laporan_wakel.dart';
import 'package:google_fonts/google_fonts.dart';

class PelaporanWali extends StatefulWidget {
  const PelaporanWali({Key? key}) : super(key: key);
  static String routeName = 'PelaporanWali';

  @override
  State<PelaporanWali> createState() => _PelaporanWaliState();
}

class _PelaporanWaliState extends State<PelaporanWali> {
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
        title: Text('Pelaporan',
            style:
                GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w600)),
      ),
      backgroundColor: const Color(0xFFFFFFFF),
      body: SafeArea(
          child: SingleChildScrollView(
              child: Column(
        children: [
          Align(
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Container(
                    width: 350,
                    height: 170,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: const Color(0xFF000000).withOpacity(0.20),
                        width: 1.0,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15.0, left: 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Laporan Penanganan Wali Kelas",
                            style: GoogleFonts.poppins(
                              color: const Color(0xFF7369FF),
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 14, right: 10),
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
                                            "assets/images/lapor.png",
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: 230, // Atur lebar tombol "Buka"
                                        height: 40, // Atur tinggi tombol "Buka"
                                        child: ElevatedButton(
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const DaftarLaporanPenangananWakel()),
                                            );
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                const Color(0xFF38ACFF),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                          ),
                                          child: Text(
                                            "Buka",
                                            style: GoogleFonts.poppins(
                                              color: const Color.fromARGB(
                                                  255, 255, 255, 255),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 15),
                                      SizedBox(
                                        width:
                                            230, // Atur lebar tombol "Buat Laporan Baru"
                                        height:
                                            40, // Atur tinggi tombol "Buat Laporan Baru"
                                        child: ElevatedButton(
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const WaliTambahlaporan()),
                                            );
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                const Color(0xFF9180FF),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                          ),
                                          child: Text(
                                            "Buat Laporan Baru",
                                            style: GoogleFonts.poppins(
                                              color: const Color.fromARGB(
                                                  255, 255, 255, 255),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
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
          Align(
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Container(
                    width: 350,
                    height: 170,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: const Color(0xFF000000).withOpacity(0.20),
                        width: 1.0,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15.0, left: 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Laporan Kehadiran Bulanan",
                            style: GoogleFonts.poppins(
                              color: const Color(0xFF7369FF),
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 14),
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
                                            "assets/images/bulanan.png",
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10.0, right: 10.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: 230, // Atur lebar tombol "Buka"
                                        height: 40, // Atur tinggi tombol "Buka"
                                        child: ElevatedButton(
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const DaftarlaporankehadiranScreen()),
                                            );
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                const Color(0xFF38ACFF),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                          ),
                                          child: Text(
                                            "Buka",
                                            style: GoogleFonts.poppins(
                                              color: const Color.fromARGB(
                                                  255, 255, 255, 255),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 15),
                                      SizedBox(
                                        width:
                                            230, // Atur lebar tombol "Buat Laporan Baru"
                                        height:
                                            40, // Atur tinggi tombol "Buat Laporan Baru"
                                        child: ElevatedButton(
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const BuatKehadiran()),
                                            );
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                const Color(0xFF9180FF),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                          ),
                                          child: Text(
                                            "Buat Laporan Baru",
                                            style: GoogleFonts.poppins(
                                              color: const Color.fromARGB(
                                                  255, 255, 255, 255),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
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
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Container(
                      width: 350,
                      height: 30,
                      decoration: BoxDecoration(
                        color: const Color(0xFF38ACFF),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 3.0, bottom: 3.0, left: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Catatan",
                              style: GoogleFonts.poppins(
                                color: const Color(0xFFFFFFFF),
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ))
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              width: 5,
                              height: 40,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    "assets/icons/dot.png",
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Text.rich(
                                TextSpan(
                                  text:
                                      'Dilampirkan bersama dengan laporan bulanan absen kehadiaran siswa.',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                  ),
                                ),
                                textAlign: TextAlign.justify,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              width: 5,
                              height: 40,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    "assets/icons/dot.png",
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Text.rich(
                                TextSpan(
                                  text:
                                      'Siswa yang tidak pernah hadir wajib ditindaklanjuti wali kelas, untuk mendapatkan informasi langsung atau ada pernyataan tertulis orang tua bahwa siswa pindah atau DO.',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                  ),
                                ),
                                textAlign: TextAlign.justify,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              width: 5,
                              height: 40,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    "assets/icons/dot.png",
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Text.rich(
                                TextSpan(
                                  text:
                                      'Wali kelas koordinasi ke guru BK bagi siswa yang butuh konseling.',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                  ),
                                ),
                                textAlign: TextAlign.justify,
                              ),
                            ],
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
      ))),
    );
  }
}
