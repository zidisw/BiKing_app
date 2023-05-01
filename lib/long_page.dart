import 'package:flutter/material.dart';
import 'package:flutter_biking/long_page2.dart';
import 'package:flutter_biking/pelaporan.dart';
import 'package:flutter_biking/profil_page.dart';
import 'package:flutter_biking/tentang_kami.dart';

class LongPage extends StatefulWidget {
  @override
  _LongPageState createState() => _LongPageState();
}

class _LongPageState extends State<LongPage> {
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

    if (index == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ProfilePage()),
      );
    }
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
      body: SingleChildScrollView(
        child: SafeArea(
          child: Stack(children: [
            Align(
              alignment: Alignment.topCenter,
              child: Image.asset(
                'assets/elemen_2.png',
                fit: BoxFit.cover,
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                child: Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 180,
                        ),
                        const Text(
                          "Semangat Pagi!",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Color(0xFF7466CC),
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ]),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  SizedBox(
                    height: 180,
                  ),
                  Stack(
                    children: [
                      Container(
                        alignment: Alignment.topCenter,
                        width: 350,
                        height: 350,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/awal.png",
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                child: Padding(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 520,
                        ),
                        const Text(
                          "Lakukan konsultasi dengan Guru BK kapan saja dan di mana saja!",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ]),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  SizedBox(
                    height: 540,
                  ),
                  Stack(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LongPage2()),
                          );
                        },
                        child: Container(
                          alignment: Alignment.topCenter,
                          width: 500,
                          height: 200,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                "assets/gambar_1.png",
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  SizedBox(
                    height: 660,
                  ),
                  Stack(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TentangKami()),
                          );
                        },
                        child: Container(
                          alignment: Alignment.topCenter,
                          width: 500,
                          height: 200,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                "assets/gambar_2.png",
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ]),
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
