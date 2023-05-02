import 'package:flutter/material.dart';
import 'package:my_app/screen/splash/welcome_screen.dart';

class BikingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Biking',
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFF3D8ADFF), Color(0xFF30697FF)],
            ),
          ),
          child: Center(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WelcomeScreen()),
                );
              },
              child: Image.asset(
                'asset/image/biking.png',
                width: 200,
                height: 400,
              ),
            ),
          ),
        ),
      ),
    );
  }
}