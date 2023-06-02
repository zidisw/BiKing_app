import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class IsikartuScreen extends StatefulWidget {
  const IsikartuScreen({super.key});
  static String routeName = 'IsikartuScreen';


  @override
  _IsikartuScreenState createState() => _IsikartuScreenState();
}

class _IsikartuScreenState extends State<IsikartuScreen> { 

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
        style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w700)),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Column(
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
                                  padding: EdgeInsets.only(left: 6.0),
                                  child: Text(
                                    "Kepada",
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
                                          borderRadius: BorderRadius.circular(12),
                                          border: Border.all(
                                            color: Colors.grey,
                                            width: 1.0,
                                          ),
                                        ),
                                        width: 330,
                                        height: 50,
                                        child:Padding(
                                          padding: EdgeInsets.only(
                                              left: 10.0, top: 12.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "BK",
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
                                  padding: EdgeInsets.only(left: 6.0),
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
                                          borderRadius: BorderRadius.circular(12),
                                          border: Border.all(
                                            color: Colors.grey,
                                            width: 1.0,
                                          ),
                                        ),
                                        width: 330,
                                        height: 50,
                                        child:Padding(
                                          padding: EdgeInsets.only(
                                              left: 11.0, top: 12.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Mawar Lestari S,pd.",
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
                                  height: 15,
                                ),
                               Padding(
                                  padding: EdgeInsets.only(left: 6.0),
                                  child: Text(
                                    "Siswa di bawah ini perlu ditangani masalahnya",
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
                                  padding: EdgeInsets.only(left: 6.0),
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
                                          borderRadius: BorderRadius.circular(12),
                                          border: Border.all(
                                            color: Colors.grey,
                                            width: 1.0,
                                          ),
                                        ),
                                        width: 330,
                                        height: 50,
                                        child:Padding(
                                          padding: EdgeInsets.only(
                                              left: 11.0, top: 12.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Rayhan Aryathama Putra",
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
                                  padding: EdgeInsets.only(left: 6.0),
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
                                          borderRadius: BorderRadius.circular(12),
                                          border: Border.all(
                                            color: Colors.grey,
                                            width: 1.0,
                                          ),
                                        ),
                                        width: 330,
                                        height: 50,
                                        child:Padding(
                                          padding: EdgeInsets.only(
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
                                  height: 10,
                                ),
                               Padding(
                                  padding: EdgeInsets.only(left: 6.0),
                                  child: Text(
                                    "Deskripsi Masalah / Penanganan yang Telah dilakukan",
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
                                          borderRadius: BorderRadius.circular(12),
                                          border: Border.all(
                                            color: Colors.grey,
                                            width: 1.0,
                                          ),
                                        ),
                                        width: 330,
                                        height: 150,
                                        child:Padding(
                                          padding: EdgeInsets.only(
                                              left: 11.0, top: 12.0, right: 11.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Tidak bisa menyelesaikan Back-end",
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
                                  padding: EdgeInsets.only(left: 6.0),
                                  child: Text(
                                    "Saran / Tindak Lanjut",
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
                                          borderRadius: BorderRadius.circular(12),
                                          border: Border.all(
                                            color: Colors.grey,
                                            width: 1.0,
                                          ),
                                        ),
                                        width: 330,
                                        height: 150,
                                        child:Padding(
                                          padding: EdgeInsets.only(
                                              left: 11.0, top: 12.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Pemanggilan Orang tua",
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
                                  padding: EdgeInsets.only(left: 6.0),
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
                                          borderRadius: BorderRadius.circular(12),
                                          border: Border.all(
                                            color: Colors.grey,
                                            width: 1.0,
                                          ),
                                        ),
                                        width: 330,
                                        height: 50,
                                        child:Padding(
                                          padding: EdgeInsets.only(
                                              left: 11.0, top: 12.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "5 Mei 2023",
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
                Padding(
                padding: const EdgeInsets.only(top: 5.0, left: 20, right:20),
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
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                             Padding(
                                padding: EdgeInsets.only(left: 10.0),
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
                                          padding:
                                              EdgeInsets.only(left: 6.0),
                                          child: Text(
                                            "Guru BK 1",
                                            style: GoogleFonts.poppins(
                                              
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
                                          padding:
                                              EdgeInsets.only(left: 6.0),
                                          child: Text(
                                            "Laporan telah ditangani oleh saya, untuk siswa bernama Rayhan tolong untuk bersabar dalam menghadapi masalah yang ada.",
                                            style: GoogleFonts.poppins(
                                              
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
                                          padding:
                                              EdgeInsets.only(left: 6.0),
                                          child: Text(
                                            "5 Maret 2023",
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
