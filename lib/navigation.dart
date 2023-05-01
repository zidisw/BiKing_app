import 'package:flutter/material.dart';
import 'package:flutter_biking/long_page.dart';
import 'package:flutter_biking/pelaporan.dart';
import 'package:flutter_biking/profil_page.dart';



class Navigation extends StatefulWidget {
  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _selectedIndex = 0;
  List<Widget> _pages = [
    LongPage(),
    ProfilePage(),
    Pelaporan(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.note_add_outlined),
            label: 'Pelaporan',
          ),
        ],
      ),
    );
  }
}
