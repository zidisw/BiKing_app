import 'package:biking_app/screens/home_screen/widgets/aboutus_screen.dart';
import 'package:biking_app/screens/login_screen/login_screen.dart';
import 'package:biking_app/screens/profil/bantuan.dart';
import 'package:biking_app/screens/profil/edit_password.dart';
import 'package:biking_app/screens/profil/hubungi_kami.dart';
import 'package:biking_app/screens/profil/privacy_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:biking_app/screens/pelaporan/guru/daftar_pelaporan_guru.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);
  static String routeName = 'SettingScreen';

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  Future<void> logOut() async {
    await FirebaseAuth.instance.signOut();
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
          builder: (context) =>
              const LoginScreen()), // Ganti dengan halaman log in Anda
    );
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
        title: Text('Pengaturan',
            style:
                GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w500)),
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
                    padding:
                        const EdgeInsets.all(20),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey.withOpacity(0.5),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.symmetric(
                          vertical: 15.0, horizontal: 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  children: [
                                    Container(
                                        alignment: Alignment.topCenter,
                                        width: 80,
                                        height: 80,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                              "assets/images/jid1.png",
                                            ),
                                          ),
                                        ),
                                      ),
            
                                  ],
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Zid Irsyadin S.W.",
                                        style:  GoogleFonts.poppins(
                                          color: Color(0xFF4A92FF),
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "Guru Pendidikan Agama Islam",
                                        style:  GoogleFonts.poppins(
                                          color: const Color(0xFF000000)
                                              .withOpacity(0.5),
                                          fontSize: 17,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5.0),
                            child: Divider(
                              thickness: 1.0,
                              color:
                                  const Color(0xFF000000).withOpacity(0.10),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Column(
                              children: [
                                Center(
                                  child: Container(
                                    width: 320,
                                    height: 80,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFFFFFFF),
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                        color: const Color(0xFF000000)
                                            .withOpacity(0.15),
                                        width: 1.0,
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(top: 5.0, left: 10.0),
                                          child: Text(
                                            "Pengaturan Akun",
                                            textAlign: TextAlign.left,
                                            style:  GoogleFonts.poppins(
                                              color: Color(0xFF000000),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                        Divider(
                                          thickness: 1.0,
                                          color: const Color(0xFF000000)
                                              .withOpacity(0.10),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              // top: 7.0,
                                              left: 10.0,
                                              right: 8.0),
                                          child: Row(
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  "Ubah Password Akun",
                                                  textAlign: TextAlign.left,
                                                  style:  GoogleFonts.poppins(
                                                    color: Color(0xFF000000),
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w400,
                                                  ),
                                                ),
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            const UbahPassword()),
                                                  );
                                                },
                                                child: const Icon(
                                                  Icons
                                                      .keyboard_double_arrow_right,
                                                  color: Color.fromARGB(
                                                      255, 135, 131, 155),
                                                ),
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
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Column(
                              children: [
                                Center(
                                  child: Container(
                                    width: 320,
                                    height: 80,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFFFFFFF),
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                        color: const Color(0xFF000000)
                                            .withOpacity(0.15),
                                        width: 1.0,
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(top: 5.0, left: 10.0),
                                          child: Text(
                                            "Laporan Saya",
                                            textAlign: TextAlign.left,
                                            style:  GoogleFonts.poppins(
                                              color: Color(0xFF000000),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                        Divider(
                                          thickness: 1.0,
                                          color: const Color(0xFF000000)
                                              .withOpacity(0.10),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              // top: 7.0,
                                              left: 10.0,
                                              right: 8.0),
                                          child: Row(
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  "Jumlah Laporan Saya",
                                                  textAlign: TextAlign.left,
                                                  style:  GoogleFonts.poppins(
                                                    color: Color(0xFF000000),
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w400,
                                                  ),
                                                ),
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            const DaftarPelaporanScreen()),
                                                  );
                                                },
                                                child: const Icon(
                                                  Icons
                                                      .keyboard_double_arrow_right,
                                                  color: Color.fromARGB(
                                                      255, 135, 131, 155),
                                                ),
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
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Column(
                              children: [
                                Center(
                                  child: Container(
                                    width: 320,
                                    height: 166,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFFFFFFF),
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                        color: const Color(0xFF000000)
                                            .withOpacity(0.15),
                                        width: 1.0,
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                         Padding(
                                          padding: EdgeInsets.only(top: 5.0, left: 10.0),
                                          child: Text(
                                            "Aplikasi BiKing",
                                            textAlign: TextAlign.left,
                                            style: GoogleFonts.poppins(
                                              color: Color(0xFF000000),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                        Divider(
                                          thickness: 1.0,
                                          color: const Color(0xFF000000)
                                              .withOpacity(0.10),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              // top: 7.0,
                                              left: 10.0,
                                              right: 8.0),
                                          child: Row(
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  "Tentang Kami",
                                                  textAlign: TextAlign.left,
                                                  style: GoogleFonts.poppins(
                                                    color: Color(0xFF000000),
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w400,
                                                  ),
                                                ),
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            const AboutUsScreen()),
                                                  );
                                                },
                                                child: const Icon(
                                                  Icons
                                                      .keyboard_double_arrow_right,
                                                  color: Color.fromARGB(
                                                      255, 135, 131, 155),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 7.0,
                                              left: 10.0,
                                              right: 8.0),
                                          child: Row(
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  "Privasi",
                                                  textAlign: TextAlign.left,
                                                  style: GoogleFonts.poppins(
                                                    color: Color(0xFF000000),
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w400,
                                                  ),
                                                ),
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            const PrivacyScreens()),
                                                  );
                                                },
                                                child: const Icon(
                                                  Icons
                                                      .keyboard_double_arrow_right,
                                                  color: Color.fromARGB(
                                                      255, 135, 131, 155),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 7.0,
                                              left: 10.0,
                                              right: 8.0),
                                          child: Row(
                                            children: [
                                               Expanded(
                                                child: Text(
                                                  "Bantuan",
                                                  textAlign: TextAlign.left,
                                                  style: GoogleFonts.poppins(
                                                    color: Color(0xFF000000),
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w400,
                                                  ),
                                                ),
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            const Bantuan()),
                                                  );
                                                },
                                                child: const Icon(
                                                  Icons
                                                      .keyboard_double_arrow_right,
                                                  color: Color.fromARGB(
                                                      255, 135, 131, 155),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 7.0,
                                              left: 10.0,
                                              right: 8.0),
                                          child: Row(
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  "Hubungi Kami",
                                                  textAlign: TextAlign.left,
                                                  style: GoogleFonts.poppins(
                                                    color: Color(0xFF000000),
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w400,
                                                  ),
                                                ),
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            const HubungiKami()),
                                                  );
                                                },
                                                child: const Icon(
                                                  Icons
                                                      .keyboard_double_arrow_right,
                                                  color: Color.fromARGB(
                                                      255, 135, 131, 155),
                                                ),
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
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Column(
                              children: [
                                Center(
                                  child: Container(
                                    width: 320,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFFFFFFF),
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                        color: const Color(0xFF000000)
                                            .withOpacity(0.15),
                                        width: 1.0,
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              // top: 7.0,
                                              left: 10.0,
                                              right: 8.0),
                                          child: Row(
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  "Keluar",
                                                  textAlign: TextAlign.left,
                                                  style: GoogleFonts.poppins(
                                                    color: Color(0xFF000000),
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w500,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.only(
                                                        left: 194.0),
                                                child: GestureDetector(
                                                  onTap: () {
                                                    showDialog(
                                                      context: context,
                                                      builder: (BuildContext
                                                          context) {
                                                        return AlertDialog(
                                                          title: const Text(
                                                              "Keluar dari Akun"),
                                                          content: const Text(
                                                              "Kamu yakin ingin keluar dari akun ini?"),
                                                          actions: [
                                                            TextButton(
                                                              child:
                                                                  const Text(
                                                                      "Batal"),
                                                              onPressed: () {
                                                                Navigator.of(
                                                                        context)
                                                                    .pop();
                                                              },
                                                            ),
                                                            TextButton(
                                                              child: const Text(
                                                                  "Keluar"),
                                                              onPressed: () {
                                                                // Lakukan proses keluar dari aplikasi di sini
                                                                logOut();
                                                              },
                                                            ),
                                                          ],
                                                        );
                                                      },
                                                    );
                                                  },
                                                  child: const Icon(
                                                    Icons
                                                        .arrow_circle_right_outlined,
                                                    color: Color.fromARGB(
                                                        255, 135, 131, 155),
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
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: 90,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/footerprofil.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          ],
        ),
     ),
  );
  }
  }