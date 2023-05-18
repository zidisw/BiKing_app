import 'package:flutter/material.dart';
import 'package:flutter_biking/screens/log_in/welcome_screen.dart';
import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Waktu tampilan SplashScreen
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => WelcomeScreen()),
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
              'assets/image/biking.png',
              width: 200,
              height: 400,
            ),
          ),
        ),
      ),
    );
  }
}
