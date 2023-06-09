import 'package:biking_app/constants.dart';
import 'package:flutter/material.dart';
import 'my_profile_long.dart';

class MyProfileScreen extends StatefulWidget {
  const MyProfileScreen({Key? key}) : super(key: key);
  static String routeName = 'MyProfileScreen';

  @override
  _MyProfileScreenState createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        flexibleSpace: Container(
        decoration: BoxDecoration(
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
        title: Text('Profil',
        style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 20,
                fontWeight: FontWeight.w700)),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfileLong()),
            );
            },
          )
        ],
      ),
      backgroundColor: Color(0xFFFFFFFF),
      body: SingleChildScrollView(
        
        child: Stack(
          children: [
            
            Align(
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Stack(
                    children: [
                      Container(
                        alignment: Alignment.topCenter,
                        width: 130,
                        height: 150,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              "assets/images/jid1.png",
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Image.asset(
                          "assets/images/addphoto.png",
                          width: 30,
                          height: 30,
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
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 180,
                      ),
                      Text(
                        "Info Profil",
                        style: TextStyle(
                          color: kSecondaryColor,
                          fontSize: 16,
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
                    height: 210,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: Color(0xFF000000).withOpacity(0.16),
                        width: 1.0,
                      ),
                    ),
                    width: 360,
                    height: 60,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10.0, left: 10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 6.0),
                                child: Text(
                                  "Nama",
                                  style: TextStyle(
                                    color: kSecondaryColor,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 6.0),
                                child: Text(
                                  "Zid Ni Boss",
                                  style: TextStyle(
                                    color: kContainerColor,
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
                  SizedBox(
                    height: 280,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: Color(0xFF000000).withOpacity(0.16),
                        width: 1.0,
                      ),
                    ),
                    width: 360,
                    height: 60,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10.0, left: 10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 6.0),
                                child: Text(
                                  "Nomor HP",
                                  style: TextStyle(
                                    color: kSecondaryColor,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 6.0),
                                child: Text(
                                  "085349313355",
                                  style: TextStyle(
                                    color: kContainerColor,
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
                  SizedBox(
                    height: 350,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: Color(0xFF000000).withOpacity(0.16),
                        width: 1.0,
                      ),
                    ),
                    width: 360,
                    height: 60,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10.0, left: 10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 6.0),
                                child: Text(
                                  "Tanggal Lahir",
                                  style: TextStyle(
                                    color: kSecondaryColor,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 6.0),
                                child: Text(
                                  "7 Agustus 2001",
                                  style: TextStyle(
                                    color: kContainerColor,
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
                  SizedBox(
                    height: 420,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: Color(0xFF000000).withOpacity(0.16),
                        width: 1.0,
                      ),
                    ),
                    width: 360,
                    height: 60,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10.0, left: 10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 6.0),
                                child: Text(
                                  "Jabatan",
                                  style: TextStyle(
                                    color: kSecondaryColor,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 6.0),
                                child: Text(
                                  "Guru BK Ilegal",
                                  style: TextStyle(
                                    color: kContainerColor,
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
                  SizedBox(
                    height: 490,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: Color(0xFF000000).withOpacity(0.16),
                        width: 1.0,
                      ),
                    ),
                    width: 360,
                    height: 60,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10.0, left: 10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 6.0),
                                child: Text(
                                  "NIM",
                                  style: TextStyle(
                                    color: kSecondaryColor,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 6.0),
                                child: Text(
                                  "D121201016",
                                  style: TextStyle(
                                    color: kContainerColor,
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
          ],
        ),
      ),
      
    );
  }
}