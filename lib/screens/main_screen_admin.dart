import 'package:biking_app/screens/home_screen/home_screen.dart';
import 'package:biking_app/screens/pelaporan/guru/daftar_pelaporan_guru.dart';
import 'package:biking_app/screens/profil/guru/profil_guru.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';


class MainScreenAdmin extends StatefulWidget {
  const MainScreenAdmin({super.key});
  static String routeName = 'MainScreenAdmin';

  @override
  State<MainScreenAdmin> createState() => _MainScreenAdminState();
}

class _MainScreenAdminState extends State<MainScreenAdmin> {
  int _pageIndex = 1;

  final List<Widget> _pageList = [
    const ProfilguruScreen(),
    const HomeScreen(),
    const DaftarPelaporanScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        index: _pageIndex,
        onTap: (value) {
          setState(() {
            _pageIndex = value;
          });
        },
        items: const <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.person, color: Colors.white),
              Text('Profile',
                  style: TextStyle(color: Colors.white, fontSize: 9)),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.home, color: Colors.white),
              Text('Home', style: TextStyle(color: Colors.white, fontSize: 9)),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.report, color: Colors.white),
              Text(
                'Report',
                style: TextStyle(color: Colors.white, fontSize: 9),
              ),
            ],
          ),
        ],
        backgroundColor: Colors.white,
        color: Colors.blue,
        buttonBackgroundColor: Colors.blue,
        height: 50.0,
        animationDuration: const Duration(milliseconds: 300),
      ),
      body: _pageList[_pageIndex],
    );
  }
}
