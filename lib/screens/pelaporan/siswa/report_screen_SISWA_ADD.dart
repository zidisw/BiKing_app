import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_fonts/google_fonts.dart';

class AddReportScreen extends StatefulWidget {
  static String routeName = 'TambahReportSiswa';
  const AddReportScreen({super.key});
  @override
  _AddReportScreenState createState() => _AddReportScreenState();
}

class _AddReportScreenState extends State<AddReportScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController namaController = TextEditingController();
  final TextEditingController kelasController = TextEditingController();
  final TextEditingController masalahController = TextEditingController();
  final TextEditingController nomorController = TextEditingController();
  final FirebaseAuth auth = FirebaseAuth.instance;
  final CollectionReference reportCollection =
  FirebaseFirestore.instance.collection('laporan_siswa');

  Future<void> _addReport(String masalah, String kelas, String nama, String nomor) async {
    try {
      String userId = FirebaseAuth.instance.currentUser!.uid;
      String userName = nama;

      QuerySnapshot snapshot = await reportCollection.where('Nama', isEqualTo: userName).get();
      int numberOfReports = snapshot.docs.length;

      String documentId = 'Laporan ke ${numberOfReports + 1}_$userName';

      await reportCollection.doc(documentId).set({
        'Masalah': masalah,
        'Kelas': kelas,
        'Nama': nama,
        'Nomor': nomor,
        'UserId': userId,
        'Date': FieldValue.serverTimestamp(),
      });
      // Success message or further processing
    } catch (error) {
      // Error handling
    }
    // Clear the text fields
    namaController.clear();
    kelasController.clear();
    masalahController.clear();
    nomorController.clear();

    // Show a success message or navigate to another screen
    showDialog(
        context: context,
        builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Success'),
        content: const Text('Report Successfully Sent!'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(); // Close the dialog
            },
            child: const Text('OK'),
          ),
        ],
      );
    },
    );
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
        title: const Text('Buat Laporan',
            style: TextStyle(
                fontFamily: 'Poppins',
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
                                
                                const SizedBox(height: 15),
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
                                    hintText: 'Masukkan kelas siswa',
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
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                _addReport(
                    masalahController.text,
                    kelasController.text,
                    namaController.text,
                    nomorController.text,
                );
                }
              },
              child: const Text('Submit'),
            ),
            ]
            ),
        ),
      ),
        )
    )
          ]
        )
          )
          ]
          )
    )
    )
    );
  }
}
