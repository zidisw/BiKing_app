import 'package:biking_app/screens/home_screen/widgets/Informationbk_screen.dart';
import 'package:biking_app/screens/home_screen/widgets/aboutus_screen.dart';
import 'package:biking_app/screens/pelaporan/wali_kelas/laporan_bulanan_wakel.dart';
import 'package:biking_app/screens/profil/bantuan.dart';
import 'package:biking_app/screens/profil/edit_password.dart';
import 'package:biking_app/screens/profil/hubungi_kami.dart';
import 'package:flutter/material.dart';


class SettingWakel extends StatefulWidget {
  const SettingWakel({Key? key}) : super(key: key);
  static String routeName = 'SettingWakel';

  @override
  _SettingWakelState createState() => _SettingWakelState();
}

class _SettingWakelState extends State<SettingWakel> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil'),
      ),
      backgroundColor: const Color(0xFFFFFFFF),
      body: SafeArea(
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
                    width: 330,
                    height: 582,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 11.0, left: 3.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: const EdgeInsets.only(left: 11.0),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        'assets/images/wakel.png',
                                        width: 80,
                                        height: 80,
                                      ),
                                      const SizedBox(
                                        height: 30,
                                      ),
                                      const Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 20.0),
                                              child: Text(
                                                "Siti Rahma",
                                                style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  color: Color(0xFF0579CC),
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              )),
                                          SizedBox(height: 10),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 20.0),
                                              child: Text(
                                                "Wali Kelas XII MIPA 1",
                                                style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  color: Colors.black,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w300,
                                                ),
                                              )),
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
            Align(
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  const SizedBox(
                    height: 140,
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
                    width: 300,
                    height: 80,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 11.0, left: 3.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 6.0),
                                child: Text(
                                  "Pengaturan Akun",
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 14,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 6.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    const Text(
                                      'Ubah kata sandi',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color:
                                            Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 128.0),
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const UbahPassword()),
                                          );
                                        },
                                        child: const Icon(
                                          Icons.keyboard_double_arrow_right,
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
                    height: 230,
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
                    width: 300,
                    height: 80,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 11.0, left: 3.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 6.0),
                                child: Text(
                                  "Interaksi Saya",
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 14,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 6.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    const Text(
                                      'Jumlah Interaksi Saya',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color:
                                            Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 80.0),
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                   const LaporanBulanan()),
                                          );
                                        },
                                        child: const Icon(
                                          Icons.keyboard_double_arrow_right,
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
                    height: 320,
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
                    width: 300,
                    height: 190,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 11.0, left: 3.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 6.0),
                                child: Text(
                                  "Aplikasi BiKing",
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 6.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    const Text(
                                      'Tentang Kami',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color:
                                            Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 146.0),
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const AboutUsScreen()),
                                          );
                                        },
                                        child: const Icon(
                                          Icons.keyboard_double_arrow_right,
                                          color: Color.fromARGB(
                                              255, 135, 131, 155),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 11,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 6.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    const Text(
                                      'Privasi',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color:
                                           Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 205.0),
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                   const InformasibkScreen()),
                                          );
                                        },
                                        child: const Icon(
                                          Icons.keyboard_double_arrow_right,
                                          color: Color.fromARGB(
                                              255, 135, 131, 155),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 11,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 6.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    const Text(
                                      'Bantuan',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color:
                                            Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 188.0),
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                   const Bantuan()),
                                          );
                                        },
                                        child: const Icon(
                                          Icons.keyboard_double_arrow_right,
                                          color: Color.fromARGB(
                                              255, 135, 131, 155),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 11,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 6.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    const Text(
                                      'Hubungi Kami',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color:
                                            Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 142.0),
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const HubungiKami()),
                                          );
                                        },
                                        child: const Icon(
                                          Icons.keyboard_double_arrow_right,
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
                    height: 518,
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
                    width: 300,
                    height: 50,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 11.0, left: 3.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 6.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    const Text(
                                      'Log Out',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color:
                                            Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 194.0),
                                      child: GestureDetector(
                                        onTap: () {
                                          showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return AlertDialog(
                                                title: const Text(
                                                    "Keluar dari aplikasi"),
                                                content: const Text(
                                                    "Kamu Yakin Ingin Keluar dari BiKing?"),
                                                actions: [
                                                  TextButton(
                                                    child: const Text("Batal"),
                                                    onPressed: () {
                                                      Navigator.of(context)
                                                          .pop();
                                                    },
                                                  ),
                                                  TextButton(
                                                    child: const Text("Keluar"),
                                                    onPressed: () {
                                                      // Lakukan proses keluar dari aplikasi di sini
                                                      Navigator.of(context)
                                                          .pop();
                                                    },
                                                  ),
                                                ],
                                              );
                                            },
                                          );
                                        },
                                        child: const Icon(
                                          Icons.arrow_circle_right_outlined,
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
