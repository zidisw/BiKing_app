import 'package:biking_app/screens/pelaporan/guru/edit_kartu_laporan.dart';
import 'package:biking_app/screens/pelaporan/guru/isi_kartu_komunikasi.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DaftarPelaporanScreen extends StatefulWidget {
  const DaftarPelaporanScreen({Key? key}) : super(key: key);
  static String routeName = 'DaftarPelaporanScreen';

  @override
  State<DaftarPelaporanScreen> createState() => _DaftarPelaporanScreenState();
}

class _DaftarPelaporanScreenState extends State<DaftarPelaporanScreen> {
  late Stream<QuerySnapshot> _laporanStream;

  @override
  void initState() {
    super.initState();
    _laporanStream = FirebaseFirestore.instance
        .collection('laporan_guru')
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
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 13, left: 20),
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
                    final DateTime tanggal = timestamp.toDate();

                    return Card(
                      child: ListTile(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const IsiKartuScreen(),
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
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const EditKartuScreen(),
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
    );
  }
}
