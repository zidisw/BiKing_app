import 'package:biking_app/screens/pelaporan/guru/tambah_laporan_guru.dart';
import 'package:biking_app/screens/pelaporan/siswa/daftar_laporan.dart';
import 'package:flutter/material.dart';

class Pelaporan extends StatefulWidget {
  const Pelaporan({super.key});

  @override
  _PelaporanState createState() => _PelaporanState();
}

class _PelaporanState extends State<Pelaporan> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pelaporan'),
      ),
      backgroundColor: const Color(0xFFFFFFFF),
      body: SafeArea(
        child: 
        
        Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: const Color(0xFF000000).withOpacity(0.16),
                        width: 1.0,
                      ),
                    ),
                    width: 350,
                    height: 160,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10.0, left: 3.0, bottom: 10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 3),
                              const Padding(
                                padding: EdgeInsets.only(left: 15.0),
                                child: Text(
                                  'Laporan Masalah',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Color.fromARGB(255, 81, 154, 232),
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
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 20.0),
                                            child: ElevatedButton(
                                                onPressed: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            const DaftarLaporan()),
                                                  );
                                                },
                                                style: ElevatedButton.styleFrom(
                                                    backgroundColor:
                                                        const Color(0xFF38ACFF),
                                                    padding:
                                                        const EdgeInsets.symmetric(
                                                            horizontal: 84,
                                                            vertical: 8),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15),
                                                    )),
                                                child: const Text(
                                                  "Buka",
                                                  style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                    color: Color.fromARGB(
                                                        255, 255, 255, 255),
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                )),
                                          ),
                                          const SizedBox(height: 5),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 20.0),
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
                                                    padding:
                                                        const EdgeInsets.symmetric(
                                                            horizontal: 37,
                                                            vertical: 8),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15),
                                                    )),
                                                child: const Text(
                                                  "Buat Laporan Baru",
                                                  style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    color: Color.fromARGB(
                                                        255, 255, 255, 255),
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                )),
                                          ),
                                        ],
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
          ],
        ),
      ),
    );
  }
}
