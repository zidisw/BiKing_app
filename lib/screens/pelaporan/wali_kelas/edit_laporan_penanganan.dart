import 'package:date_time_picker/date_time_picker.dart';
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
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String? _kelas;
  String? _nama;
  String? _masalah;
  String? _penanganan;

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
        title:  Text('Laporan Penanganan Wali Kelas',
        style:  GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w700)),
      ),
      backgroundColor: const Color(0xFFFFFFFF),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.center,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 5.0),
                      child: Container(
                        width: 360,
                        height: 720,
                        decoration: BoxDecoration(
                          color: const Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: const Color(0xFF000000).withOpacity(0.1),
                            width: 1.0,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 25.0, left: 15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Nama Siswa",
                                style: TextStyle(
                                  color: Color(0xFF000000),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(
                                  height:
                                      10), // add some spacing between the text and the TextFormField
                              SizedBox(
                                width:
                                    330, // set the width of the TextFormField
                                child: TextFormField(
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
                                  onSaved: (value) {
                                    _nama = value;
                                  },
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const Text(
                                "Kelas",
                                style: TextStyle(
                                  color: Color(0xFF000000),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ), // add some spacing between the text and the TextFormField
                              Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: SizedBox(
                                  width:
                                      330, // set the width of the TextFormField
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(12.0),
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
                                    onSaved: (value) {
                                      _kelas = value;
                                    },
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const Text(
                                "Masalah",
                                style: TextStyle(
                                  color: Color(0xFF000000),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ), // add some spacing between the text and the TextFormField
                              Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: SizedBox(
                                  width:
                                      330, // set the width of the TextFormField
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(12.0),
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
                                    onSaved: (value) {
                                      _penanganan = value;
                                    },
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const Text(
                                "Penanganan yang Sudah Dilakukan",
                                style: TextStyle(
                                  color: Color(0xFF000000),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ), // add some spacing between the text and the TextFormField
                              Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: SizedBox(
                                  width:
                                      330, // set the width of the TextFormField
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(12.0),
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
                                    onSaved: (value) {
                                      _penanganan = value;
                                    },
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const Text(
                                "Tanggal",
                                style: TextStyle(
                                  color: Color(0xFF000000),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: Column(children: [
                                  const SizedBox(
                                    height: 3,
                                  ),
                                  SizedBox(
                                    width: 330,
                                    child: GestureDetector(
                                      onTap: () {
                                        DateTimePicker(
                                          type: DateTimePickerType
                                              .dateTimeSeparate,
                                          dateMask: 'd MMM, yyyy',
                                          initialValue:
                                              DateTime.now().toString(),
                                          firstDate: DateTime(2000),
                                          lastDate: DateTime(2100),
                                          icon: const Icon(Icons.event),
                                          dateLabelText: 'Date',
                                          timeLabelText: "Hour",
                                          selectableDayPredicate: (date) {
                                            // Disable weekend days to select from the calendar
                                            if (date.weekday == 6 ||
                                                date.weekday == 7) {
                                              return false;
                                            }

                                            return true;
                                          },
                                          onChanged: (val) => print(val),
                                          validator: (val) {
                                            print(val);
                                            return null;
                                          },
                                          onSaved: (val) => print(val),
                                        );
                                      },
                                      child: AbsorbPointer(
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        12.0)),
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
                                  ),
                                ]),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25),
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
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Text(
                          'Batal',
                          style: TextStyle(
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
                        child: const Text(
                          'Simpan',
                          style: TextStyle(
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
