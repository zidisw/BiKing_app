// Screen yang tampil ketika user meng-tap laporan

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class IsiLaporanSiswaScreen extends StatefulWidget {
  final String laporanID;

  const IsiLaporanSiswaScreen({required this.laporanID, Key? key}) : super(key: key);

  @override
  _IsiLaporanSiswaScreenState createState() => _IsiLaporanSiswaScreenState();
}

class _IsiLaporanSiswaScreenState extends State<IsiLaporanSiswaScreen> {
  late Stream<DocumentSnapshot> _laporanStream;

  @override
  void initState() {
    super.initState();
    _laporanStream = FirebaseFirestore.instance
        .collection('laporan_siswa')
        .doc(widget.laporanID)
        .snapshots();
  }

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
          'Isi Laporan',
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: StreamBuilder<DocumentSnapshot>(
        stream: _laporanStream,
        builder:
            (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Text('Error: ${snapshot.error}'),
            );
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (!snapshot.hasData) {
            return const Center(
              child: Text('Laporan not found!'),
            );
          }

          final Map<String, dynamic>? data =
          snapshot.data?.data() as Map<String, dynamic>?;

          if (data == null) {
            return const Center(
              child: Text('Laporan not found!'),
            );
          }

          final String nama = data['Nama'] as String? ?? '';
          final String kelas = data['Kelas'] as String? ?? '';
          final String masalah = data['Masalah'] as String? ?? '';
          final String nomor = data['Nomor'] as String? ?? '';
          final Timestamp timestamp = data['Date'] as Timestamp;
          final DateTime dateTime = timestamp.toDate();
          final String formattedDateTime = DateFormat('yyyy-MM-dd HH:mm').format(dateTime);

          return SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: const Color(0xFF000000).withOpacity(0.16),
                        width: 1.0,
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(
                        vertical: 13.0, horizontal: 10.0),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Form(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 6.0),
                              child: Text(
                                "Nama",
                                style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding:
                              const EdgeInsets.only(left: 7.0, right: 8.0),
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 3,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFFFFFFF),
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(
                                        color: Colors.grey,
                                        width: 1.0,
                                      ),
                                    ),
                                    width: 330,
                                    height: 50,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10.0, top: 12.0),
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            nama,
                                            style: GoogleFonts.poppins(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400,
                                            ),
                                            textAlign: TextAlign
                                                .center, // atur posisi teks menjadi pinggir tengah
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),


                            const SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 6.0),
                              child: Text(
                                "Kelas",
                                style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding:
                              const EdgeInsets.only(left: 7.0, right: 8.0),
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 3,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFFFFFFF),
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(
                                        color: Colors.grey,
                                        width: 1.0,
                                      ),
                                    ),
                                    width: 330,
                                    height: 50,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 11.0, top: 12.0),
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            kelas,
                                            style: GoogleFonts.poppins(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400,
                                            ),
                                            textAlign: TextAlign
                                                .center, // atur posisi teks menjadi pinggir tengah
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            const SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 6.0),
                              child: Text(
                                "Deskripsi Masalah",
                                style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding:
                              const EdgeInsets.only(left: 7.0, right: 8.0),
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 3,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFFFFFFF),
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(
                                        color: Colors.grey,
                                        width: 1.0,
                                      ),
                                    ),
                                    width: 330,
                                    height: 150,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 11.0, top: 12.0, right: 11.0),
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            masalah,
                                            style: GoogleFonts.poppins(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400,
                                            ),
                                            textAlign: TextAlign
                                                .justify, // atur posisi teks menjadi pinggir tengah
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),


                            const SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 6.0),
                              child: Text(
                                "Nomor WA yang akan dihubungi",
                                style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding:
                              const EdgeInsets.only(left: 7.0, right: 8.0),
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 3,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFFFFFFF),
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(
                                        color: Colors.grey,
                                        width: 1.0,
                                      ),
                                    ),
                                    width: 330,
                                    height: 50,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 11.0, top: 12.0),
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            nomor,
                                            style: GoogleFonts.poppins(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400,
                                            ),
                                            textAlign: TextAlign
                                                .center, // atur posisi teks menjadi pinggir tengah
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),


                            const SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 6.0),
                              child: Text(
                                "Tanggal Laporan",
                                style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding:
                              const EdgeInsets.only(left: 7.0, right: 8.0),
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 3,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFFFFFFF),
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(
                                        color: Colors.grey,
                                        width: 1.0,
                                      ),
                                    ),
                                    width: 330,
                                    height: 50,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 11.0, top: 12.0),
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            formattedDateTime,
                                            style: GoogleFonts.poppins(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400,
                                            ),
                                            textAlign: TextAlign
                                                .center, // atur posisi teks menjadi pinggir tengah
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
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
