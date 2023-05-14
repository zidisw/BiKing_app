import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class Navbar extends StatefulWidget {

  final int currentPage;
  final ValueChanged<int> onNavigationItemSelected;

  const Navbar({super.key, required this.currentPage, required this.onNavigationItemSelected});


  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
        items: const <Widget> [
          Icon(Icons.person, color: Colors.white, ),
          Icon(Icons.home, color: Colors.white),
          Icon(Icons.report, color: Colors.white),
        ],
        
        backgroundColor: Colors.white,
        color: Colors.blue,
        buttonBackgroundColor: Colors.blue,
        height: 50.0,
        animationDuration: const Duration(milliseconds: 300),

        onTap: widget.onNavigationItemSelected,
        index: widget.currentPage,
    );
  }
  
}
