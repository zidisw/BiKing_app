import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IsiKehadiran extends StatefulWidget {
  const IsiKehadiran({Key? key}) : super(key: key);
  static String routeName = 'IsiKehadiran';

  @override
  _IsiKehadiranState createState() => _IsiKehadiranState();
}

class _IsiKehadiranState extends State<IsiKehadiran> {
  final _formKey = GlobalKey<FormState>();

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
        title: Text('Laporan Kehadiran Bulanan',
            style:
                GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w600)),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
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
                        padding: const EdgeInsets.symmetric(
                            vertical: 13.0, horizontal: 10.0),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, bottom: 10, top: 5),
                          child: Form(
                            key: _formKey,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
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
                                Column(
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
                                              "XII MIPA 1",
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
                                const SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "Nama",
                                  style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 7.0, right: 8.0),
                                  child: Column(
                                    children: [
                                      const SizedBox(
                                        height: 3,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: const Color(0xFFFFFFFF),
                                          borderRadius:
                                              BorderRadius.circular(12),
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
                                                "Zid Irsyadin Sartono Wijaogy",
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
                                    "NISN",
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
                                  padding: const EdgeInsets.only(
                                      left: 7.0, right: 8.0),
                                  child: Column(
                                    children: [
                                      const SizedBox(
                                        height: 3,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: const Color(0xFFFFFFFF),
                                          borderRadius:
                                              BorderRadius.circular(12),
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
                                                "2345678261",
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
                                    "Jenis Kelamin",
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
                                  padding: const EdgeInsets.only(
                                      left: 7.0, right: 8.0),
                                  child: Column(
                                    children: [
                                      const SizedBox(
                                        height: 3,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: const Color(0xFFFFFFFF),
                                          borderRadius:
                                              BorderRadius.circular(12),
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
                                                "Laki-laki",
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
                                    "Agama",
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
                                  padding: const EdgeInsets.only(
                                      left: 7.0, right: 8.0),
                                  child: Column(
                                    children: [
                                      const SizedBox(
                                        height: 3,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: const Color(0xFFFFFFFF),
                                          borderRadius:
                                              BorderRadius.circular(12),
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
                                                "Islam",
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
                                    "Jumlah",
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
                                  padding: const EdgeInsets.only(
                                      left: 7.0, right: 8.0),
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
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                contentPadding:
                                                    const EdgeInsets.symmetric(
                                                  vertical: 16.0,
                                                  horizontal: 10.0,
                                                ),
                                                hintText: '0',
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
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                contentPadding:
                                                    const EdgeInsets.symmetric(
                                                  vertical: 16.0,
                                                  horizontal: 10.0,
                                                ),
                                                hintText: '1',
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
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                contentPadding:
                                                    const EdgeInsets.symmetric(
                                                  vertical: 16.0,
                                                  horizontal: 10.0,
                                                ),
                                                hintText: '0',
                                              ),
                                            ),
                                          ),
                                        ],
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
                                    "Keterangan",
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
                                  padding: const EdgeInsets.only(
                                      left: 7.0, right: 8.0),
                                  child: Column(
                                    children: [
                                      const SizedBox(
                                        height: 3,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: const Color(0xFFFFFFFF),
                                          borderRadius:
                                              BorderRadius.circular(12),
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
                                                "Perhatikan kehadirannya",
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
                    ],
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
