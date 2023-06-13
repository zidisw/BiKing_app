import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:uuid/uuid.dart';

class BuatLaporanWali extends StatefulWidget {
  const BuatLaporanWali({Key? key}) : super(key: key);
  static String routeName = 'BuatLaporanWali';

  @override
  _BuatLaporanState createState() => _BuatLaporanState();
}

class _BuatLaporanState extends State<BuatLaporanWali> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String kepadaValue = '';
  String namaValue = '';
  String siswaNamaValue = '';
  String siswaKelasValue = '';
  String deskripsiValue = '';
  String penangananValue = '';
  static int _laporanCounter_ = 0;

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
        title: Text(
          'Pelaporan',
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
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
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Field ini harus diisi';
                                    }
                                    return null;
                                  },
                                  onSaved: (value) {
                                    kepadaValue = value!;
                                  },
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    hintText: 'Masukkan nama penerima',
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  'Nama Siswa:',
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                TextFormField(
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Field ini harus diisi';
                                    }
                                    return null;
                                  },
                                  onSaved: (value) {
                                    siswaNamaValue = value!;
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
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Field ini harus diisi';
                                    }
                                    return null;
                                  },
                                  onSaved: (value) {
                                    siswaKelasValue = value!;
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
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Field ini harus diisi';
                                    }
                                    return null;
                                  },
                                  onSaved: (value) {
                                    deskripsiValue = value!;
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
                                  'Penanganan Yang Sudah Dilakukan:',
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                TextFormField(
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Field ini harus diisi';
                                    }
                                    return null;
                                  },
                                  onSaved: (value) {
                                    penangananValue = value!;
                                  },
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    hintText: 'deskripsikan penanganan',
                                  ),
                                  maxLines: 3,
                                ),
                                const SizedBox(height: 15),
                                Center(
                                  child: ElevatedButton(
                                    onPressed: _kirimLaporan,
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

  Future<String?> _getUserPhoneNumber(String userID) async {
    DocumentSnapshot userSnapshot =
        await FirebaseFirestore.instance.collection('users').doc(userID).get();

    if (userSnapshot.exists) {
      return userSnapshot['nomorTelepon'];
    } else {
      return null;
    }
  }

  Future<String?> _getUserName(String userID) async {
    DocumentSnapshot userSnapshot =
    await FirebaseFirestore.instance.collection('users').doc(userID).get();

    if (userSnapshot.exists) {
      return userSnapshot['nama'];
    } else {
      return null;
    }
  }

  Future<void> _addReport(
      String userID,
      String laporanID,
      String kepada,
      String nama,
      String siswaNama,
      String siswaKelas,
      String deskripsi,
      String penanganan) async {
    try {
      _laporanCounter_++; // tambahkan counter saat laporan dikirim
      String? nama = await _getUserName(userID);
      String namaDokumen = 'Laporan_$_laporanCounter_ WALI_$nama';
      String? nomorTelepon = await _getUserPhoneNumber(userID);
      await FirebaseFirestore.instance
          .collection('laporan_wali')
          .doc(namaDokumen)
          .set({
        'UserID': userID,
        'LaporanID': laporanID,
        'Kepada': kepada,
        'Nama': nama,
        'Nama Siswa': siswaNama,
        'Kelas Siswa': siswaKelas,
        'Deskripsi Laporan': deskripsi,
        'Penanganan': penanganan,
        'Tanggal': FieldValue.serverTimestamp(),
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
      // Reset form
      _formKey.currentState!.reset();

      // kembali ke halaman sebelumnya
      Navigator.pop(context, true);
    } catch (error) {
      // Error handling
      Fluttertoast.showToast(
        msg: 'Terjadi kesalahan',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
      );
    }
  }

  Future<void> _kirimLaporan() async {
    final FormState? form = _formKey.currentState;
    if (form!.validate()) {
      form.save();
      FirebaseAuth auth = FirebaseAuth.instance;
      String userID = auth.currentUser!.uid;
      String laporanID = const Uuid().v4();

      // Memastikan koleksi "laporan_wali" ada
      await FirebaseFirestore.instance
          .collection('laporan_wali')
          .doc('dummy_document')
          .set({});

      // Menghapus dokumen dummy jika diperlukan
      await FirebaseFirestore.instance
          .collection('laporan_wali')
          .doc('dummy_document')
          .delete();

      _addReport(
        userID,
        laporanID,
        kepadaValue,
        namaValue,
        siswaNamaValue,
        siswaKelasValue,
        deskripsiValue,
        penangananValue,
      );
    }
  }
}
