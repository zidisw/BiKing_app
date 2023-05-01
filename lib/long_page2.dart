import 'package:flutter/material.dart';
import 'package:flutter_biking/pelaporan.dart';
import 'package:flutter_biking/profil_page.dart';

class LongPage2 extends StatefulWidget {
  @override
  _LongPageState2 createState() => _LongPageState2();
}

class _LongPageState2 extends State<LongPage2> {
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
      appBar: AppBar(
        title: Text('Informasi Seputar BK'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                child: Padding(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "Bimbingan dan Konseling SMA Negeri 16 Makassar",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Color.fromARGB(255, 64, 173, 251),
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
              child: Padding(
                padding: EdgeInsets.only(top: 70),
                child: Padding(
                    padding: EdgeInsets.only(left: 30, right: 30),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/video_profil.png',
                          height: 200,
                          width: 500,
                        )
                      ],
                    )),
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
                          height: 265,
                        ),
                        const Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec fringilla quam eu faci lisis mollis. Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
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
              alignment: Alignment.topLeft,
              child: Container(
                child: Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 375,
                        ),
                        const Text(
                          "Koordinator BK",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Color(0xFF367CFF),
                            fontSize: 16,
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
                    height: 360,
                  ),
                  Stack(
                    children: [
                      Container(
                        alignment: Alignment.topCenter,
                        width: 500,
                        height: 200,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/orang.png",
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
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 525,
                      ),
                      const Text(
                        "Bambang Mulyanto",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ]),
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
                          height: 555,
                        ),
                        const Text(
                          "'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec fringilla quam eu faci lisis mollis.'",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ]),
                ),
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
                          height: 620,
                        ),
                        const Text(
                          "Guru-guru BK",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Color(0xFF367CFF),
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ]),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Column(
                children: [
                  SizedBox(
                    height: 640,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Image.asset(
                            'assets/orang.png',
                            height: 130,
                            width: 180,
                          ),
                          SizedBox(height: 3), // mengatur jarak 10 pixel
                          Text(
                            'Yanto Udiani',
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.black,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset(
                            'assets/orang.png',
                            height: 130,
                            width: 180,
                          ),
                          SizedBox(height: 3), // mengatur jarak 10 pixel
                          Text(
                            'Antoni Jodi',
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.black,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(top: 70),
                child: Padding(
                    padding: EdgeInsets.only(left: 30, right: 30),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 730,
                        ),
                        Image.asset(
                          'assets/konsul.png',
                          height: 200,
                          width: 500,
                        )
                      ],
                    )),
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
                          height: 1020,
                        ),
                        const Text(
                          "Visi Misi Kami",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Color(0xFF367CFF),
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ]),
                ),
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
                          height: 1050,
                        ),
                        const Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec fringilla quam eu faci lisis mollis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec fringilla quam eu faci lisis mollis.",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ]),
                ),
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
                          height: 1155,
                        ),
                        const Text(
                          "Dokumentasi Kegiatan BK",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Color(0xFF367CFF),
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ]),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Column(
                children: [
                  SizedBox(
                    height: 1160,
                  ),
                  Stack(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/BK.JPG',
                            height: 200,
                            width: 180,
                          ),
                          SizedBox(width: 5),
                          Image.asset(
                            'assets/th.JPG',
                            height: 200,
                            width: 180,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                child: Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: InkWell(
                    onTap: () {
                      // definisikan aksi yang ingin dilakukan ketika teks diklik
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 1340,
                        ),
                        const Text(
                          "lihat selengkapnya >>",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Color(0xFF367CFF),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
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
