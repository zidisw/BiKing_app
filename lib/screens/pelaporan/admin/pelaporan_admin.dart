import 'package:biking_app/screens/pelaporan/guru/tambah_laporan_guru.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'report_screen_ADMIN_SISWA__LIST.dart';
import 'report_screen_ADMIN_GURU__LIST.dart';


class PelaporanAdminScreen extends StatefulWidget {
  const PelaporanAdminScreen({super.key});
  static String routeName = 'PelaporanAdminScreen';

  @override
  State<PelaporanAdminScreen> createState() => _PelaporanAdminScreenState();
}

class _PelaporanAdminScreenState extends State<PelaporanAdminScreen> {
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
        child:

        Stack(
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

                      height: 250,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10.0, left: 3.0, bottom: 10.0),
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
                                    'Navigasi Laporan',
                                    style: GoogleFonts.poppins(
                                      color: const Color.fromARGB(255, 81, 154, 232),
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
                                          padding: const EdgeInsets.only(left:5.0,  right: 10.0),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                width: 230, // Atur lebar tombol "Buka"
                                                height: 40, // Atur tinggi tombol "Buka"
                                                child: ElevatedButton(
                                                  onPressed: () {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(builder: (context) => const DaftarPelaporanSiswaScreen()),
                                                    );
                                                  },
                                                  style: ElevatedButton.styleFrom(
                                                    backgroundColor: const Color(0xFF38ACFF),
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(15),
                                                    ),
                                                  ),
                                                  child: Text(
                                                    "Laporan Siswa",
                                                    style: GoogleFonts.poppins(
                                                      color: const Color.fromARGB(255, 255, 255, 255),
                                                      fontSize: 14,
                                                      fontWeight: FontWeight.w600,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(height: 15),
                                              SizedBox(
                                                width: 230, // Atur lebar tombol "Buat Laporan Baru"
                                                height: 40, // Atur tinggi tombol "Buat Laporan Baru"
                                                child: ElevatedButton(
                                                  onPressed: () {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(builder: (context) => const DaftarPelaporanGuruAdminScreen()),
                                                    );
                                                  },
                                                  style: ElevatedButton.styleFrom(
                                                    backgroundColor: const Color(0xFF9180FF),
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(15),
                                                    ),
                                                  ),
                                                  child: Text(
                                                    "Laporan Guru",
                                                    style: GoogleFonts.poppins(
                                                      color: const Color.fromARGB(255, 255, 255, 255),
                                                      fontSize: 14,
                                                      fontWeight: FontWeight.w600,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(height: 15),
                                              SizedBox(
                                                width: 230, // Atur lebar tombol "Buat Laporan Baru"
                                                height: 40, // Atur tinggi tombol "Buat Laporan Baru"
                                                child: ElevatedButton(
                                                  onPressed: () {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(builder: (context) => const BuatLaporan()),
                                                    );
                                                  },
                                                  style: ElevatedButton.styleFrom(
                                                    backgroundColor: const Color(0xFF9180FF),
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(15),
                                                    ),
                                                  ),
                                                  child: Text(
                                                    "Laporan Wali Kelas",
                                                    style: GoogleFonts.poppins(
                                                      color: const Color.fromARGB(255, 255, 255, 255),
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
