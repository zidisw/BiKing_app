import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EditlaporanpenangananScreen extends StatefulWidget {
  const EditlaporanpenangananScreen({Key? key}) : super(key: key);
  static String routeName = 'EditlaporanpenangananScreen';

  @override
  State<EditlaporanpenangananScreen> createState() =>
      _EditlaporanpenangananScreenState();
}

class _EditlaporanpenangananScreenState
    extends State<EditlaporanpenangananScreen> {
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
        title: Text('Laporan Penanganan Wali Kelas',
            style:
                GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w600)),
      ),
      backgroundColor: const Color(0xFFFFFFFF),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Align(
                  alignment: Alignment.center,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: const Color(0xFF000000).withOpacity(0.1),
                            width: 1.0,
                          ),
                        ),
                        padding: const EdgeInsets.symmetric(
                            vertical: 13.0, horizontal: 10.0),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10, top: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Nama Siswa",
                                style: GoogleFonts.poppins(
                                  color: Color(0xFF000000),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const Column(
                                children: [
                                  SizedBox(
                                      height: 3,
                                    ),
                                ],
                              ), // add some spacing between the text and the TextFormField
                              TextFormField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  contentPadding: const EdgeInsets.symmetric(
                                    vertical: 16.0,
                                    horizontal: 10.0,
                                  ),
                                  hintText: 'Masukkan Nama Anda',
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Wajib diisi';
                                  }
                                  return null;
                                },
                                onSaved: (value) {},
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Text(
                                "Kelas",
                                style: GoogleFonts.poppins(
                                  color: Color(0xFF000000),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(
                                  height: 3,
                                ), // add some spacing between the text and the TextFormField
                              TextFormField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  contentPadding: const EdgeInsets.symmetric(
                                    vertical: 16.0,
                                    horizontal: 10.0,
                                  ),
                                  hintText: 'Masukkan Kelas Anda',
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Wajib diisi';
                                  }
                                  return null;
                                },
                                onSaved: (value) {},
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Text(
                                "Masalah",
                                style: GoogleFonts.poppins(
                                  color: Color(0xFF000000),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(
                                    height: 3,
                                  ), // add some spacing between the text and the TextFormField
                              TextFormField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  contentPadding: const EdgeInsets.symmetric(
                                    vertical: 70.0,
                                    horizontal: 10.0,
                                  ),
                                  hintText: 'Masukkan Masalah Anda',
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Wajib diisi';
                                  }
                                  return null;
                                },
                                onSaved: (value) {},
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Text(
                                "Penanganan yang Sudah Dilakukan",
                                style: GoogleFonts.poppins(
                                  color: Color(0xFF000000),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),const SizedBox(
                                    height: 3,
                                  ), // add some spacing between the text and the TextFormField
                              TextFormField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  contentPadding: const EdgeInsets.symmetric(
                                    vertical: 70.0,
                                    horizontal: 10.0,
                                  ),
                                  hintText:
                                      'Masukkan Penanganan yang Sudah Dilakukan',
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Wajib diisi';
                                  }
                                  return null;
                                },
                                onSaved: (value) {},
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Text(
                                "Tanggal",
                                style: GoogleFonts.poppins(
                                  color: Color(0xFF000000),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Column(children: [
                                const SizedBox(
                                  height: 3,
                                ),
                                GestureDetector(
                                  onTap: () async {
                                    DateTime? pickedDate =
                                        await showDatePicker(
                                            context: context,
                                            initialDate: DateTime
                                                .now(), //get today's date
                                            firstDate: DateTime(
                                                2000), //DateTime.now() - not to allow to choose before today.
                                            lastDate: DateTime(2101));
                                  },
                                  child: AbsorbPointer(
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(12.0)),
                                        contentPadding:
                                            const EdgeInsets.symmetric(
                                          vertical: 16.0,
                                          horizontal: 10.0,
                                        ),
                                        hintText: 'Pilih tanggal laporan',
                                      ),
                                      onSaved: (value) {
                                        // simpan tanggal yang dipilih
                                      },
                                    ),
                                  ),
                                ),
                              ]),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          // kode untuk tombol Batal
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: Text(
                          'Batal',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 40),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          // kode untuk tombol Simpan
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text(
                          'Simpan',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
