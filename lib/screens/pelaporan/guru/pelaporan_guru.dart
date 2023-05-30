import 'package:biking_app/screens/pelaporan/guru/daftar_pelaporan_guru.dart';
import 'package:biking_app/screens/pelaporan/guru/tambah_laporan_guru.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class PelaporanScreen extends StatefulWidget {
  const PelaporanScreen({super.key});

  @override
  State<PelaporanScreen> createState() => _PelaporanScreenState();
}

class _PelaporanScreenState extends State<PelaporanScreen> {

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
          'Pelaporan',
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      backgroundColor: const Color(0xFFFFFFFF),
      body: SafeArea(
          child: Stack(
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
                        color: const Color(0xFF000000).withOpacity(0.30),
                        width: 1.0,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15.0, left: 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Kartu Komunikasi",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xFF7369FF),
                              fontSize: 18,
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
                                            "assets/images/lapor.png",
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 20.0),
                                      child: ElevatedButton(
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                     const DaftarPelaporanScreen()),
                                            );
                                          },
                                          style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  const Color(0xFF38ACFF),
                                              padding: const EdgeInsets.symmetric(
                                                  horizontal: 80, vertical: 5),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                              )),
                                          child: const Text(
                                            "Buka",
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              color: Color(0xFFFFFFFF),
                                              fontSize: 13,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          )),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 20.0),
                                      child: ElevatedButton(
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const BuatLaporan()),
                                            );
                                          },
                                          style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  const Color(0xFF9180FF),
                                              padding: const EdgeInsets.symmetric(
                                                  horizontal: 36, vertical: 8),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                              )),
                                          child: const Text(
                                            "Buat Laporan Baru",
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              color: Color(0xFFFFFFFF),
                                              fontSize: 13,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          )),
                                    ),
                                  ],
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
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Transform.scale(
                scale: 1.1,
                child: Container(
                  alignment: Alignment.bottomCenter,
                  width: double.infinity,
                  height: 79,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/images/bawah.png",
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
