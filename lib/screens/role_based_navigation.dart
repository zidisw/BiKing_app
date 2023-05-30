import 'package:biking_app/screens/main_screen_admin.dart';
import 'package:biking_app/screens/main_screen_guru.dart';
import 'package:biking_app/screens/main_screen_siswa.dart';
import 'package:biking_app/screens/main_screen_wali.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RoleBasedNavigation extends StatelessWidget {
  const RoleBasedNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    User? currentUser = FirebaseAuth.instance.currentUser;

    if (currentUser != null) {
      String? role = currentUser.photoURL;

      switch (role) {
        case 'admin':
          return const MainScreenAdmin();
        case 'guru':
          return const MainScreenGuru();
        case 'siswa':
          return const MainScreenSiswa();
        case 'wali_kelas':
          return const MainScreenWali();
        default:
          return Container(); // Tambahkan penanganan jika peran tidak dikenali
      }
    } else {
      return Container(); // Tambahkan penanganan jika pengguna tidak terautentikasi
    }
  }
}
