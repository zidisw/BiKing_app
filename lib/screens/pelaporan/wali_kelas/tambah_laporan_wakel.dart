import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class WaliTambahlaporan extends StatefulWidget {
  const WaliTambahlaporan({super.key});

  @override
  State<WaliTambahlaporan> createState() => _WaliTambahlaporanState();
}

class _WaliTambahlaporanState extends State<WaliTambahlaporan> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  int _selectedIndex = 0;
  String? _kelas;
  String? _nama;
  String? _masalah;
  String? _penanganan;

  static List<Widget> _widgetOptions = <Widget>[
    Text('Beranda'),
    Text('Profil'),
    Text('Pelaporan'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    if (index == 3) {
      // Jika item yang diklik adalah "Pelaporan"
      _nextPage(); // Panggil fungsi _nextPage
    }
  }

  void _nextPage() {
    Navigator.push(
      // Navigasi ke halaman selanjutnya di sini
      context,
      MaterialPageRoute(builder: (context) => WaliTambahlaporan()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Laporan Penanganan Wali Kelas'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      backgroundColor: Color(0xFFFFFFFF),
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
                        height: 740,
                        decoration: BoxDecoration(
                          color: Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Color(0xFF000000).withOpacity(0.1),
                            width: 1.0,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 25.0, left: 15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Nama Siswa",
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF000000),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
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
                                    contentPadding: EdgeInsets.symmetric(
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
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "Kelas",
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF000000),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
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
                                      contentPadding: EdgeInsets.symmetric(
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
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "Masalah",
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF000000),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
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
                                      contentPadding: EdgeInsets.symmetric(
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
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "Penanganan yang Sudah Dilakukan",
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF000000),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
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
                                      contentPadding: EdgeInsets.symmetric(
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
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "Tanggal",
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF000000),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: Column(children: [
                                  SizedBox(
                                    height: 3,
                                  ),
                                  SizedBox(
                                    width: 330,
                                    child: GestureDetector(
                                      onTap: () {
                                        DatePicker.showDatePicker(
                                          context,
                                          showTitleActions: true,
                                          minTime: DateTime(2022, 1, 1),
                                          maxTime: DateTime(2023, 12, 31),
                                          onConfirm: (date) {
                                            // tangkap tanggal yang dipilih
                                          },
                                          currentTime: DateTime.now(),
                                          locale: LocaleType.id,
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
                                                EdgeInsets.symmetric(
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
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Row(
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
                            content: Text('Laporan anda berhasil dikirim'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text('OK'),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      "Kirim",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.note_alt_outlined),
            label: 'Pelaporan',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}
