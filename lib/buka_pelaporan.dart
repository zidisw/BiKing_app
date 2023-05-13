import 'package:flutter/material.dart';
import 'package:flutter_biking/buat_laporan.dart';
import 'package:flutter_biking/edit_laporan.dart';
import 'package:flutter_biking/isi_laporan.dart';
import 'package:flutter_biking/laporan_bulanan_wakel.dart';
import 'package:flutter_biking/pelaporan.dart';

class BukaPelaporan extends StatefulWidget {
  @override
  _BukaPelaporanState createState() => _BukaPelaporanState();
}

class _BukaPelaporanState extends State<BukaPelaporan> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    Text('Beranda'),
    Text('Profil'),
    Text('Pengaturan'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Prelaporan'),
      ),
      backgroundColor: Color(0xFFFFFFFF),
      body: SafeArea(
        child: Stack(
          children: [
            // Align(
            //         alignment: Alignment.topCenter,
            //         child: Container(
            //           padding: EdgeInsets.symmetric(vertical: 0, horizontal: 41),
            //           decoration: BoxDecoration(
            //             color: Color(0xFF38ACFF),
            //           ),
            //           width: double.infinity,
            //           height: 75,
            //           child: Row(
            //             crossAxisAlignment: CrossAxisAlignment.center,
            //             children: [
            //               Image.asset(
            //                 'assets/Back.png',
            //                 width: 20,
            //                 height: 20,
            //               ),
            //               SizedBox(
            //                 width: 10,
            //               ),
            //               const Text(
            //                 "Laporan Masalah",
            //                 style: TextStyle(
            //                   color: Color(0xFFFFFFFF),
            //                   fontSize: 20,
            //                   fontWeight: FontWeight.w600,
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ),
            //       ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          "Daftar Laporan Masalah",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Color(0xFF0579CC),
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      )
                    ]),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  SizedBox(
                    height: 60,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => IsiLaporan()),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: Color(0xFF000000).withOpacity(0.16),
                          width: 1.0,
                        ),
                      ),
                      width: 350,
                      height: 97,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 2.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 3.0),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        'assets/laporan.png',
                                        width: 90,
                                        height: 90,
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 3.0),
                                            child: Text(
                                              "7 Maret 2023",
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 7),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 3.0),
                                            child: Text(
                                              "Diproses",
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 14,
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 80.0),
                                child: Column(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        // fungsi yang dijalankan ketika gambar edit ditekan
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  EditLaporan()),
                                        );
                                      },
                                      child: Image.asset(
                                        'assets/edit.png',
                                        width: 45,
                                        height: 45,
                                      ),
                                    ),
                                    SizedBox(height: 2),
                                    GestureDetector(
                                      onTap: () {
                                        // fungsi yang dijalankan ketika gambar delete ditekan
                                        showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return AlertDialog(
                                              title: Text("Konfirmasi"),
                                              content: Text(
                                                  "Apakah Anda yakin ingin menghapus laporan ini?"),
                                              actions: [
                                                TextButton(
                                                  child: Text("Ya"),
                                                  onPressed: () {
                                                    // fungsi yang dijalankan ketika tombol "Ya" pada dialog diklik
                                                    Navigator.pop(context);
                                                    // TODO: tambahkan kode untuk menghapus laporan dari database atau sumber data lainnya
                                                  },
                                                ),
                                                TextButton(
                                                  child: Text("Tidak"),
                                                  onPressed: () {
                                                    // fungsi yang dijalankan ketika tombol "Tidak" pada dialog diklik
                                                    Navigator.pop(context);
                                                  },
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                      },
                                      child: Image.asset(
                                        'assets/delete.png',
                                        width: 45,
                                        height: 45,
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
                  ),
                ],
              ),
            ),

            Align(
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  SizedBox(
                    height: 165,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => IsiLaporan()),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: Color(0xFF000000).withOpacity(0.16),
                          width: 1.0,
                        ),
                      ),
                      width: 350,
                      height: 97,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 2.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 3.0),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        'assets/laporan.png',
                                        width: 90,
                                        height: 90,
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 3.0),
                                            child: Text(
                                              "2 Maret 2023",
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 7),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 3.0),
                                            child: Text(
                                              "Diproses",
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 14,
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 80.0),
                                child: Column(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        // fungsi yang dijalankan ketika gambar edit ditekan
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  EditLaporan()),
                                        );
                                      },
                                      child: Image.asset(
                                        'assets/edit.png',
                                        width: 45,
                                        height: 45,
                                      ),
                                    ),
                                    SizedBox(height: 2),
                                    GestureDetector(
                                      onTap: () {
                                        // fungsi yang dijalankan ketika gambar delete ditekan
                                        showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return AlertDialog(
                                              title: Text("Konfirmasi"),
                                              content: Text(
                                                  "Apakah Anda yakin ingin menghapus laporan ini?"),
                                              actions: [
                                                TextButton(
                                                  child: Text("Ya"),
                                                  onPressed: () {
                                                    // fungsi yang dijalankan ketika tombol "Ya" pada dialog diklik
                                                    Navigator.pop(context);
                                                    // TODO: tambahkan kode untuk menghapus laporan dari database atau sumber data lainnya
                                                  },
                                                ),
                                                TextButton(
                                                  child: Text("Tidak"),
                                                  onPressed: () {
                                                    // fungsi yang dijalankan ketika tombol "Tidak" pada dialog diklik
                                                    Navigator.pop(context);
                                                  },
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                      },
                                      child: Image.asset(
                                        'assets/delete.png',
                                        width: 45,
                                        height: 45,
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LaporanBulanan()),
          );
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
