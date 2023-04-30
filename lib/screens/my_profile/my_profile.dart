import 'package:biking_app/constants.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../home_screen/home_screen.dart';
import '../navigation_bar/nav_bar.dart';
import '../reports_screen/reports_screen.dart';
import 'my_profile_long.dart';

class MyProfileScreen extends StatefulWidget {
  const MyProfileScreen({Key? key}) : super(key: key);
  static String routeName = 'MyProfileScreen';

  @override
  _MyProfileScreenState createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
  int _currentPage = 0;

  void _onNavigationItemSelected(int index) {
    setState(() {
      _currentPage = index;
    });
  
  if (index == 0) {
      Navigator.pushReplacementNamed(context, MyProfileScreen.routeName);
    } else if (index == 1) {
      Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    } else if (index == 2) {
      Navigator.pushReplacementNamed(context, ReportsScreen.routeName);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('Profil'),
        actions: [
          PopupMenuButton(
            onSelected: (result) {
              if (result == 'Halaman Selanjutnya') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileLong()),
                );
              }
            },
            itemBuilder: (BuildContext context) => [
              PopupMenuItem(
                value: 'Halaman Selanjutnya',
                child: Text('Profil Siswa'),
              ),
            ],
          ),
        ],
      ),
      backgroundColor: Color(0xFFFFFFFF),
      body: SingleChildScrollView(
        
        child: Stack(
          children: [
            
            Align(
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Stack(
                    children: [
                      Container(
                        alignment: Alignment.topCenter,
                        width: 130,
                        height: 150,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              "assets/images/jid1.png",
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Image.asset(
                          "assets/images/addphoto.png",
                          width: 30,
                          height: 30,
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 180,
                      ),
                      const Text(
                        "Info Profil",
                        style: TextStyle(
                          color: Color(0xFF0579CC),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ]),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  SizedBox(
                    height: 210,
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
                    width: 335,
                    height: 60,
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
                                  "Nama",
                                  style: TextStyle(
                                    color: Color(0xFF584D99),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 6.0),
                                child: Text(
                                  "Ahmad",
                                  style: TextStyle(
                                    color: Color(0xFF584D99),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300,
                                  ),
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
                    height: 280,
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
                    width: 335,
                    height: 60,
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
                                  "Nomor HP",
                                  style: TextStyle(
                                    color: Color(0xFF584D99),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 13,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 6.0),
                                child: Text(
                                  "082123456789",
                                  style: TextStyle(
                                    color: Color(0xFF584D99),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300,
                                  ),
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
                    height: 350,
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
                    width: 335,
                    height: 60,
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
                                  "Tanggal Lahir",
                                  style: TextStyle(
                                    color: Color(0xFF584D99),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 13,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 6.0),
                                child: Text(
                                  "13 02 2005",
                                  style: TextStyle(
                                    color: Color(0xFF584D99),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300,
                                  ),
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
                    height: 420,
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
                    width: 335,
                    height: 60,
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
                                  "Kelas",
                                  style: TextStyle(
                                    color: Color(0xFF584D99),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 13,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 6.0),
                                child: Text(
                                  "XII MIPA 1",
                                  style: TextStyle(
                                    color: Color(0xFF584D99),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300,
                                  ),
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
                    height: 490,
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
                    width: 335,
                    height: 60,
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
                                  "NIS",
                                  style: TextStyle(
                                    color: Color(0xFF584D99),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 13,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 6.0),
                                child: Text(
                                  "6656",
                                  style: TextStyle(
                                    color: Color(0xFF584D99),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300,
                                  ),
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
                    height: 560,
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
                    width: 335,
                    height: 60,
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
                                  "NISN",
                                  style: TextStyle(
                                    color: Color(0xFF584D99),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 13,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 6.0),
                                child: Text(
                                  "1234567890",
                                  style: TextStyle(
                                    color: Color(0xFF584D99),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300,
                                  ),
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
      bottomNavigationBar: Navbar(
        currentPage: _currentPage,
        onNavigationItemSelected: _onNavigationItemSelected,
      ),
    );
  }
}