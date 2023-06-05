import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fluttertoast/fluttertoast.dart';

class BuatLaporan extends StatefulWidget {
  const BuatLaporan({Key? key}) : super(key: key);
  static String routeName = 'BuatLaporan';

  @override
  _BuatLaporanState createState() => _BuatLaporanState();
}

class _BuatLaporanState extends State<BuatLaporan> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String kepadaValue = '';
  String namaValue = '';
  String siswaNamaValue = '';
  String siswaKelasValue = '';
  String deskripsiValue = '';
  String saranValue = '';
  static int _laporanCounter = 0;

  @override


  Future<void> _addReport(String kepada, String nama, String siswaNama,
      String siswaKelas, String deskripsi, String saran) async {
    try {
      _laporanCounter++; // tambahkan counter saat laporan dikirim
      String namaDokumen = 'Laporan $_laporanCounter' + '_' + nama;
      await FirebaseFirestore.instance
          .collection('laporan_guru')
          .doc(namaDokumen)
          .set({
        'Kepada': kepada,
        'Nama': nama,
        'Nama Siswa': siswaNama,
        'Kelas Siswa': siswaKelas,
        'Deskripsi Laporan': deskripsi,
        'Saran': saran,
        'Tanggal': Timestamp.fromDate(DateTime.now()),
      });

      Fluttertoast.showToast(
        msg: 'Laporan berhasil dikirim',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
      );
      // Reset form
      _formKey.currentState!.reset();

      // kembali ke halaman sebelumnya
      Navigator.pop(context);
    } catch (error) {
      // Error handling
      Fluttertoast.showToast(
        msg: 'Terjadi kesalahan',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
      );
    }
  }

  void _kirimLaporan() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      _addReport(
        kepadaValue,
        namaValue,
        siswaNamaValue,
        siswaKelasValue,
        deskripsiValue,
        saranValue,
      );
    }
  }

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
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
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
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Field ini harus diisi';
                                    }
                                    return null;
                                  },
                                  onSaved: (value) {
                                    namaValue = value!;
                                  },
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
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
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Field ini harus diisi';
                                    }
                                    return null;
                                  },
                                  onSaved: (value) {
                                    siswaNamaValue = value!;
                                  },
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
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
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
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
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
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
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Field ini harus diisi';
                                    }
                                    return null;
                                  },
                                  onSaved: (value) {
                                    saranValue = value!;
                                  },
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: 'Masukkan saran',
                                  ),
                                  maxLines: 3,
                                ),
                                const SizedBox(height: 15),
                                ElevatedButton(
                                  onPressed: _kirimLaporan,
                                  child: const Text('Kirim'),
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
