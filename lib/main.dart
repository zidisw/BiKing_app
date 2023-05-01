import 'package:flutter/material.dart';
import 'package:flutter_biking/halaman_pembuka.dart';
import 'biking_app.dart';
import 'halaman_login.dart';

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
        '/': (context) => BikingApp(),
        '/login': (context) => HalamanPembuka()
      },
    );
  }
}

