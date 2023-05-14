import 'package:flutter/material.dart';

class ProfileLong extends StatefulWidget {
  const ProfileLong({super.key});

  @override
  _ProfileLongState createState() => _ProfileLongState();
  static String routeName = "ProfileLong";
}
class _ProfileLongState extends State<ProfileLong> {

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
        title: const Text('Pengaturan',
        style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 20,
                fontWeight: FontWeight.w700)),
      ),
      backgroundColor: const Color(0xFFFFFFFF),
      body: SafeArea(
        child: Stack(
          children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
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
                          width: 330,
                          height: 582,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 5.0, left: 3.0),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15, top: 10),
                                      child: 
                                      Row(
                                        children: [
                                          Container(
                                            alignment: Alignment.topCenter,
                                            width: 80,
                                            height: 80,
                                            decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: AssetImage(
                                                  "assets/images/jid1.png",
                                                ),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 30,
                                          ),
                                          const Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                              padding: EdgeInsets.only(left: 20.0),
                                              child: Text(
                                                "Zid Ni Boss",
                                                style: TextStyle(
                                                  color: Color(0xFF0579CC),
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              )
                                            ),
                                          SizedBox(height: 10),
                                          Padding(
                                              padding: EdgeInsets.only(left: 20.0),
                                              child: Text(
                                                "Guru BK Ilegal",
                                                style: TextStyle(
                                                  color: Color(0xFF584D99),
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w300,
                                                ),
                                              )
                                            ),
                                        ],
                                      )
                                    ],
                                  )
                                ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  const SizedBox(
                    height: 140,
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
                    height: 80,
                    child: const Padding(
                      padding: EdgeInsets.only(top: 11.0, left: 3.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 6.0),
                                child: Text(
                                  "Pengaturan Akun",
                                  style: TextStyle(
                                    color: Color(0xFF584D99),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 18,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 6.0),
                                child: Text(
                                  "Ubah kata sandi",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 135, 131, 155),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  const SizedBox(
                    height: 230,
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
                    height: 80,
                    child: const Padding(
                      padding: EdgeInsets.only(top: 11.0, left: 3.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 6.0),
                                child: Text(
                                  "Interaksi Saya",
                                  style: TextStyle(
                                    color: Color(0xFF584D99),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 18,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 6.0),
                                child: Text(
                                  "Jumlah Interaksi Saya",
                                  style: TextStyle(
                                    color: Color(0xFF584D99),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  const SizedBox(
                    height: 320,
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
                    height: 180,
                    child: const Padding(
                      padding: EdgeInsets.only(top: 11.0, left: 3.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 6.0),
                                child: Text(
                                  "Aplikasi BiKing",
                                  style: TextStyle(
                                    color: Color(0xFF584D99),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 6.0),
                                child: Text(
                                  "Tentang Kami",
                                  style: TextStyle(
                                    color: Color(0xFF584D99),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 11,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 6.0),
                                child: Text(
                                  "Privasi",
                                  style: TextStyle(
                                    color: Color(0xFF584D99),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 11,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 6.0),
                                child: Text(
                                  "Bantuan",
                                  style: TextStyle(
                                    color: Color(0xFF584D99),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 11,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 6.0),
                                child: Text(
                                  "Hubungi Kami",
                                  style: TextStyle(
                                    color: Color(0xFF584D99),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  const SizedBox(
                    height: 510,
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
                    height: 50,
                    child: const Padding(
                      padding: EdgeInsets.only(top: 11.0, left: 3.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 8.0),
                                child: Text(
                                  "Log Out",
                                  style: TextStyle(
                                    color: Color(0xFF584D99),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
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