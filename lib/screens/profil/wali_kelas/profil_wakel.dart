import 'package:biking_app/screens/profil/wali_kelas/setting_wakel.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import '../../../constants.dart';


class ProfileWakel  extends StatefulWidget {
  const ProfileWakel({Key? key}) : super(key: key);
  static String routeName = 'ProfileWakel';

  @override
  _ProfileWakelState createState() => _ProfileWakelState();
}

class _ProfileWakelState extends State<ProfileWakel> {

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
        title: Text('Profil',
        style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w600)),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SettingWakel()),
            );
            },
          )
        ],
      ),
  
      backgroundColor: const Color(0xFFFFFFFF),
       body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Align(
                alignment: Alignment.topCenter,
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          alignment: Alignment.topCenter,
                          width: 130,
                          height: 150,
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
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: GestureDetector(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text("Ganti Foto"),
                                    content: Wrap(
                                      crossAxisAlignment:
                                          WrapCrossAlignment.center,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20),
                                          child: GestureDetector(
                                            onTap: () async {
                                              // Mengganti foto dari galeri
                                              final pickedFile =
                                                  await ImagePicker().pickImage(
                                                      source:
                                                          ImageSource.gallery);
                                              if (pickedFile != null) {
                                                // Lakukan sesuatu dengan foto yang dipilih dari galeri
                                              }
                                              Navigator.of(context).pop();
                                            },
                                            child: Column(
                                              children: [
                                                Image.asset(
                                                  "assets/icons/galery.png",
                                                  width: 50,
                                                  height: 50,
                                                ),
                                                SizedBox(height: 8),
                                                Text("Galeri"),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 5),
                                          child: GestureDetector(
                                            onTap: () async {
                                              // Mengganti foto dari kamera
                                              final pickedFile =
                                                  await ImagePicker().pickImage(
                                                      source:
                                                          ImageSource.camera);
                                              if (pickedFile != null) {
                                                // Lakukan sesuatu dengan foto yang diambil dari kamera
                                              }
                                              Navigator.of(context).pop();
                                            },
                                            child: Column(
                                              children: [
                                                Image.asset(
                                                  "assets/icons/camera.png",
                                                  width: 50,
                                                  height: 50,
                                                ),
                                                const SizedBox(height: 8),
                                                const Text("Kamera"),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              );
                            },
                            child: Image.asset(
                              "assets/images/addphoto.png",
                              width: 30,
                              height: 30,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 180,
                    ),
                    Text(
                      "Info Profil",
                      style: GoogleFonts.poppins(
                        color: Color(0xFF0579CC),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ]),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  const SizedBox(
                    height: 210,
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
                    width: 360,
                    height: 60,
                    child: Padding(
                      padding: EdgeInsets.only(top: 10.0, left: 10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 6.0),
                                child: Text(
                                  "Nama",
                                  style: GoogleFonts.poppins(
                                    color: kSecondaryColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 6.0),
                                child: Text(
                                  "Zid Ni Boss",
                                  style: GoogleFonts.poppins(
                                    color: kContainerColor,
                                    fontSize: 15,
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
                    height: 280,
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
                    width: 360,
                    height: 60,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0, left: 8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 6.0),
                                child: Text(
                                  "Nomor HP",
                                  style: GoogleFonts.poppins(
                                    color: kSecondaryColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 6.0),
                                child: Text(
                                  "085349313355",
                                  style: GoogleFonts.poppins(
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
                  const SizedBox(
                    height: 350,
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
                    width: 360,
                    height: 60,
                    child: Padding(
                      padding: EdgeInsets.only(top: 10.0, left: 10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 6.0),
                                child: Text(
                                  "Tanggal Lahir",
                                  style: GoogleFonts.poppins(
                                    color: kSecondaryColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 6.0),
                                child: Text(
                                  "7 Agustus 2001",
                                  style: GoogleFonts.poppins(
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
                  const SizedBox(
                    height: 420,
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
                    width: 360,
                    height: 60,
                    child: Padding(
                      padding: EdgeInsets.only(top: 10.0, left: 10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 6.0),
                                child: Text(
                                  "Kelas Perwalian",
                                  style: GoogleFonts.poppins(
                                    color: kSecondaryColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 6.0),
                                child: Text(
                                  "XII MIPA 1",
                                  style: GoogleFonts.poppins(
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
                  const SizedBox(
                    height: 490,
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
                    width: 360,
                    height: 60,
                    child: Padding(
                      padding: EdgeInsets.only(top: 10.0, left: 10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 6.0),
                                child: Text(
                                  "NIM",
                                  style: GoogleFonts.poppins(
                                    color: kSecondaryColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 6.0),
                                child: Text(
                                  "D121201016",
                                  style: GoogleFonts.poppins(
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
