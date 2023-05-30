import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddbulanScreen extends StatefulWidget {
  const AddbulanScreen({Key? key}) : super(key: key);
  static String routeName = 'AddbulanScreen';

  @override
  State<AddbulanScreen> createState() => _AddbulanScreenState();
}

class _AddbulanScreenState extends State<AddbulanScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String? _kelas;
  String? _bulan;
  String? _tahun;
  final List<String> _tahunList = ['2020', '2021', '2022', '2023', '2024', '2025'];

  

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
        title:  Text('Laporan Kehadiran Bulanan',
        style:  GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w700)),
      ),
      backgroundColor: const Color(0xFFFFFFFF),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Align(
                alignment: Alignment.center,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Container(
                        width: 360,
                        height: 330,
                        decoration: BoxDecoration(
                          color: const Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: const Color(0xFF000000).withOpacity(0.1),
                            width: 1.0,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10.0, left: 15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Kelas",
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF000000),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: SizedBox(
                                  width: 330,
                                  child: DropdownButtonFormField<String>(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(12.0),
                                      ),
                                      contentPadding: const EdgeInsets.symmetric(
                                        vertical: 16.0,
                                        horizontal: 10.0,
                                      ),
                                      hintText: 'Pilih Kelas',
                                    ),
                                    items: [
                                      'Kelas A',
                                      'Kelas B',
                                      'Kelas C',
                                      'Kelas D',
                                      'Kelas E',
                                      'Kelas F',
                                      'Kelas G',
                                      'Kelas H',
                                      'Kelas I',
                                      'Kelas J',
                                    ].map((kelas) {
                                      return DropdownMenuItem<String>(
                                        value: kelas,
                                        child: Text(kelas),
                                      );
                                    }).toList(),
                                    validator: (value) {
                                      if (value == null) {
                                        return 'Wajib diisi';
                                      }
                                      return null;
                                    },
                                    onChanged: (value) {
                                      _kelas = value!;
                                    },
                                    onSaved: (value) {
                                      _kelas = value!;
                                    },
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const Text(
                                "Bulan",
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF000000),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: SizedBox(
                                  width: 330,
                                  child: DropdownButtonFormField<String>(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(12.0),
                                      ),
                                      contentPadding: const EdgeInsets.symmetric(
                                        vertical: 16.0,
                                        horizontal: 10.0,
                                      ),
                                      hintText: 'Pilih Bulan',
                                    ),
                                    items: [
                                      'Januari',
                                      'Februari',
                                      'Maret',
                                      'April',
                                      'Mei',
                                      'Juni',
                                      'Juli',
                                      'Agustus',
                                      'September',
                                      'Oktober',
                                      'November',
                                      'Desember',
                                    ].map((bulan) {
                                      return DropdownMenuItem<String>(
                                        value: bulan,
                                        child: Text(bulan),
                                      );
                                    }).toList(),
                                    validator: (value) {
                                      if (value == null) {
                                        return 'Wajib diisi';
                                      }
                                      return null;
                                    },
                                    onChanged: (value) {
                                      _bulan = value!;
                                    },
                                    onSaved: (value) {
                                      _bulan = value!;
                                    },
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const Text(
                                "Tahun",
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF000000),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: SizedBox(
                                  width: 330,
                                  child: DropdownButtonFormField<String>(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(12.0),
                                      ),
                                      contentPadding: const EdgeInsets.symmetric(
                                        vertical: 16.0,
                                        horizontal: 10.0,
                                      ),
                                      hintText: 'Pilih Tahun',
                                    ),
                                    items: _tahunList.map((String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                                    onChanged: (String? value) {
                                      setState(() {
                                        _tahun = value!;
                                      });
                                    },
                                    value: _tahun,
                                  ),
                                ),
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
                padding: const EdgeInsets.only(top:10),
                child: Align(
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
                            content: const Text('Laporan anda berhasil disimpan'),
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
                      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      "Simpan",
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 148.0),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Transform.scale(
                    scale: 1.1,
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      width: double.infinity,
                      height: 79,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/images/footerprofil.png",
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      
    );
  }
}
