import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IsiLaporan extends StatefulWidget {
  const IsiLaporan({Key? key}) : super(key: key);
  static String routeName = 'IsiLaporan';

  @override
  _IsiLaporanState createState() => _IsiLaporanState();
}

class _IsiLaporanState extends State<IsiLaporan> {
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
      body: SingleChildScrollView(
        child: SafeArea(
          child: Stack(
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
                      width: 355,
                      height: 465,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 10.0, left: 10.0, right: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 6.0),
                              child: Text(
                                "Kelas",
                                style: TextStyle(
                                  fontFamily: 'Poppins',
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
                                    child: const Padding(
                                      padding: EdgeInsets.only(
                                          left: 11.0, top: 12.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "XII MIPA 5",
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
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
                              height: 20,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 6.0),
                              child: Text(
                                "Nama",
                                style: TextStyle(
                                  fontFamily: 'Poppins',
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
                                    child: const Padding(
                                      padding: EdgeInsets.only(
                                          left: 11.0, top: 12.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Andini Syakira",
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
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
                              height: 20,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 6.0),
                              child: Text(
                                "Masalah yang dialami/dirasakan",
                                style: TextStyle(
                                  fontFamily: 'Poppins',
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
                                    height: 100,
                                    child: const Padding(
                                      padding: EdgeInsets.only(
                                          left: 11.0, top: 12.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Konflik dengan teman sekelas",
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
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
                              height: 20,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 6.0),
                              child: Text(
                                "Tanggal",
                                style: TextStyle(
                                  fontFamily: 'Poppins',
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
                                  Row(
                                    children: [
                                      Expanded(
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            contentPadding:
                                                const EdgeInsets.symmetric(
                                              vertical: 16.0,
                                              horizontal: 10.0,
                                            ),
                                            hintText: '7',
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                          width:
                                              10), // tambahkan jarak antar kolom
                                      Expanded(
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            contentPadding:
                                                const EdgeInsets.symmetric(
                                              vertical: 16.0,
                                              horizontal: 10.0,
                                            ),
                                            hintText: 'Mei',
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                          width:
                                              10), // tambahkan jarak antar kolom
                                      Expanded(
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            contentPadding:
                                                const EdgeInsets.symmetric(
                                              vertical: 16.0,
                                              horizontal: 10.0,
                                            ),
                                            hintText: '2023',
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
                      height: 500,
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
                      width: 355,
                      height: 245,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 10.0),
                              child: Text(
                                "1 Tanggapan",
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const SizedBox(height: 15),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(width: 10),
                                Image.asset(
                                  'assets/images/orang.png',
                                  width: 40,
                                  height: 40,
                                ),
                                const SizedBox(width: 10),
                                const Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 6.0),
                                        child: Text(
                                          "Guru BK 1",
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 6.0),
                                        child: Text(
                                          "Laporan telah ditangani oleh saya, untuk siswa bernama Andhini tolong untuk bersabar dalam menghadapi masalah yang ada.",
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 6.0),
                                        child: Text(
                                          "2 Maret 2023",
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
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
      ),
    );
  }
}
