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
  final TextEditingController namaController = TextEditingController();
  final TextEditingController kelasController = TextEditingController();
  final TextEditingController masalahController = TextEditingController();
  final TextEditingController nomorController = TextEditingController();
  final FirebaseAuth auth = FirebaseAuth.instance;
  final CollectionReference reportCollection =
  FirebaseFirestore.instance.collection('laporan_siswa');

  Future<void> _addReport(String masalah, String Kelas, String nama, String nomor) async {
    try {
      String userId = FirebaseAuth.instance.currentUser!.uid;

      await FirebaseFirestore.instance.collection('laporan_siswa').add({
        'Masalah': masalah,
        'Kelas': Kelas,
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
        title: Text('Success'),
        content: Text('Report Successfully Sent!'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(); // Close the dialog
            },
            child: Text('OK'),
          ),
        ],
      );
    },
    );
  }

  TextStyle labelStyle = GoogleFonts.roboto(
    fontSize: 16.0,
    fontWeight: FontWeight.bold,
  );

  TextStyle inputTextStyle = GoogleFonts.roboto(
    fontSize: 16.0,
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
        title: const Text('Tambah Laporan (Siswa)',
            style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 20,
                fontWeight: FontWeight.w700,
                letterSpacing: 0.5)),
      ),
      body: SingleChildScrollView(
        child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Nama',
                  style: labelStyle,
                ),
                SizedBox(height: 8.0),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: TextField(
                    controller: namaController,
                    style: inputTextStyle,
                    decoration: InputDecoration(
                      hintText: 'Masukkan Nama Anda',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(10.0),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Kelas',
                  style: labelStyle,
                ),
                SizedBox(height: 8.0),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: TextField(
                    controller: kelasController,
                    style: inputTextStyle,
                    decoration: InputDecoration(
                      hintText: 'Masukkan Kelas Anda',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(10.0),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Masalah',
                  style: labelStyle,
                ),
                SizedBox(height: 8.0),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: TextField(
                    controller: masalahController,
                    style: inputTextStyle,
                    maxLines: null, // Allow multiple lines of input
                    decoration: InputDecoration(
                      hintText: 'Masalah apa yang anda alami?',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Nomor WA yang akan dihubungi',
                  style: labelStyle,
                ),
                SizedBox(height: 8.0),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: TextField(
                    controller: nomorController,
                    style: inputTextStyle,
                    maxLines: null, // Allow multiple lines of input
                    decoration: InputDecoration(
                      hintText: 'Masukkan nomor WA anda',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                _addReport(
                    masalahController.text,
                    kelasController.text,
                    namaController.text,
                    nomorController.text,
                );
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    )
    );
  }
}
