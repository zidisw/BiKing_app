import 'package:biking_app/screens/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:biking_app/screens/pelaporan/wali_kelas/buat_laporan_kehadiran.dart';
import 'package:biking_app/screens/pelaporan/wali_kelas/isi_laporan_kehadiran.dart';
import 'package:biking_app/screens/pelaporan/wali_kelas/tambah_laporan_kehadiran.dart';
import 'package:google_fonts/google_fonts.dart';


class LaporanBulanan extends StatefulWidget {
  const LaporanBulanan({Key? key}) : super(key: key);
  static String routeName = 'LaporanBulanan';

  @override
  _LaporanBulananState createState() => _LaporanBulananState();
}

class _LaporanBulananState extends State<LaporanBulanan> {
  
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
        title:  Text('Pelaporan',
        style:  GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w700)),
      ),
        backgroundColor: const Color(0xFFFFFFFF),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 25),
                            child: Text(
                              "Daftar Laporan Kehadiran Bulanan Siswa",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Color(0xFF0579CC),
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          )
                        ]),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 60,
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
                        width: 355,
                        height: 175,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10.0, left: 3.0),
                          child: Wrap(
                            crossAxisAlignment: WrapCrossAlignment.start,
                            children: [
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 3),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        FittedBox(
                                          fit: BoxFit.scaleDown,
                                          child: SizedBox(
                                            width: 130,
                                            child: Text(
                                              'Nabila',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                color: Colors.black,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 15),
                                        Text(
                                          'Perempuan - Islam',
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            color: Colors.black,
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFFFFFFF),
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(
                                        color:
                                            const Color(0xFF000000).withOpacity(0.16),
                                        width: 1.0,
                                      ),
                                    ),
                                    width: 55,
                                    height: 55,
                                    child: const Padding(
                                      padding: EdgeInsets.only(top: 5.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Sakit',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 3,
                                          ),
                                          Text(
                                            '1',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),

                                  const SizedBox(
                                      height:
                                          5), // tambahkan SizedBox dengan height 4
                                ],
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFFFFFFF),
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(
                                        color:
                                            const Color(0xFF000000).withOpacity(0.16),
                                        width: 1.0,
                                      ),
                                    ),
                                    width: 55,
                                    height: 55,
                                    child: const Padding(
                                      padding: EdgeInsets.only(top: 5.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Ijin',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 3,
                                          ),
                                          Text(
                                            '1',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFFFFFFF),
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(
                                        color:
                                            const Color(0xFF000000).withOpacity(0.16),
                                        width: 1.0,
                                      ),
                                    ),
                                    width: 55,
                                    height: 55,
                                    child: const Padding(
                                      padding: EdgeInsets.only(top: 5.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Alpa',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 3,
                                          ),
                                          Text(
                                            '0',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(height: 10),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: const Color(0xFFFFFFFF),
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            border: Border.all(
                                              color: const Color(0xFF000000)
                                                  .withOpacity(0.16),
                                              width: 1.0,
                                            ),
                                          ),
                                          width: 327,
                                          height: 30,
                                          child: const Padding(
                                            padding: EdgeInsets.only(
                                                top: 5, left: 10),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Tidak ada keterangan',
                                                  style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    color: Colors.grey,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w300,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),

                                        const SizedBox(
                                          height: 7,
                                        ),
                                        // Tambahkan tombol di sini
                                        Center(
                                          child: ElevatedButton(
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      const AddbulanScreen(),
                                                ),
                                              );
                                            },
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  const Color(0xFF38ACFF),
                                              padding: const EdgeInsets.symmetric(
                                                  horizontal: 20, vertical: 3),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                              fixedSize: const Size(
                                                80,
                                                2,
                                              ), // menentukan tinggi dan lebar
                                            ),
                                            child: const Text(
                                              "Edit",
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                color: Colors.white,
                                                fontSize: 13,
                                                fontWeight: FontWeight.w500,
                                              ),
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
                Align(
                  alignment: Alignment.topCenter,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 250,
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
                        width: 355,
                        height: 175,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10.0, left: 3.0),
                          child: Wrap(
                            crossAxisAlignment: WrapCrossAlignment.start,
                            children: [
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 3),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        FittedBox(
                                          fit: BoxFit.scaleDown,
                                          child: SizedBox(
                                            width: 130,
                                            child: Text(
                                              'Rayhan Aryathama Putra',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                color: Colors.black,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                        Text(
                                          'Laki-laki - Islam',
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            color: Colors.black,
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFFFFFFF),
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(
                                        color:
                                            const Color(0xFF000000).withOpacity(0.16),
                                        width: 1.0,
                                      ),
                                    ),
                                    width: 55,
                                    height: 55,
                                    child: const Padding(
                                      padding: EdgeInsets.only(top: 5.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Sakit',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 3,
                                          ),
                                          Text(
                                            '0',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),

                                  const SizedBox(
                                      height:
                                          5), // tambahkan SizedBox dengan height 4
                                ],
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFFFFFFF),
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(
                                        color:
                                            const Color(0xFF000000).withOpacity(0.16),
                                        width: 1.0,
                                      ),
                                    ),
                                    width: 55,
                                    height: 55,
                                    child: const Padding(
                                      padding: EdgeInsets.only(top: 5.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Ijin',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 3,
                                          ),
                                          Text(
                                            '0',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFFFFFFF),
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(
                                        color:
                                            const Color(0xFF000000).withOpacity(0.16),
                                        width: 1.0,
                                      ),
                                    ),
                                    width: 55,
                                    height: 55,
                                    child: const Padding(
                                      padding: EdgeInsets.only(top: 5.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Alpa',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 3,
                                          ),
                                          Text(
                                            '1',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(height: 6),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: const Color(0xFFFFFFFF),
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            border: Border.all(
                                              color: const Color(0xFF000000)
                                                  .withOpacity(0.16),
                                              width: 1.0,
                                            ),
                                          ),
                                          width: 327,
                                          height: 30,
                                          child: const Padding(
                                            padding: EdgeInsets.only(
                                                top: 5, left: 10),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Tidak ada keterangan',
                                                  style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    color: Colors.grey,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w300,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),

                                        const SizedBox(
                                          height: 2,
                                        ),
                                        // Tambahkan tombol di sini
                                        Center(
                                          child: ElevatedButton(
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      const HomeScreen(),
                                                ),
                                              );
                                            },
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  const Color(0xFF38ACFF),
                                              padding: const EdgeInsets.symmetric(
                                                  horizontal: 20, vertical: 3),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                              fixedSize: const Size(
                                                80,
                                                2,
                                              ), // menentukan tinggi dan lebar
                                            ),
                                            child: const Text(
                                              "Edit",
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                color: Colors.white,
                                                fontSize: 13,
                                                fontWeight: FontWeight.w500,
                                              ),
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
                Align(
                  alignment: Alignment.topCenter,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 440,
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
                        width: 355,
                        height: 175,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10.0, left: 3.0),
                          child: Wrap(
                            crossAxisAlignment: WrapCrossAlignment.start,
                            children: [
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 3),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        FittedBox(
                                          fit: BoxFit.scaleDown,
                                          child: SizedBox(
                                            width: 130,
                                            child: Text(
                                              'Mutia Rahman Jay',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                color: Colors.black,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                        Text(
                                          'Perempuan - Islam',
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            color: Colors.black,
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFFFFFFF),
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(
                                        color:
                                            const Color(0xFF000000).withOpacity(0.16),
                                        width: 1.0,
                                      ),
                                    ),
                                    width: 55,
                                    height: 55,
                                    child: const Padding(
                                      padding: EdgeInsets.only(top: 5.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Sakit',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 3,
                                          ),
                                          Text(
                                            '0',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),

                                  const SizedBox(
                                      height:
                                          5), // tambahkan SizedBox dengan height 4
                                ],
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFFFFFFF),
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(
                                        color:
                                            const Color(0xFF000000).withOpacity(0.16),
                                        width: 1.0,
                                      ),
                                    ),
                                    width: 55,
                                    height: 55,
                                    child: const Padding(
                                      padding: EdgeInsets.only(top: 5.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Ijin',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 3,
                                          ),
                                          Text(
                                            '1',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFFFFFFF),
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(
                                        color:
                                            const Color(0xFF000000).withOpacity(0.16),
                                        width: 1.0,
                                      ),
                                    ),
                                    width: 55,
                                    height: 55,
                                    child: const Padding(
                                      padding: EdgeInsets.only(top: 5.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Alpa',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 3,
                                          ),
                                          Text(
                                            '0',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(height: 6),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: const Color(0xFFFFFFFF),
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            border: Border.all(
                                              color: const Color(0xFF000000)
                                                  .withOpacity(0.16),
                                              width: 1.0,
                                            ),
                                          ),
                                          width: 327,
                                          height: 30,
                                          child: const Padding(
                                            padding: EdgeInsets.only(
                                                top: 5, left: 10),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Tidak ada keterangan',
                                                  style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    color: Colors.grey,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w300,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),

                                        const SizedBox(
                                          height: 2,
                                        ),
                                        // Tambahkan tombol di sini
                                        Center(
                                          child: ElevatedButton(
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      const BuatKehadiran(),
                                                ),
                                              );
                                            },
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  const Color(0xFF38ACFF),
                                              padding: const EdgeInsets.symmetric(
                                                  horizontal: 20, vertical: 3),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                              fixedSize: const Size(
                                                80,
                                                2,
                                              ), // menentukan tinggi dan lebar
                                            ),
                                            child: const Text(
                                              "Edit",
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                color: Colors.white,
                                                fontSize: 13,
                                                fontWeight: FontWeight.w500,
                                              ),
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
                Align(
                  alignment: Alignment.topCenter,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 630,
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
                        width: 355,
                        height: 175,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10.0, left: 3.0),
                          child: Wrap(
                            crossAxisAlignment: WrapCrossAlignment.start,
                            children: [
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 3),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        FittedBox(
                                          fit: BoxFit.scaleDown,
                                          child: SizedBox(
                                            width: 130,
                                            child: Text(
                                              'Zid Irsyadin Sartono Wijaogy',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                color: Colors.black,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                        Text(
                                          'Laki-laki - Islam',
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            color: Colors.black,
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFFFFFFF),
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(
                                        color:
                                            const Color(0xFF000000).withOpacity(0.16),
                                        width: 1.0,
                                      ),
                                    ),
                                    width: 55,
                                    height: 55,
                                    child: const Padding(
                                      padding: EdgeInsets.only(top: 5.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Sakit',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 3,
                                          ),
                                          Text(
                                            '0',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),

                                  const SizedBox(
                                      height:
                                          5), // tambahkan SizedBox dengan height 4
                                ],
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFFFFFFF),
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(
                                        color:
                                            const Color(0xFF000000).withOpacity(0.16),
                                        width: 1.0,
                                      ),
                                    ),
                                    width: 55,
                                    height: 55,
                                    child: const Padding(
                                      padding: EdgeInsets.only(top: 5.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Ijin',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 3,
                                          ),
                                          Text(
                                            '0',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFFFFFFF),
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(
                                        color:
                                            const Color(0xFF000000).withOpacity(0.16),
                                        width: 1.0,
                                      ),
                                    ),
                                    width: 55,
                                    height: 55,
                                    child: const Padding(
                                      padding: EdgeInsets.only(top: 5.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Alpa',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 3,
                                          ),
                                          Text(
                                            '10',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(height: 6),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: const Color(0xFFFFFFFF),
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            border: Border.all(
                                              color: const Color(0xFF000000)
                                                  .withOpacity(0.16),
                                              width: 1.0,
                                            ),
                                          ),
                                          width: 327,
                                          height: 30,
                                          child: const Padding(
                                            padding: EdgeInsets.only(
                                                top: 5, left: 10),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Tidak ada keterangan',
                                                  style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    color: Colors.grey,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w300,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),

                                        const SizedBox(
                                          height: 2,
                                        ),
                                        // Tambahkan tombol di sini
                                        Center(
                                          child: ElevatedButton(
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                     const IsiKehadiran(),
                                                ),
                                              );
                                            },
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  const Color(0xFF38ACFF),
                                              padding: const EdgeInsets.symmetric(
                                                  horizontal: 20, vertical: 3),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                              fixedSize: const Size(
                                                80,
                                                2,
                                              ), // menentukan tinggi dan lebar
                                            ),
                                            child: const Text(
                                              "Edit",
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                color: Colors.white,
                                                fontSize: 13,
                                                fontWeight: FontWeight.w500,
                                              ),
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
                )
              ],
            ),
          ),
        ),
    );
  }
}
