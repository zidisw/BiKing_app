import 'package:biking_app/screens/detail_report_screen/report_screen_SISWA_ADD.dart';
import 'package:biking_app/screens/detail_report_screen/report_screen_SISWA_LIST.dart';
import 'package:biking_app/screens/detail_report_screen/report_screen_SISWA_VIEW.dart';
import 'package:biking_app/screens/pelaporan/guru/daftar_pelaporan_guru.dart';
import 'package:biking_app/screens/pelaporan/siswa/buat_laporan.dart';
import 'package:biking_app/screens/pelaporan/siswa/daftar_laporan.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Pelaporan extends StatefulWidget {
  const Pelaporan({Key? key}) : super(key: key);
  static String routeName = 'Pelaporan';

  @override
  _PelaporanState createState() => _PelaporanState();
}

class _PelaporanState extends State<Pelaporan> {
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
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Align(
                alignment: Alignment.topCenter,
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: const Color(0xFF000000).withOpacity(0.16),
                          width: 1.0,
                        ),
                      ),
                      height: 160,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 10.0, left: 3.0, bottom: 10.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 3),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Text(
                                    'Laporan Masalah',
                                    style: GoogleFonts.poppins(
                                      color: const Color.fromARGB(
                                          255, 81, 154, 232),
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'assets/images/lapor.png',
                                          width: 90,
                                          height: 90,
                                        ),
                                        const SizedBox(
                                          height: 30,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 5.0, right: 10.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                width:
                                                    230, // Atur lebar tombol "Buka"
                                                height:
                                                    40, // Atur tinggi tombol "Buka"
                                                child: ElevatedButton(
                                                  onPressed: () {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              const DaftarPelaporanSiswaScreen()),
                                                    );
                                                  },
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    backgroundColor:
                                                        const Color(0xFF38ACFF),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15),
                                                    ),
                                                  ),
                                                  child: Text(
                                                    "Buka",
                                                    style: GoogleFonts.poppins(
                                                      color: Color.fromARGB(
                                                          255, 255, 255, 255),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(height: 15),
                                              Container(
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
                                                              const AddReportScreen()),
                                                    );
                                                  },
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    backgroundColor:
                                                        const Color(0xFF9180FF),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15),
                                                    ),
                                                  ),
                                                  child: Text(
                                                    "Buat Laporan Baru",
                                                    style: GoogleFonts.poppins(
                                                      color: Color.fromARGB(
                                                          255, 255, 255, 255),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    )),
                              ],
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
    );
  }
}
