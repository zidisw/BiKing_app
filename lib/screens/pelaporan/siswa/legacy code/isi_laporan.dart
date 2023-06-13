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
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Stack(
              children: [
                Align(
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
                       padding: const EdgeInsets.symmetric(
                                    vertical: 13.0, horizontal: 10.0),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
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
                                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                                child: Column(
                                  children: [
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
                                              "XII MIPA 5",
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
                                height: 20,
                              ),
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
                                padding: const EdgeInsets.only(left: 7.0, right: 8.0),
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
                                              "Andini Syakira",
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
                                height: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 6.0),
                                child: Text(
                                  "Masalah yang dialami/dirasakan",
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
                                padding: const EdgeInsets.only(left: 7.0, right: 8.0),
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
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10.0, top: 12.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Konflik dengan teman sekelas",
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
                                height: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 6.0),
                                child: Text(
                                  "Tanggal",
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
                                padding: const EdgeInsets.only(left: 7.0, right: 8.0),
                                child: Column(
                                  children: [
                                    const SizedBox(
                                      height: 3,
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Container(
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.grey,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            padding: const EdgeInsets.symmetric(
                                              vertical: 16.0,
                                              horizontal: 10.0,
                                            ),
                                            child: const Text(
                                              '7',
                                              style: TextStyle(
                                                fontSize: 16.0,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                        ),
                      
                                        const SizedBox(
                                            width:
                                                10), // tambahkan jarak antar kolom
                                        Expanded(
                                          child: Container(
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.grey,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            padding: const EdgeInsets.symmetric(
                                              vertical: 16.0,
                                              horizontal: 10.0,
                                            ),
                                            child: const Text(
                                              'Mei',
                                              style: TextStyle(
                                                fontSize: 16.0,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                            width:
                                                10), // tambahkan jarak antar kolom
                                        Expanded(
                                          child: Container(
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.grey,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            padding: const EdgeInsets.symmetric(
                                              vertical: 16.0,
                                              horizontal: 10.0,
                                            ),
                                            child: const Text(
                                              '2023',
                                              style: TextStyle(
                                                fontSize: 16.0,
                                                color: Colors.black,
                                              ),
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
                      Padding(
                  padding: const EdgeInsets.only(top: 20.0),
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
                    
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text(
                            "1 Tanggapan",
                            style: GoogleFonts.poppins(
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
                            Expanded(
                              child: Column(
                                crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 6.0),
                                    child: Text(
                                      "Guru BK 1",
                                      style: GoogleFonts.poppins(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 6.0),
                                    child: Text(
                                      "Laporan telah ditangani oleh saya, untuk siswa bernama Andhini tolong untuk bersabar dalam menghadapi masalah yang ada.",
                                      style: GoogleFonts.poppins(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 6.0),
                                    child: Text(
                                      "15 Mei 2023",
                                      style: GoogleFonts.poppins(
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
      ),
    );
  }
}
