import 'package:flutter/material.dart';
import 'package:flutter_biking/pelaporan.dart';
import 'package:flutter_biking/profil_page.dart';

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
      MaterialPageRoute(builder: (context) => ProfilePage()),
    );
  }
    if (index == 2) { // Jika item yang diklik adalah "Pelaporan"
        _nextPage(); // Panggil fungsi _nextPage
      }
    }
    void _nextPage() {
      Navigator.push( // Navigasi ke halaman selanjutnya di sini
        context,
        MaterialPageRoute(builder: (context) => Pelaporan()),
      );
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tentang Kami'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0), // menambahkan padding sebesar 16px
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 10),
            Image.asset(
              'assets/tentang_kami.png',
              height: 300,
              width: 300,
            ),
            SizedBox(height: 10),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec fringilla quam eu faci lisis mollis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec fringilla quam eu faci lisis mollis. ',
              style: TextStyle(fontFamily: 'Poppins', fontSize: 15),
              textAlign: TextAlign.center, // membuat text ke tengah
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
