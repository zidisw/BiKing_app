import 'package:flutter/material.dart';
import 'package:flutter_biking/buka_pelaporan.dart';
import 'package:flutter_biking/edit_password.dart';
import 'package:flutter_biking/pelaporan.dart';
import 'package:flutter_biking/tentang_kami.dart';
import 'package:line_icons/line_icons.dart';



class ProfileLong extends StatefulWidget {
  @override
  _ProfileLongState createState() => _ProfileLongState();
}

class _ProfileLongState extends State<ProfileLong> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    Text('Beranda'),
    Text('Profil'),
    Text('Pelaporan'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    if (index == 2) {
      // Jika item yang diklik adalah "Pelaporan"
      _nextPage(); // Panggil fungsi _nextPage
    }
  }

  void _nextPage() {
    Navigator.push(
      // Navigasi ke halaman selanjutnya di sini
      context,
      MaterialPageRoute(builder: (context) => Pelaporan()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil'),
      ),
      backgroundColor: Color(0xFFFFFFFF),
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: Color(0xFF000000).withOpacity(0.16),
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
                                  padding: const EdgeInsets.only(left: 6.0),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        'assets/siswa.png',
                                        width: 80,
                                        height: 80,
                                      ),
                                      SizedBox(
                                        height: 30,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 20.0),
                                              child: Text(
                                                "Ahmad",
                                                style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  color: Color(0xFF0579CC),
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              )),
                                          SizedBox(height: 10),
                                          Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 20.0),
                                              child: Text(
                                                "Siswa XII MIPA 1",
                                                style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  color: Color(0xFF584D99),
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
                  SizedBox(
                    height: 140,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: Color(0xFF000000).withOpacity(0.16),
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
                              Padding(
                                padding: const EdgeInsets.only(left: 6.0),
                                child: Text(
                                  "Pengaturan Akun",
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF584D99),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 14,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 6.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      'Ubah kata sandi',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color:
                                            Color.fromARGB(255, 135, 131, 155),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 125.0),
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    UbahPassword()),
                                          );
                                        },
                                        child: Icon(
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
                  SizedBox(
                    height: 230,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: Color(0xFF000000).withOpacity(0.16),
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
                              Padding(
                                padding: const EdgeInsets.only(left: 6.0),
                                child: Text(
                                  "Interaksi Saya",
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF584D99),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 14,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 6.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      'Jumlah Interaksi Saya',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color:
                                            Color.fromARGB(255, 135, 131, 155),
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
                                                    BukaPelaporan()),
                                          );
                                        },
                                        child: Icon(
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
                  SizedBox(
                    height: 320,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: Color(0xFF000000).withOpacity(0.16),
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
                              Padding(
                                padding: const EdgeInsets.only(left: 6.0),
                                child: Text(
                                  "Aplikasi BiKing",
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF584D99),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                             Padding(
                                padding: const EdgeInsets.only(left: 6.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      'Tentang Kami',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color:
                                            Color.fromARGB(255, 135, 131, 155),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 144.0),
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                   TentangKami()),
                                          );
                                        },
                                        child: Icon(
                                          Icons.keyboard_double_arrow_right,
                                          color: Color.fromARGB(
                                              255, 135, 131, 155),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 11,
                              ),
                             Padding(
                                padding: const EdgeInsets.only(left: 6.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      'Privasi',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color:
                                            Color.fromARGB(255, 135, 131, 155),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 204.0),
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    UbahPassword()),
                                          );
                                        },
                                        child: Icon(
                                          Icons.keyboard_double_arrow_right,
                                          color: Color.fromARGB(
                                              255, 135, 131, 155),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 11,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 6.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      'Bantuan',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color:
                                            Color.fromARGB(255, 135, 131, 155),
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
                                                    UbahPassword()),
                                          );
                                        },
                                        child: Icon(
                                          Icons.keyboard_double_arrow_right,
                                          color: Color.fromARGB(
                                              255, 135, 131, 155),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 11,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 6.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      'Hubungi Kami',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color:
                                            Color.fromARGB(255, 135, 131, 155),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 143.0),
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    UbahPassword()),
                                          );
                                        },
                                        child: Icon(
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
                  SizedBox(
                    height: 518,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: Color(0xFF000000).withOpacity(0.16),
                        width: 1.0,
                      ),
                    ),
                    width: 300,
                    height: 50,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 3.0),
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
      TextButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text("Konfirmasi Keluar"),
                content: Text("Yakin ingin keluar dari BiKing?"),
                actions: [
                  TextButton(
                    child: Text("Batal"),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  TextButton(
                    child: Text("Keluar"),
                    onPressed: () {
                      // Fungsi untuk keluar dari aplikasi
                    },
                  ),
                ],
              );
            },
          );
        },
        child: Text(
          'Log Out',
          style: TextStyle(
            fontFamily: 'Poppins',
            color: Color.fromARGB(255, 135, 131, 155),
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      GestureDetector(
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text("Konfirmasi Keluar"),
                content: Text("Yakin ingin keluar dari BiKing?"),
                actions: [
                  TextButton(
                    child: Text("Batal"),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  TextButton(
                    child: Text("Keluar"),
                    onPressed: () {
                      // Fungsi untuk melakukan aksi pada icon arrow
                    },
                  ),
                ],
              );
            },
          );
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: Icon(
            Icons.arrow_circle_right_outlined,
            color: Color.fromARGB(255, 135, 131, 155),
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
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.note_alt_outlined),
            label: 'Pelaporan',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}
