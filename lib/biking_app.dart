import 'package:flutter/material.dart';
import 'package:flutter_biking/halaman_pembuka.dart';
import 'halaman_login.dart';

class BikingApp extends StatefulWidget {
  @override
  _BikingAppState createState() => _BikingAppState();
}

class _BikingAppState extends State<BikingApp> {
  @override
  void initState() {
    super.initState();
    // Waktu tampilan SplashScreen
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HalamanPembuka()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Biking',
      home: Material(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFF3D8ADFF), Color(0xFF30697FF)],
            ),
          ),
          child: Center(
            child: Image.asset(
              'assets/biking.png',
              width: 200,
              height: 400,
            ),
          ),
        ),
      ),
    );
  }
}
