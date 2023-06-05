import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WaliTambahlaporan extends StatefulWidget {
  const WaliTambahlaporan({Key? key}) : super(key: key);
  static String routeName = 'WaliTambahlaporan';

  @override
  State<WaliTambahlaporan> createState() => _WaliTambahlaporanState();
}

class _WaliTambahlaporanState extends State<WaliTambahlaporan> {
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
                GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w500)),
      ),
      backgroundColor: const Color(0xFFFFFFFF),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
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
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, bottom: 10, top: 5),
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
                              const SizedBox(
                                  height:
                                      3), // add some spacing between the text and the TextFormField
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
                                  fontWeight: FontWeight.w600,
                                ),
                              ), // add some spacing between the text and the TextFormField
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
                                  onSaved: (value) {},
                                ),
                              ]),
                              const SizedBox(
                                height: 15,
                              ),
                              Text(
                                "Masalah",
                                style: GoogleFonts.poppins(
                                  color: Color(0xFF000000),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ), // add some spacing between the text and the TextFormField
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
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                        vertical: 70.0,
                                        horizontal: 16.0,
                                      ),
                                      hintText: 'Masukkan Masalah Anda',
                                    ),
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'wajib diisi';
                                      }
                                      return null;
                                    },
                                    onSaved: (value) {},
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Text(
                                "Penanganan yang Sudah dilakukan",
                                style: GoogleFonts.poppins(
                                  color: Color(0xFF000000),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ), // add some spacing between the text and the TextFormField
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
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                        vertical: 70.0,
                                        horizontal: 16.0,
                                      ),
                                      hintText:
                                          'Masukkan Penanganan yang dilakukan',
                                    ),
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'wajib diisi';
                                      }
                                      return null;
                                    },
                                    onSaved: (value) {},
                                  ),
                                ],
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
                padding: const EdgeInsets.only (bottom: 20),
                child: Align(
                  alignment: Alignment.topCenter,
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
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      "Kirim",
                      style: GoogleFonts.poppins(
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
    );
  }
}
