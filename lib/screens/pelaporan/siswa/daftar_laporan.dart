import 'package:biking_app/screens/pelaporan/siswa/edit_laporan.dart';
import 'package:biking_app/screens/pelaporan/siswa/isi_laporan.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DaftarLaporan extends StatefulWidget {
  const DaftarLaporan({Key? key}) : super(key: key);
  static String routeName = 'DaftarLaporan';

  @override
  _DaftarLaporanState createState() => _DaftarLaporanState();
}

class _DaftarLaporanState extends State<DaftarLaporan> {
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
        title: Text('Laporan Masalah',
            style:
                GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w700)),
      ),
      backgroundColor: const Color(0xFFFFFFFF),
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          "Daftar Laporan Masalah",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Color(0xFF0579CC),
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      )
                    ]),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  const SizedBox(
                    height: 60,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const IsiLaporan()),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: const Color(0xFF000000).withOpacity(0.16),
                          width: 1.0,
                        ),
                      ),
                      width: 350,
                      height: 97,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 2.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 3.0),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        'assets/icons/laporan.png',
                                        width: 90,
                                        height: 90,
                                      ),
                                      const SizedBox(
                                        height: 3,
                                      ),
                                      const Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left: 3.0),
                                            child: Text(
                                              "7 Maret 2023",
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 7),
                                          Padding(
                                            padding: EdgeInsets.only(left: 3.0),
                                            child: Text(
                                              "Diproses",
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 14,
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 80.0),
                                child: Column(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        // fungsi yang dijalankan ketika gambar edit ditekan
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const EditLaporan()),
                                        );
                                      },
                                      child: Image.asset(
                                        'assets/icons/edit.png',
                                        width: 45,
                                        height: 45,
                                      ),
                                    ),
                                    const SizedBox(height: 2),
                                    GestureDetector(
                                      onTap: () {
                                        // fungsi yang dijalankan ketika gambar delete ditekan
                                        showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return AlertDialog(
                                              title: const Text("Konfirmasi"),
                                              content: const Text(
                                                  "Apakah Anda yakin ingin menghapus laporan ini?"),
                                              actions: [
                                                TextButton(
                                                  child: const Text("Ya"),
                                                  onPressed: () {
                                                    // fungsi yang dijalankan ketika tombol "Ya" pada dialog diklik
                                                    Navigator.pop(context);
                                                    // TODO: tambahkan kode untuk menghapus laporan dari database atau sumber data lainnya
                                                  },
                                                ),
                                                TextButton(
                                                  child: const Text("Tidak"),
                                                  onPressed: () {
                                                    // fungsi yang dijalankan ketika tombol "Tidak" pada dialog diklik
                                                    Navigator.pop(context);
                                                  },
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                      },
                                      child: Image.asset(
                                        'assets/icons/delete.png',
                                        width: 45,
                                        height: 45,
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
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  const SizedBox(
                    height: 175,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const IsiLaporan()),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: const Color(0xFF000000).withOpacity(0.16),
                          width: 1.0,
                        ),
                      ),
                      width: 350,
                      height: 97,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 2.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 3.0),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        'assets/icons/laporan.png',
                                        width: 90,
                                        height: 90,
                                      ),
                                      const SizedBox(
                                        height: 3,
                                      ),
                                      const Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left: 3.0),
                                            child: Text(
                                              "2 Maret 2023",
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 7),
                                          Padding(
                                            padding: EdgeInsets.only(left: 3.0),
                                            child: Text(
                                              "Diproses",
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 14,
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 80.0),
                                child: Column(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        // fungsi yang dijalankan ketika gambar edit ditekan
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const EditLaporan()),
                                        );
                                      },
                                      child: Image.asset(
                                        'assets/icons/edit.png',
                                        width: 45,
                                        height: 45,
                                      ),
                                    ),
                                    const SizedBox(height: 2),
                                    GestureDetector(
                                      onTap: () {
                                        // fungsi yang dijalankan ketika gambar delete ditekan
                                        showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return AlertDialog(
                                              title: const Text("Konfirmasi"),
                                              content: const Text(
                                                  "Apakah Anda yakin ingin menghapus laporan ini?"),
                                              actions: [
                                                TextButton(
                                                  child: const Text("Ya"),
                                                  onPressed: () {
                                                    // fungsi yang dijalankan ketika tombol "Ya" pada dialog diklik
                                                    Navigator.pop(context);
                                                    // TODO: tambahkan kode untuk menghapus laporan dari database atau sumber data lainnya
                                                  },
                                                ),
                                                TextButton(
                                                  child: const Text("Tidak"),
                                                  onPressed: () {
                                                    // fungsi yang dijalankan ketika tombol "Tidak" pada dialog diklik
                                                    Navigator.pop(context);
                                                  },
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                      },
                                      child: Image.asset(
                                        'assets/icons/delete.png',
                                        width: 45,
                                        height: 45,
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
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
