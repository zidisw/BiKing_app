import 'package:flutter/material.dart';
import 'package:flutter_biking/screens/log_in/welcome_screen.dart';
import 'screens/log_in/splash_screen.dart';
import 'screens/log_in/login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplikasi Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/login': (context) => WelcomeScreen()
      },
    );
  }
}

