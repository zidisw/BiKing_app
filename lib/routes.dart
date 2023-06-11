import 'package:biking_app/screens/detail_report_screen/detail_report_screen_ABSEN.dart';
import 'package:biking_app/screens/pelaporan/siswa/report_screen_SISWA_ADD.dart';
import 'package:biking_app/screens/pelaporan/siswa/report_screen_SISWA_LIST.dart';
import 'package:biking_app/screens/login_screen/login_screen.dart';
import 'package:biking_app/screens/home_screen/widgets/Informationbk_screen.dart';
import 'package:biking_app/screens/main_screen_admin.dart';
import 'package:biking_app/screens/main_screen_guru.dart';
import 'package:biking_app/screens/main_screen_siswa.dart';
import 'package:biking_app/screens/main_screen_wali.dart';
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
  SplashScreen.routeName: (context) => const SplashScreen(),
  SplashScreen2.routeName: (context) => const SplashScreen2(),
  LoginScreen.routeName: (context) => const LoginScreen(),
  MainScreen.routeName: (context) => const MainScreen(),
  MainScreenAdmin.routeName: (context) => const MainScreenAdmin(),
  MainScreenGuru.routeName: (context) => const MainScreenGuru(),
  MainScreenWali.routeName: (context) => const MainScreenWali(),
  MainScreenSiswa.routeName: (context) => const MainScreenSiswa(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  AboutUsScreen.routeName: (context) => const AboutUsScreen(),
  InformasibkScreen.routeName: (context) => const InformasibkScreen(),
  MyProfileScreen.routeName: (context) => const MyProfileScreen(),
  ReportsScreen.routeName: (context) => const ReportsScreen(),
  DateSheetScreen.routeName: (context) => const DateSheetScreen(),
  SiswaReportsScreen.routeName: (context) => const SiswaReportsScreen(),
  SiswaReportsScreen.routeName: (context) => const SiswaReportsScreen(),
  AttendanceScreen.routeName: (context) => const AttendanceScreen(),
  AddReportScreen.routeName: (context) => const AddReportScreen(),
  DaftarPelaporanSiswaScreen.routeName: (context) => const DaftarPelaporanSiswaScreen(),
};
