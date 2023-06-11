import 'package:biking_app/screens/pelaporan/guru/edit_kartu_laporan.dart';
import 'isi_kartu_komunikasi.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';

class DaftarPelaporanGuruScreen extends StatefulWidget {
  const DaftarPelaporanGuruScreen({Key? key}) : super(key: key);
  static String routeName = 'DaftarPelaporanGuruScreen';

  @override
  State<DaftarPelaporanGuruScreen> createState() =>
      _DaftarPelaporanGuruScreenState();
}

class _DaftarPelaporanGuruScreenState
    extends State<DaftarPelaporanGuruScreen> {
  late Stream<QuerySnapshot> _laporanStream;
  late String _currentUserId;
  String? selectedReportId;

  @override
  void initState() {
    super.initState();
    _currentUserId = FirebaseAuth.instance.currentUser!.uid;
    _laporanStream = FirebaseFirestore.instance
        .collection('laporan_guru')
        .where('UserID', isEqualTo: _currentUserId)
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
                      final String tanggal = data['Tanggal'] as String;
                      

                      final laporan = documents[index];

                      return Card(
                        child: ListTile(
                          onTap: () {
                            String laporanID = laporan.id;
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    IsiKartuScreen(laporanID: laporanID),
                              ),
                            );
                          },
                          title: Text(
                            tanggal.toString(),
                            style: GoogleFonts.poppins(
                              color: const Color(0xFF000000),
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          subtitle: Text(
                            "Diproses",
                            style: GoogleFonts.poppins(
                              color: const Color(0xFF000000).withOpacity(0.5),
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          trailing: IconButton(
                            icon: const Icon(Icons.edit),
                            onPressed: () {
                              String laporanID = laporan.id;
                              final Map<String, dynamic> data = documents[index]
                                  .data() as Map<String, dynamic>;

                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => EditKartuScreen(
                                    laporanID: laporanID,
                                    initialNama: data[
                                        'Nama'], // Retrieve the initial values from the 'data' map
                                    initialKelas: data['Kelas Siswa'],
                                    initialMasalah: data['Deskripsi'],
                                    initialNomor: data['Nomor'],
                                  ),
                                ),
                              );
                            },
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
