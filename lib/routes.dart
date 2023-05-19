import 'package:biking_app/screens/detail_report_screen/detail_report_screen_TEST.dart';
import 'package:biking_app/screens/login_screen/login_screen.dart';
import 'package:biking_app/screens/home_screen/widgets/Informationbk_screen.dart';
import 'package:biking_app/screens/splash_screen/splash_screen.dart';
import 'package:biking_app/screens/splash_screen/splash_screen2.dart';
import 'package:flutter/cupertino.dart';
import 'package:biking_app/screens/main_screen.dart';
import 'package:biking_app/screens/penanganan_siswa/siswa_reports_screen.dart';
import 'package:biking_app/screens/reports_screen/reports_screen.dart';
import 'package:biking_app/screens/datesheet_screen/datesheet_screen.dart';
import 'package:biking_app/screens/home_screen/home_screen.dart';
import 'package:biking_app/screens/my_profile/my_profile.dart';
import 'package:biking_app/screens/home_screen/widgets/aboutus_screen.dart';

Map<String, WidgetBuilder> routes = {
  //all screens will be registered here like manifest in android
  SplashScreen.routeName: (context) => SplashScreen(),
  SplashScreen2.routeName: (context) => SplashScreen2(),
  LoginScreen.routeName: (context) => LoginScreen(),
  MainScreen.routeName: (context) => MainScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  AboutUsScreen.routeName: (context) => AboutUsScreen(),
  InformasibkScreen.routeName: (context) => InformasibkScreen(),
  MyProfileScreen.routeName: (context) => MyProfileScreen(),
  ReportsScreen.routeName: (context) => ReportsScreen(),
  DateSheetScreen.routeName: (context) => DateSheetScreen(),
  SiswaReportsScreen.routeName: (context) => SiswaReportsScreen(),
  ReportScreen.routeName: (context) => ReportScreen()
};
