// import 'package:flutter/material.dart';
// import 'package:my_app/screen/splash/splash_screen.dart';
// import 'package:my_app/screen/splash/welcome_screen.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context)
//   {
//     return MaterialApp(
//       title: 'Aplikasi Flutter',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       initialRoute: '/',
//       routes: {
//         '/': (context) => BikingApp(),
//         '/splash': (context) => const WelcomeScreen()
//       },
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:my_app/screen/beranda/tentangkami_screen.dart';
import 'package:my_app/screen/login/login_screen.dart';
import 'package:my_app/screen/kehadiran siswa/kehadiran_screen.dart';
import 'package:my_app/screen/profil/bantuan_screen.dart';
import 'package:my_app/screen/profil/profilguru_screen.dart';
import 'package:my_app/screen/profil/profilsiswa_screen.dart';
import 'package:my_app/screen/profil/setting_screen.dart';
import 'package:my_app/screen/splash/welcome_screen.dart';
import 'package:my_app/screen/beranda/informasibk_screen.dart';
import 'package:my_app/screen/pelaporan/pelaporan_screen.dart';
import 'package:my_app/screen/pelaporan/isipelaporan_screen.dart';

void main(List<String> args) {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //   return MaterialApp(
    //     debugShowCheckedModeBanner: false,
    //     home: LoginScreen(),
    //   );
    // }

    //     return MaterialApp(
    //     debugShowCheckedModeBanner: false,
    //     home: KehadiranScreen(),
    //   );
    // }

    //   return MaterialApp(
    //     debugShowCheckedModeBanner: false,
    //     home: ProfilguruScreen(),
    //   );
    // }

    //         return MaterialApp(
    //     debugShowCheckedModeBanner: false,
    //     home: ProfilsiswaScreen(),
    //   );
    // }

    //           return MaterialApp(
    //     debugShowCheckedModeBanner: false,
    //     home: WelcomeScreen(),
    //   );
    // }

    //   return MaterialApp(
    //     debugShowCheckedModeBanner: false,
    //     home: InformasibkScreen(),
    //   );
    // }

    //   return MaterialApp(
    //     debugShowCheckedModeBanner: false,
    //     home: TentangkamiScreen(),
    //   );
    // }

    //   return MaterialApp(
    //     debugShowCheckedModeBanner: false,
    //     home: BantuanScreen(),
    //   );
    // }

    //   return MaterialApp(
    //     debugShowCheckedModeBanner: false,
    //     home: SettingScreen(),
    //   );
    // }

    //   return MaterialApp(
    //     debugShowCheckedModeBanner: false,
    //     home: PelaporanScreen(),
    //   );
    // }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IsipelaporanScreen(),
    );
  }
}
