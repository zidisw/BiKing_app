import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HubungiKami extends StatefulWidget {
  const HubungiKami({super.key});
  static String routeName = 'HubungiKami';

  @override
  _HubungiKami createState() => _HubungiKami();
}

class _HubungiKami extends State<HubungiKami> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.blue,
                Colors.purple,
              ],
            ),
          ),
        ),
        title: Text('Hubungi Kami',
            style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            )),
      ),
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Align(
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: const Color(0xFF000000).withOpacity(0.30),
                        width: 1.0,
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(
                        vertical: 13.0, horizontal: 10.0),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            alignment: Alignment.topCenter,
                            width: 300,
                            height: 230,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  "assets/images/contactus.png",
                                ),
                              ),
                            ),
                          ),
                          Text(
                            "Kontak Person",
                            textAlign: TextAlign.left,
                            style: GoogleFonts.poppins(
                              color: const Color(0xFF000000),
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 5.0),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey.withOpacity(0.5),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              width: 300,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Container(
                                      alignment: Alignment.centerLeft,
                                      width: 47,
                                      height: 47,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/whatsapp.png"),
                                        ),
                                      ),
                                    ),
                                  ),
                                  // const SizedBox(width: 55),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      "0853-4931-3355 (Zid)",
                                      textAlign: TextAlign.left,
                                      style: GoogleFonts.poppins(
                                        color: const Color(0xFF000000),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                        padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 5.0),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey.withOpacity(0.5),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              width: 300,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5.0),
                                    child: Container(
                                      alignment: Alignment.centerLeft,
                                      width: 47,
                                      height: 47,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/whatsapp.png"),
                                        ),
                                      ),
                                    ),
                                  ),
                                  // const SizedBox(width: 55),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      "0822-9332-0943 (Nabila)",
                                      textAlign: TextAlign.left,
                                      style: GoogleFonts.poppins(
                                        color: const Color(0xFF000000),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
