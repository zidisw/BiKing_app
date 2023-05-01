import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class IsiLaporan extends StatefulWidget {
  @override
  _IsiLaporanState createState() => _IsiLaporanState();
}

class _IsiLaporanState extends State<IsiLaporan> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  int _selectedIndex = 0;
  String? _kelas;
  String? _nama;
  String? _masalah;

  static List<Widget> _widgetOptions = <Widget>[
    Text('Beranda'),
    Text('Profil'),
    Text('Pelaporan'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _submitForm() {
    if (_formKey.currentState?.validate() == true) {
      _formKey.currentState?.save();
      // Proses pengiriman data ke API atau database
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pelaporan'),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: Color(0xFF000000).withOpacity(0.16),
                          width: 1.0,
                        ),
                      ),
                      width: 335,
                      height: 500,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15.0, left: 3.0),
                        child: Form(
                          key: _formKey,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 6.0),
                                child: Text(
                                  "Kelas",
                                  style: TextStyle(
                                    color: Color(0xFF584D99),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 7.0, right: 8.0),
                                child: Column(children: [
                                  SizedBox(
                                    height: 3,
                                  ),
                                  TextFormField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(12.0)),
                                      contentPadding: EdgeInsets.symmetric(
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
                              SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 6.0),
                                child: Text(
                                  "Nama",
                                  style: TextStyle(
                                    color: Color(0xFF584D99),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 7.0, right: 8.0),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 3,
                                    ),
                                    TextFormField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(12.0)),
                                        contentPadding: EdgeInsets.symmetric(
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
                              SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 6.0),
                                child: Text(
                                  "Masalah yang sedang dialami/dirasakan",
                                  style: TextStyle(
                                    color: Color(0xFF584D99),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 7.0, right: 8.0),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 3,
                                    ),
                                    TextFormField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(12.0)),
                                        contentPadding: EdgeInsets.symmetric(
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
                              SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 6.0),
                                child: Text(
                                  "Tanggal Laporan",
                                  style: TextStyle(
                                    color: Color(0xFF584D99),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 7.0, right: 8.0),
                                child: Column(children: [
                                  SizedBox(
                                    height: 3,
                                  ),
                                  GestureDetector(
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
                                                  BorderRadius.circular(12.0)),
                                          contentPadding: EdgeInsets.symmetric(
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
                    Align(
                      alignment: Alignment.topCenter,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFFFFFFF),
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                color: Color(0xFF000000).withOpacity(0.16),
                                width: 1.0,
                              ),
                            ),
                            width: 335,
                            height: 150,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(top: 11.0, left: 3.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: Text(
                                      "1 Tanggapan",
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 135, 131, 155),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 15),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(width: 10),
                                      Image.asset(
                                        'assets/orang.png',
                                        width: 40,
                                        height: 40,
                                      ),
                                      SizedBox(width: 10),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 6.0),
                                              child: Text(
                                                "Guru BK 1",
                                                style: TextStyle(
                                                  color: Color(0xFF584D99),
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 6.0),
                                              child: Text(
                                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec fringilla quam eu faci lisis mollis.",
                                                style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 135, 131, 155),
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
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
