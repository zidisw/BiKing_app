import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class BuatKehadiran extends StatefulWidget {
  const BuatKehadiran({Key? key}) : super(key: key);
  static String routeName = 'BuatKehadiran';

  @override
  _BuatKehadiranState createState() => _BuatKehadiranState();
}

class _BuatKehadiranState extends State<BuatKehadiran> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();


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
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: const Color(0xFF000000).withOpacity(0.16),
                            width: 1.0,
                          ),
                        ),
                        padding: const EdgeInsets.symmetric(
                                    vertical: 13.0, horizontal: 10.0),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, bottom: 10, top: 5),
                          child: Form(
                            key: _formKey,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Nama",
                                  style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Column(
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
                                        hintText: 'Nama Siswa',
                                      ),
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return 'Nama harus diisi';
                                        }
                                        return null;
                                      },
                                      onSaved: (value) {
                                      },
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "Kelas",
                                  style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Column(children: [
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
                                    },
                                  ),
                                ]),
                                const SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "NISN",
                                  style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Column(
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
                                        hintText: 'NISN',
                                      ),
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return 'NISN diisi';
                                        }
                                        return null;
                                      },
                                      onSaved: (value) {
                                      },
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "Jenis Kelamin",
                                  style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Column(
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
                                        hintText: 'Laki-Laki/Perempuan',
                                      ),
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return 'Jenis Kelamin harus diisi';
                                        }
                                        return null;
                                      },
                                      onSaved: (value) {
                                      },
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "Agama",
                                  style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Column(
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
                                        hintText: 'Agama',
                                      ),
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return 'Agama harus diisi';
                                        }
                                        return null;
                                      },
                                      onSaved: (value) {
                                      },
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "Jumlah",
                                  style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Column(
                                  children: [
                                    const SizedBox(
                                      height: 3,
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: TextFormField(
                                            decoration: InputDecoration(
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              contentPadding:
                                                  const EdgeInsets.symmetric(
                                                vertical: 16.0,
                                                horizontal: 10.0,
                                              ),
                                              hintText: 'Sakit',
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                            width:
                                                10), // tambahkan jarak antar kolom
                                        Expanded(
                                          child: TextFormField(
                                            decoration: InputDecoration(
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              contentPadding:
                                                  const EdgeInsets.symmetric(
                                                vertical: 16.0,
                                                horizontal: 10.0,
                                              ),
                                              hintText: 'Ijin',
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                            width:
                                                10), // tambahkan jarak antar kolom
                                        Expanded(
                                          child: TextFormField(
                                            decoration: InputDecoration(
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              contentPadding:
                                                  const EdgeInsets.symmetric(
                                                vertical: 16.0,
                                                horizontal: 10.0,
                                              ),
                                              hintText: 'Alpa',
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "Keterangan",
                                  style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Column(
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
                                        hintText: 'Keterangan',
                                      ),
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return 'Keterangan harus diisi';
                                        }
                                        return null;
                                      },
                                      onSaved: (value) {
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
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
                          child: Text(
                            "Kirim",
                            style: GoogleFonts.poppins(
                              color: const Color.fromARGB(255, 255, 255, 255),
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
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
