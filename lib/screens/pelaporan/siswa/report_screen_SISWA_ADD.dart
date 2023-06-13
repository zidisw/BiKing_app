import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uuid/uuid.dart';

class AddReportScreen extends StatefulWidget {
  static String routeName = 'TambahReportSiswa';
  const AddReportScreen({super.key});
  @override
  _AddReportScreenState createState() => _AddReportScreenState();
}

class _AddReportScreenState extends State<AddReportScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController userIDController = TextEditingController();
  final TextEditingController laporanIDController = TextEditingController();
  final TextEditingController namaController = TextEditingController();
  final TextEditingController kelasController = TextEditingController();
  final TextEditingController masalahController = TextEditingController();
  final TextEditingController nomorController = TextEditingController();
  final FirebaseAuth auth = FirebaseAuth.instance;
  final CollectionReference reportCollection =
      FirebaseFirestore.instance.collection('laporan_siswa');

  Future<String?> _getUserPhoneNumber(String userID) async {
    DocumentSnapshot userSnapshot =
        await FirebaseFirestore.instance.collection('users').doc(userID).get();

    if (userSnapshot.exists) {
      return userSnapshot['nomorTelepon'];
    } else {
      return null;
    }
  }

  Future<void> _addReport(String userID, String laporanID, String nama,
      String kelas, String masalah) async {
    try {
      String userID = FirebaseAuth.instance.currentUser!.uid;
      String userName = nama;
      String laporanID = const Uuid().v4();

      QuerySnapshot snapshot =
          await reportCollection.where('Nama', isEqualTo: userName).get();
      int numberOfReports = snapshot.docs.length;

      String documentId = 'Laporan ke ${numberOfReports + 1}  userName';
      String? nomorTelepon = await _getUserPhoneNumber(userID);

      await reportCollection.doc(documentId).set({
        'UserID': userID,
        'LaporanID': laporanID,
        'Nama': nama,
        'Kelas': kelas,
        'Masalah': masalah,
        'Date': FieldValue.serverTimestamp(),
        'Nomor Telepon': nomorTelepon,
      });
      Fluttertoast.showToast(
        msg: 'Laporan berhasil dikirim',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
      );
      Navigator.pop(context, true);
      // Success message or further processing
    } catch (error) {
      Fluttertoast.showToast(
        msg: 'Terjadi kesalahan',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
      );
    }
    // Clear the text fields
    namaController.clear();
    kelasController.clear();
    masalahController.clear();
    nomorController.clear();
  }

  TextStyle labelStyle = GoogleFonts.poppins(
    fontSize: 20.0,
    fontWeight: FontWeight.w500,
  );

  TextStyle inputTextStyle = GoogleFonts.poppins(
    fontSize: 16.0,
    fontWeight: FontWeight.w500,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
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
          title: Text('Buat Laporan',
              style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.5)),
        ),
        body: SingleChildScrollView(
            child: SafeArea(
                child: Column(children: [
          Align(
              alignment: Alignment.topCenter,
              child: Column(children: [
                Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: const Color(0xFF000000).withOpacity(0.16),
                          width: 1.0,
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(
                        vertical: 13.0,
                        horizontal: 10.0,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Form(
                          key: _formKey,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Nama:',
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                TextFormField(
                                  controller: namaController,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Field ini harus diisi';
                                    }
                                    return null;
                                  },
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    hintText: 'Masukkan nama anda',
                                  ),
                                ),
                                const SizedBox(height: 15),
                                Text(
                                  'Kelas Siswa:',
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                TextFormField(
                                  controller: kelasController,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Field ini harus diisi';
                                    }
                                    return null;
                                  },
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    hintText: 'Masukkan kelas anda',
                                  ),
                                ),
                                const SizedBox(height: 15),
                                Text(
                                  'Deskripsi Laporan:',
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                TextFormField(
                                  controller: masalahController,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Field ini harus diisi';
                                    }
                                    return null;
                                  },
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    hintText: 'Masukkan deskripsi laporan',
                                  ),
                                  maxLines: 3,
                                ),
                                const SizedBox(height: 15.0),
                                Center(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      if (_formKey.currentState!.validate()) {
                                        _addReport(
                                          userIDController.text,
                                          laporanIDController.text,
                                          namaController.text,
                                          kelasController.text,
                                          masalahController.text,
                                        );
                                      }
                                    },
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 30, vertical: 10),
                                    ),
                                    child: Text(
                                      'Kirim',
                                      style: GoogleFonts.poppins(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                        ),
                      ),
                    ))
              ]))
        ]))));
  }
}
