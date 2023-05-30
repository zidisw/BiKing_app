import 'package:flutter/material.dart';

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
        title: const Text('Hubungi Kami'),
      ),
      body: SafeArea(
          child: Column(
        children: [
          Align(
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: 340,
                  height: 510,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: const Color(0xFF000000).withOpacity(0.30),
                      width: 1.0,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
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
                        Container(
                          decoration: BoxDecoration(
                            color: const Color(0xFFFFFFFF),
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: const Color(0xFF000000).withOpacity(0.16),
                              width: 1.0,
                            ),
                          ),
                          width: 300,
                          height: 60,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Container(
                                  alignment: Alignment.centerLeft,
                                  width: 40,
                                  height: 40,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image:
                                          AssetImage("assets/images/gmail.png"),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 75),
                              const Text(
                                "Gmail",
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF000000),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xFFFFFFFF),
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                color: const Color(0xFF000000).withOpacity(0.16),
                                width: 1.0,
                              ),
                            ),
                            width: 300,
                            height: 60,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    width: 40,
                                    height: 40,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/instagram.png"),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 60),
                                const Text(
                                  "Instagram",
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF000000),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xFFFFFFFF),
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                color: const Color(0xFF000000).withOpacity(0.16),
                                width: 1.0,
                              ),
                            ),
                            width: 300,
                            height: 60,
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
                                const SizedBox(width: 55),
                                const Text(
                                  "Whatsapp",
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF000000),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xFFFFFFFF),
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                color: const Color(0xFF000000).withOpacity(0.16),
                                width: 1.0,
                              ),
                            ),
                            width: 300,
                            height: 60,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    width: 40,
                                    height: 40,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/twitter.png"),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 70),
                                const Text(
                                  "Twitter",
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF000000),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
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
   ],
)),

     
    );
  }
}