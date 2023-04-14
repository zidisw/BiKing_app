import 'package:biking_app/screens/login_screen/login_screen.dart';
import 'package:biking_app/screens/splash_screen/splash_screen.dart';
import 'package:biking_app/screens/splash_screen/splash_screen2.dart';
import 'package:flutter/cupertino.dart';
import 'screens/penanganan_siswa/siswa_reports_screen.dart';
import 'screens/reports_screen/reports_screen.dart';
import 'screens/datesheet_screen/datesheet_screen.dart';
import 'screens/fee_screen/fee_screen.dart';
import 'screens/home_screen/home_screen.dart';
import 'screens/my_profile/my_profile.dart';

Map<String, WidgetBuilder> routes = {
  //all screens will be registered here like manifest in android
  SplashScreen.routeName: (context) => SplashScreen(),
  SplashScreen2.routeName: (context) => SplashScreen2(),
  LoginScreen.routeName: (context) => LoginScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  MyProfileScreen.routeName: (context) => MyProfileScreen(),
  FeeScreen.routeName: (context) => FeeScreen(),
  ReportsScreen.routeName: (context) => ReportsScreen(),
  DateSheetScreen.routeName: (context) => DateSheetScreen(),
  SiswaReportsScreen.routeName: (context) => SiswaReportsScreen(),
};
