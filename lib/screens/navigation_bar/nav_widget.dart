// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class NavigationWidget extends StatefulWidget {
  final int initialIndex;
  final List<Widget> pages;
  final Function(int) onItemSelected;

  const NavigationWidget({super.key, this.initialIndex = 0, required this.pages, required this.onItemSelected});

  @override
  _NavigationWidgetState createState() => _NavigationWidgetState();
}

class _NavigationWidgetState extends State<NavigationWidget> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: widget.pages,
        onPageChanged: (index) {
          setState(() {
          });
          widget.onItemSelected(index);
        },
      ),
      bottomNavigationBar: CurvedNavigationBar(
        items: const <Widget> [
          Icon(Icons.person, color: Colors.white),
          Icon(Icons.home, color: Colors.white),
          Icon(Icons.report, color: Colors.white),
        ],
        
        backgroundColor: Colors.white,
        color: Colors.blue,
        buttonBackgroundColor: Colors.blue,
        height: 50.0,
        animationDuration: const Duration(milliseconds: 300),
        onTap: (index) {
          setState(() {
          });
          widget.onItemSelected(index);
        },
      ),
    );
  }
}
