import 'package:biking_app/constants.dart';
import 'package:biking_app/routes.dart';
import 'package:biking_app/screens/main_screen.dart';
import 'package:biking_app/screens/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, device) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: kPrimaryColor),
        initialRoute: SplashScreen.routeName,
        routes: routes,
        home: const MainScreen(),
      );
    });
  }
}




