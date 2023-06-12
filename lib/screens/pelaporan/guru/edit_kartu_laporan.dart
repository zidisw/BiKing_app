import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';

class EditKartuScreen extends StatefulWidget {
  static String routeName = 'EditKartuScreen';
  final String initialUserID;
  final String initialLaporanID;
  final String initialKepada;
  final String initialNama;
  final String initialSiswaNama;
  final String initialSiswaKelas;
  final String initialDeskripsi;
  final String initialSaran;

  const EditKartuScreen({
    Key? key,
    required this.initialUserID,
    required this.initialLaporanID,
    required this.initialKepada,
    required this.initialNama,
    required this.initialSiswaNama,
    required this.initialSiswaKelas,
    required this.initialDeskripsi,
    required this.initialSaran,
  }) : super(key: key);

  @override
  _EditKartuScreenState createState() => _EditKartuScreenState();
}

class _EditKartuScreenState extends State<EditKartuScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late TextEditingController userIDController;
  late TextEditingController laporanIDController;
  late TextEditingController kepadaController;
  late TextEditingController namaController;
  late TextEditingController siswanamaController;
  late TextEditingController siswakelasController;
  late TextEditingController deskripsiController;
  late TextEditingController saranController;

  @override
  void initState() {
    super.initState();
    userIDController = TextEditingController(text: widget.initialUserID);
    laporanIDController = TextEditingController(text: widget.initialLaporanID);
    kepadaController = TextEditingController(text: widget.initialKepada);
    namaController = TextEditingController(text: widget.initialNama);
    siswanamaController = TextEditingController(text: widget.initialSiswaNama);
    siswakelasController =
        TextEditingController(text: widget.initialSiswaKelas);
    deskripsiController = TextEditingController(text: widget.initialDeskripsi);
    saranController = TextEditingController(text: widget.initialSaran);
  }

  final FirebaseAuth auth = FirebaseAuth.instance;
  final CollectionReference reportCollection =
      FirebaseFirestore.instance.collection('laporan_guru');

  Future<String?> _getUserPhoneNumber(String userID) async {
    DocumentSnapshot userSnapshot =
        await FirebaseFirestore.instance.collection('users').doc(userID).get();

    if (userSnapshot.exists) {
      return userSnapshot['nomorTelepon'];
    } else {
      return null;
    }
  }

  Future<void> _editReport(
    String userID,
    String laporanID,
    String kepada,
    String nama,
    String siswaNama,
    String siswaKelas,
    String deskripsi,
    String saran,
  ) async {
    try {
      String? nomorTelepon = await _getUserPhoneNumber(userID);
      await reportCollection.doc(widget.initialLaporanID).update({
        'UserID': userID,
        'LaporanID': laporanID,
        'Kepada': kepada,
        'Nama': nama,
        'Nama Siswa': siswaNama,
        'Kelas Siswa': siswaKelas,
        'Deskripsi Laporan': deskripsi,
        'Saran': saran,
        'Tanggal': Timestamp.now(),
        'Nomor Telepon': nomorTelepon,
      });
      Fluttertoast.showToast(
        msg: 'Report Successfully Updated!',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
      );
      setState(() {}); // Memperbarui tampilan setelah berhasil memperbarui laporan
      Navigator.pop(context, true);
    } catch (error) {
      Fluttertoast.showToast(
        msg: 'Failed to update report.',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
      );
    }
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
        title: Text('Update Kartu Laporan',
            style: GoogleFonts.poppins(
                fontSize: 20, fontWeight: FontWeight.w600, letterSpacing: 0.5)),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Column(
                  children: [
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
                                  'Kepada:',
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                TextFormField(
                                  controller: kepadaController,
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
                                    hintText: 'Masukkan nama penerima',
                                  ),
                                ),
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
                                  'Nama Siswa:',
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                TextFormField(
                                  controller: siswanamaController,
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
                                    hintText: 'Masukkan nama siswa',
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
                                  controller: siswakelasController,
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
                                  controller: deskripsiController,
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
                                const SizedBox(height: 15),
                                Text(
                                  'Saran:',
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                TextFormField(
                                  controller: saranController,
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
                                    hintText: 'Masukkan saran',
                                  ),
                                  maxLines: 3,
                                ),
                                const SizedBox(height: 15),
                                Center(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      if (_formKey.currentState!.validate()) {
                                        _editReport(
                                          userIDController.text,
                                          laporanIDController.text,
                                          kepadaController.text,
                                          namaController.text,
                                          siswanamaController.text,
                                          siswakelasController.text,
                                          deskripsiController.text,
                                          saranController.text,
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
                                        fontSize:
                                            15,
                                        fontWeight: FontWeight
                                            .w600,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
