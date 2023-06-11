import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_fonts/google_fonts.dart';

class EditKartuScreen extends StatefulWidget {
  static String routeName = 'EditKartuScreen';
  final String laporanID;
  final String initialNama;
  final String initialKelas;
  final String initialMasalah;
  final String initialNomor;

  const EditKartuScreen({
    Key? key,
    required this.laporanID,
    required this.initialNama,
    required this.initialKelas,
    required this.initialMasalah,
    required this.initialNomor,
  }) : super(key: key);

  @override
  _EditKartuScreenState createState() => _EditKartuScreenState();
}

class _EditKartuScreenState extends State<EditKartuScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late TextEditingController namaController;
  late TextEditingController kelasController;
  late TextEditingController masalahController;
  late TextEditingController nomorController;

  @override
  void initState() {
    super.initState();
    namaController = TextEditingController(text: widget.initialNama);
    kelasController = TextEditingController(text: widget.initialKelas);
    masalahController = TextEditingController(text: widget.initialMasalah);
    nomorController = TextEditingController(text: widget.initialNomor);
  }

  final FirebaseAuth auth = FirebaseAuth.instance;
  final CollectionReference reportCollection =
      FirebaseFirestore.instance.collection('laporan_guru');

  Future<void> _editReport(
    String masalah,
    String kelas,
    String nama,
    String nomor,
  ) async {
    try {
      await reportCollection.doc(widget.laporanID).update({
        'Masalah': masalah,
        'Kelas': kelas,
        'Nama': nama,
        'Nomor': nomor,
        'Date': FieldValue.serverTimestamp(), // Update the timestamp
      });

      // Success message or further processing
    } catch (error) {
      // Error handling
    }

    // Clear the text fields and show a success message or navigate to another screen
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Success'),
          content: const Text('Report Successfully Updated!'),
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
          title: const Text('Tambah Laporan (Siswa)',
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
                                Text(
                                  'Nama',
                                  style: labelStyle,
                                ),
                                const SizedBox(height: 10.0),
                                TextFormField(
                                  controller: namaController,
                                  style: inputTextStyle,
                                  decoration: const InputDecoration(
                                    hintText: 'Masukkan Nama Anda',
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.all(10.0),
                                  ),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Field ini harus diisi';
                                    }
                                    return null;
                                  },
                                ),
                                const SizedBox(height: 15.0),
                                Text(
                                  'Kelas',
                                  style: labelStyle,
                                ),
                                const SizedBox(height: 8.0),
                                TextFormField(
                                  controller: kelasController,
                                  style: inputTextStyle,
                                  decoration: const InputDecoration(
                                    hintText: 'Masukkan Kelas Anda',
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.all(10.0),
                                  ),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Field ini harus diisi';
                                    }
                                    return null;
                                  },
                                ),
                                const SizedBox(height: 15.0),
                                Text(
                                  'Masalah',
                                  style: labelStyle,
                                ),
                                const SizedBox(height: 8.0),
                                TextFormField(
                                  controller: masalahController,
                                  style: inputTextStyle,
                                  maxLines:
                                      null, // Allow multiple lines of input
                                  decoration: InputDecoration(
                                    hintText: 'Masalah apa yang anda alami?',
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Field ini harus diisi';
                                    }
                                    return null;
                                  },
                                ),
                                const SizedBox(height: 15.0),
                                Text(
                                  'Nomor WA yang akan dihubungi',
                                  style: labelStyle,
                                ),
                                const SizedBox(height: 8.0),
                                TextFormField(
                                  controller: nomorController,
                                  style: inputTextStyle,
                                  maxLines:
                                      null, // Allow multiple lines of input
                                  decoration: InputDecoration(
                                    hintText: 'Masukkan nomor WA anda',
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Field ini harus diisi';
                                    }
                                    return null;
                                  },
                                ),
                                const SizedBox(height: 15.0),
                                ElevatedButton(
                                  onPressed: () {
                                    if (_formKey.currentState!.validate()) {
                                      _editReport(
                                        masalahController.text,
                                        kelasController.text,
                                        namaController.text,
                                        nomorController.text,
                                      );
                                    }
                                  },
                                  child: const Text('Submit'),
                                ),
                              ]),
                        ),
                      ),
                    ))
              ]))
        ]))));
  }
}
