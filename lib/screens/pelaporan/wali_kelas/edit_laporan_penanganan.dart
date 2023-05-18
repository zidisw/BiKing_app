import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class EditlaporanpenangananScreen extends StatefulWidget {
  const EditlaporanpenangananScreen({super.key});

  @override
  State<EditlaporanpenangananScreen> createState() =>
      _EditlaporanpenangananScreenState();
}

class _EditlaporanpenangananScreenState
    extends State<EditlaporanpenangananScreen> {
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
      MaterialPageRoute(builder: (context) => EditlaporanpenangananScreen()),
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
                        height: 720,
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
                                  color: Color(0xFF000000),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
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
                                  color: Color(0xFF000000),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
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
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(25),
                child: Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          // kode untuk tombol Batal
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey,
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text(
                          'Batal',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 40),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          // kode untuk tombol Simpan
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text(
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
