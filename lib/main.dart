import 'package:biking_app/routes.dart';
import 'package:biking_app/screens/splash_screen/splash_screen.dart';
import 'package:biking_app/theme.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
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
      );
    });
  }
}




