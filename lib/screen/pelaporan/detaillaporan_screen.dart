import 'package:flutter/material.dart';
import 'package:my_app/screen/beranda/beranda_screen.dart';
import 'package:my_app/screen/profil/profilguru_screen.dart';
import 'package:my_app/screen/pelaporan/pelaporan_screen.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DetaillaporanScreen extends StatefulWidget {
  const DetaillaporanScreen({super.key});

  @override
  State<DetaillaporanScreen> createState() => _DetaillaporanScreenState();
}

class _DetaillaporanScreenState extends State<DetaillaporanScreen> {
    int _currentIndex = 0;

  final List<Widget> _children = [
    BerandaScreen(),
    ProfilguruScreen(),
    PelaporanScreen(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}