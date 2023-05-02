import 'package:flutter/material.dart';
import 'package:my_app/screen/beranda/beranda_screen.dart';
import 'package:my_app/screen/profil/profilguru_screen.dart';
import 'package:my_app/screen/pelaporan/pelaporan_screen.dart';

class TentangkamiScreen extends StatefulWidget {
  const TentangkamiScreen({super.key});

  @override
  State<TentangkamiScreen> createState() => _TentangkamiScreenState();
}

class _TentangkamiScreenState extends State<TentangkamiScreen> {
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
      // Jika item yang diklik adalah "Pelaporan"
      _nextPage(); // Panggil fungsi _nextPage
    }
  }

  void _nextPage() {
    Navigator.push(
      // Navigasi ke halaman selanjutnya di sini
      context,
      MaterialPageRoute(builder: (context) => TentangkamiScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tentang Kami'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      backgroundColor: Color(0xFFFFFFFF),
      body: SafeArea(
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
                          "asset/image/imagetk.png",
                        ),
                      ),
                    ),
                  ),
                  const Text(
                    "BiKing adalah aplikasi bimbingan konseling untuk siswa SMA. Aplikasi ini memungkinkan membuat pelaporan yang dibuat oleh guru mata pelajaran, guru wali kelas, atau siswa yang dipilih dan diteruskan kepada guru BK yang dipilih. Dalam BiKing, tim kami berkomitmen untuk memberikan layanan bimbingan konseling yang berkualitas tinggi dan ramah siswa, serta menjaga kerahasiaan informasi dari setiap siswa yang menggunakan layanan kami. ",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Color(0xFF000000),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 118,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Transform.scale(
                scale: 1.3,
                child: Container(
                  alignment: Alignment.bottomCenter,
                  width: double.infinity,
                  height: 79,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "asset/image/footerberanda.png",
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          // Positioned(
          //   bottom: 0,
          //   child: Transform.scale(
          //     scale: 1.3,
          //     child: Container(
          //       alignment: Alignment.bottomCenter,
          //       width: double.infinity,
          //       height: 160,
          //       decoration: BoxDecoration(
          //         image: DecorationImage(
          //           image: AssetImage("asset/image/footerberanda.png"),
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
        ],
      )),
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
