import 'package:flutter/material.dart';
import 'package:flutter_biking/buat_laporan.dart';
import 'package:flutter_biking/buka_pelaporan.dart';
import 'package:flutter_biking/navigation.dart';

class Pelaporan extends StatefulWidget {
  @override
  _PelaporanState createState() => _PelaporanState();
}

class _PelaporanState extends State<Pelaporan> {
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
  }
  void _navigateToNavigation() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Navigation()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pelaporan'),
      ),
      backgroundColor: Color(0xFFFFFFFF),
      body: SafeArea(
        child: 
        
        Stack(
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
                    height: 150,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 11.0, left: 3.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 3),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text(
                                  'Laporan Masalah',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 81, 154, 232),
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        'assets/lapor.png',
                                        width: 90,
                                        height: 90,
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
                                            child: ElevatedButton(
                                                onPressed: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            BukaPelaporan()),
                                                  );
                                                },
                                                style: ElevatedButton.styleFrom(
                                                    backgroundColor:
                                                        Colors.blue,
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 82,
                                                            vertical: 8),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15),
                                                    )),
                                                child: Text(
                                                  "Buka",
                                                  style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                    color: Color.fromARGB(
                                                        255, 255, 255, 255),
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                )),
                                          ),
                                          SizedBox(height: 5),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 20.0),
                                            child: ElevatedButton(
                                                onPressed: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            BuatLaporan()),
                                                  );
                                                },
                                                style: ElevatedButton.styleFrom(
                                                    backgroundColor:
                                                        Color.fromARGB(
                                                            255, 213, 5, 249),
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 40,
                                                            vertical: 8),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15),
                                                    )),
                                                child: Text(
                                                  "Buat Laporan Baru",
                                                  style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 255, 255, 255),
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                )),
                                          ),
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
