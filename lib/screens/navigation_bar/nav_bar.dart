import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatefulWidget {
  final int currentIndex;
  final Function(int) onItemTapped;

  MyBottomNavigationBar({required this.currentIndex, required this.onItemTapped});

  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: widget.currentIndex,
      onTap: widget.onItemTapped,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.people),
          label: 'Profil',
          
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.report),
          label: 'Pelaporan',
        ),
      ],
    );
  }
}
