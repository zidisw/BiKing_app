import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BuatLaporan extends StatefulWidget {
  const BuatLaporan({Key? key}) : super(key: key);
  static String routeName = 'BuatLaporan';


  @override
  _BuatLaporanState createState() => _BuatLaporanState();
}

class _BuatLaporanState extends State<BuatLaporan> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String? _kelas;
  String? _nama;
  String? _masalah;


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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 25,
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
                      width: 345,
                      height: 535,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Form(
                          key: _formKey,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 6.0),
                                child: Text(
                                  "Kelas",
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 7.0, right: 8.0),
                                child: Column(children: [
                                  const SizedBox(
                                    height: 3,
                                  ),
                                  TextFormField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(12.0)),
                                      contentPadding: const EdgeInsets.symmetric(
                                        vertical: 16.0,
                                        horizontal: 10.0,
                                      ),
                                      hintText: 'Masukkan kelas',
                                    ),
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'Kelas harus diisi';
                                      }
                                      return null;
                                    },
                                    onSaved: (value) {
                                      _kelas = value;
                                    },
                                  ),
                                ]),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 6.0),
                                child: Text(
                                  "Nama",
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 7.0, right: 8.0),
                                child: Column(
                                  children: [
                                    const SizedBox(
                                      height: 3,
                                    ),
                                    TextFormField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(12.0)),
                                        contentPadding: const EdgeInsets.symmetric(
                                          vertical: 16.0,
                                          horizontal: 10.0,
                                        ),
                                        hintText: 'Masukkan nama',
                                      ),
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return 'Nama harus diisi';
                                        }
                                        return null;
                                      },
                                      onSaved: (value) {
                                        _nama = value;
                                      },
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 6.0),
                                child: Text(
                                  "Masalah yang sedang dialami/dirasakan",
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 7.0, right: 8.0),
                                child: Column(
                                  children: [
                                    const SizedBox(
                                      height: 3,
                                    ),
                                    TextFormField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(12.0)),
                                        contentPadding: const EdgeInsets.symmetric(
                                          vertical: 60.0, // ubah nilai vertical
                                          horizontal: 10.0,
                                        ),
                                        hintText: 'Masukkan masalah',
                                      ),
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return 'Masalah harus diisi';
                                        }
                                        return null;
                                      },
                                      onSaved: (value) {
                                        _masalah = value;
                                      },
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 6.0),
                                child: Text(
                                  "Tanggal Laporan",
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 7.0, right: 8.0),
                                child: Column(children: [
                                  const SizedBox(
                                    height: 3,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      DateTimePicker(
                                        type:
                                            DateTimePickerType.dateTimeSeparate,
                                        dateMask: 'd MMM, yyyy',
                                        initialValue: DateTime.now().toString(),
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
                                                  BorderRadius.circular(12.0)),
                                          contentPadding: const EdgeInsets.symmetric(
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
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: ElevatedButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: const Row(
                                  children: [
                                    Icon(
                                      Icons.check_circle,
                                      color: Colors.green,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text('Sukses'),
                                  ],
                                ),
                                content: const Text('Laporan anda berhasil dikirim'),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: const Text('OK'),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 40, vertical: 10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Text(
                          "Kirim",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
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
