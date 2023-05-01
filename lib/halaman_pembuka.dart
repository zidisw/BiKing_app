import 'package:flutter/material.dart';
import 'package:flutter_biking/halaman_login.dart';
import 'package:flutter/services.dart';

Future<void> loadFont() async {
  await Future.delayed(Duration(milliseconds: 500));
  final regularFont = await rootBundle.load('fonts/NamaFont-Regular.ttf');
  final boldFont = await rootBundle.load('fonts/NamaFont-Bold.ttf');
  // Use the loaded fonts to create TextStyles
  final regularTextStyle =
      TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.normal);
  final boldTextStyle =
      TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.bold);
}

class HalamanPembuka extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    loadFont();
    return Scaffold(
      body: SafeArea(
          child: Stack(children: [
        Positioned(
          left: 0,
          top: 0,
          child: SizedBox(
            width: 395,
            height: 152,
            child: Image.asset(
              'assets/elemenatas.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Padding(
              padding: EdgeInsets.only(top: 60),
              child: Column(
                children: [
                  Image.asset(
                    'assets/biking2.png',
                    height: 230,
                    width: 130,
                  )
                ],
              )),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                height: 230,
              ),
              const Text(
                "SELAMAT DATANG!",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Color(0xFF38ACFF),
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ]),
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              SizedBox(
                height: 260,
              ),
              Stack(
                children: [
                  Container(
                    alignment: Alignment.topCenter,
                    width: 310,
                    height: 190,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/welcome.png",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            child: Padding(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 450,
                    ),
                    const Text(
                      "BiKing adalah aplikasi Bimbingan Konseling yang membantu siswa untuk menemukan solusi atas masalah yang dihadapi.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ]),
            ),
          ),
        ),
        Positioned(
          bottom: 160,
          left: 0,
          right: 0,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF38ACFF),
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
                child: Text(
                  "Next",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                )),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset(
              'assets/elemenbawah.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ])),
    );
  }
}
