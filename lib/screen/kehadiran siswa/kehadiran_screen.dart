import 'package:flutter/material.dart';

class KehadiranScreen extends StatelessWidget {
  const KehadiranScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 0, horizontal: 41),
                decoration: BoxDecoration(
                  color: Color(0xFF38ACFF),
                ),
                width: double.infinity,
                height: 100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 41,
                    ),
                    const Text(
                      "Laporan Kehadiran Bulanan",
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 120,
                      ),
                      const Text(
                        "Daftar Laporan Kehadiran Bulanan",
                        style: TextStyle(
                          color: Color(0xFF0579CC),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ]),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Column(
                children: [
                  SizedBox(
                    height: 150,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                        border: Border.all(
                          color: Color(0xFF677294),
                          width: 0.5,
                        ),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFF677294),
                            spreadRadius: 0,
                            blurRadius: 4,
                          )
                        ],
                        ),
                    width: 335,
                    height: 131,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
