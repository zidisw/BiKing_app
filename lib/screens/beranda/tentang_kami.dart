import 'package:flutter/material.dart';
import 'package:flutter_biking/screens/pelaporan/guru/pelaporan_guru.dart';
import 'package:flutter_biking/screens/pelaporan/wali_kelas/pelaporan_wakel.dart';



class TentangKami extends StatefulWidget {
  @override
  _TentangKami createState() => _TentangKami();
}

class _TentangKami extends State<TentangKami> {
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
        MaterialPageRoute(builder: (context) => PelaporanWali()),
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
      MaterialPageRoute(builder: (context) => PelaporanScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tentang Kami'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 30, left: 30),
                child: Align(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                        alignment: Alignment.topCenter,
                        width: 300,
                        height: 230,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/image/tentang_kami.png",
                            ),
                          ),
                        ),
                      ),
                      const Text(
                        "BiKing adalah aplikasi bimbingan konseling untuk siswa SMA. Aplikasi ini memungkinkan membuat pelaporan yang dibuat oleh guru mata pelajaran, guru wali kelas, atau siswa yang dipilih dan diteruskan kepada guru BK yang dipilih. Dalam BiKing, tim kami berkomitmen untuk memberikan layanan bimbingan konseling yang berkualitas tinggi dan ramah siswa, serta menjaga kerahasiaan informasi dari setiap siswa yang menggunakan layanan kami. ",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xFF000000),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: 60,
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: SizedBox(
                  width: 400,
                  height: 95,
                  child: Image.asset(
                    'assets/image/footerberanda.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
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
