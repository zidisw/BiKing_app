import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EditKartuScreen extends StatefulWidget {
  const EditKartuScreen({super.key});
  static String routeName = 'EditKartuScreen';

  @override
  _EditKartuScreenState createState() => _EditKartuScreenState();
}

class _EditKartuScreenState extends State<EditKartuScreen> {
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
        title: Text('Pelaporan',
        style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w700)),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left:20, right:20),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: const Color(0xFF000000).withOpacity(0.16),
                            width: 1.0,
                          ),
                        ),padding: const EdgeInsets.symmetric(
                                    vertical: 13.0, horizontal: 10.0),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Form(
                            key: _formKey,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                               Padding(
                                  padding: const EdgeInsets.only(left: 6.0),
                                  child: Text(
                                    "Kepada",
                                    style: GoogleFonts.poppins(
                                     
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
                                        hintText: 'Kesiswaan/Wali Kelas/BK/Guru',
                                      ),
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return 'Wajib diisi';
                                        }
                                        return null;
                                      },
                                      onSaved: (value) {
                                      },
                                    ),
                                  ]),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                               Padding(
                                  padding: const EdgeInsets.only(left: 6.0),
                                  child: Text(
                                    "Nama",
                                    style: GoogleFonts.poppins(
                                     
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
                                          hintText:
                                              'Kesiswaan/Wali Kelas/BK/Guru',
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
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                               Padding(
                                  padding: const EdgeInsets.only(left: 6.0),
                                  child: Text(
                                    "Siswa di bawah ini perlu ditangani masalahnya",
                                    style: GoogleFonts.poppins(
                                     
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                               Padding(
                                  padding: const EdgeInsets.only(left: 6.0),
                                  child: Text(
                                    "Nama",
                                    style: GoogleFonts.poppins(
                                     
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
                                          hintText: 'Masukkan nama Anda',
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
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                               Padding(
                                  padding: const EdgeInsets.only(left: 6.0),
                                  child: Text(
                                    "Kelas",
                                    style: GoogleFonts.poppins(
                                     
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
                                          hintText: 'Masukkan kelas Anda',
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
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 6.0),
                                  child: Text(
                                    "Deskripsi Masalah / Penanganan yang Telah dilakukan",
                                    style: GoogleFonts.poppins(
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
                                          hintText: 'Tambahkan deskripsi',
                                        ),
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return 'Deskripsi harus diisi';
                                          }
                                          return null;
                                        },
                                        onSaved: (value) {
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                               Padding(
                                  padding: const EdgeInsets.only(left: 6.0),
                                  child: Text(
                                    "Saran / Tindak Lanjut",
                                    style: GoogleFonts.poppins(
                                     
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
                                          hintText: 'Tambahkan deskripsi',
                                        ),
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return 'Deskripsi harus diisi';
                                          }
                                          return null;
                                        },
                                        onSaved: (value) {
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                               Padding(
                                  padding: const EdgeInsets.only(left: 6.0),
                                  child: Text(
                                    "Tanggal Laporan",
                                    style: GoogleFonts.poppins(
                                     
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
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
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
            ],
          ),
        ),
      ),
    );
  }
}
