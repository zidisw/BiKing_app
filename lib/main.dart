import 'package:biking_app/routes.dart';
import 'package:biking_app/screens/splash_screen/splash_screen.dart';
import 'package:biking_app/theme.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

import 'screens/main_screen.dart';


Future <void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, device) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: CustomTheme().baseTheme,
        initialRoute: SplashScreen.routeName,
        routes: routes,
        home: MainScreen(),
      );
    });
  }
}




