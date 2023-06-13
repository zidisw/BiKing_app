import 'package:biking_app/screens/pelaporan/admin/report_screen_ADMIN_WALI_VIEW.dart';
import 'package:biking_app/screens/pelaporan/wali_kelas/isi_pelaporan_wakel.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';

class DaftarPelaporanWaliAdminScreen extends StatefulWidget {
  const DaftarPelaporanWaliAdminScreen({Key? key}) : super(key: key);
  static String routeName = 'DaftarPelaporanWaliAdminScreen';

  @override
  State<DaftarPelaporanWaliAdminScreen> createState() =>
      _DaftarPelaporanGuruScreenState();
}

class _DaftarPelaporanGuruScreenState extends State<DaftarPelaporanWaliAdminScreen> {
  late Stream<QuerySnapshot> _laporanStream;
  String? selectedReportId;

  @override
  void initState() {
    super.initState();
    _laporanStream = FirebaseFirestore.instance
        .collection('laporan_wali')
        .orderBy('Tanggal', descending: true)
        .snapshots();
  }

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
          'Kartu Komunikasi',
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      backgroundColor: const Color(0xFFFFFFFF),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 13, left: 15),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    children: [
                      Text(
                        "Daftar Kartu Komunikasi",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.poppins(
                          color: const Color(0xFF0579CC),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              StreamBuilder<QuerySnapshot>(
                stream: _laporanStream,
                builder: (BuildContext context,
                    AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (snapshot.hasError) {
                    return Text('Error: ${snapshot.error}');
                  }

                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const CircularProgressIndicator();
                  }

                  final List<DocumentSnapshot> documents = snapshot.data!.docs;

                  return ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: documents.length,
                    itemBuilder: (BuildContext context, int index) {
                      final Map<String, dynamic> data =
                          documents[index].data() as Map<String, dynamic>;
                      final Timestamp timestamp = data['Tanggal'] as Timestamp;
                      final DateTime dateTime = timestamp.toDate();
                      final String formattedDateTime =
                          DateFormat('yyyy-MM-dd HH:mm:ss').format(dateTime);
                      final laporan = documents[index];

                      return Padding(
                        padding:
                            const EdgeInsets.only(left: 10, right: 10, top: 10),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Padding(
                            padding:
                                const EdgeInsets.only(top: 8.0, bottom: 8.0),
                            child: ListTile(
                              onTap: () {
                                String laporanID = laporan.id;
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        IsiPelaporanWaliAdminScreen(laporanID: laporanID),
                                  ),
                                );
                              },
                              leading: const Icon(Icons.description,
                                  size: 40, color: Colors.blue),
                              title: Text(
                                formattedDateTime.toString(),
                                style: GoogleFonts.poppins(
                                  color: const Color(0xFF000000),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
