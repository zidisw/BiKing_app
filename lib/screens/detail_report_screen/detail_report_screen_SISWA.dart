import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ReportScreen extends StatefulWidget {
  static String routeName = 'DetailReportScreenSiswa';
  @override
  _ReportScreenState createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
  String? selectedDocumentId;

  Future<void> _showEditDialog({DocumentSnapshot? report}) async {
    final TextEditingController masalahController = TextEditingController();
    final TextEditingController namaController = TextEditingController();
    final TextEditingController detailController = TextEditingController();

    if (report != null) {
      masalahController.text = report['Masalah'] ?? '';
      namaController.text = report['Nama'] ?? '';
      detailController.text = report['Detail'] ?? '';
    }

    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(report != null ? 'Edit Report' : 'Add Report'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: namaController,
                decoration: InputDecoration(
                  labelText: 'Nama',
                ),
                style: TextStyle(color: Colors.black),
              ),
              TextField(
                controller: masalahController,
                decoration: InputDecoration(
                  labelText: 'Masalah',
                ),
                style: TextStyle(color: Colors.black),
              ),
              TextField(
                controller: detailController,
                decoration: InputDecoration(
                  labelText: 'Detail',
                ),
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
          actions: [
            ElevatedButton(
              child: Text('Save'),
              onPressed: () {
                String masalah = masalahController.text.trim();
                String nama = namaController.text.trim();
                String detail = detailController.text.trim();

                // Perform necessary validation and submit logic
                if (report != null) {
                  // Update existing report logic
                  _editReport(report.id, masalah, detail, nama);
                } else {
                  // Add new report logic
                  _addReport(masalah, detail, nama);
                }

                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            ElevatedButton(
              onPressed: () {
                _showDeleteConfirmationDialog(context, selectedDocumentId!);
              },
              child: Text('Delete'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
              ),
            ),
          ],
        );
      },
    );
  }

  Future<void> _showAddDialog({DocumentSnapshot? report}) async {
    final TextEditingController masalahController = TextEditingController();
    final TextEditingController namaController = TextEditingController();
    final TextEditingController detailController = TextEditingController();

    if (report != null) {
      masalahController.text = report['Masalah'] ?? '';
      namaController.text = report['Nama'] ?? '';
      detailController.text = report['Detail'] ?? '';
    }

    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(report != null ? 'Edit Report' : 'Add Report'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: namaController,
                decoration: InputDecoration(
                  labelText: 'Nama',
                ),
                style: TextStyle(color: Colors.black),
              ),
              TextField(
                controller: masalahController,
                decoration: InputDecoration(
                  labelText: 'Masalah',
                ),
                style: TextStyle(color: Colors.black),
              ),
              TextField(
                controller: detailController,
                decoration: InputDecoration(
                  labelText: 'Detail',
                ),
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
          actions: [
            ElevatedButton(
              child: Text('Save'),
              onPressed: () {
                String masalah = masalahController.text.trim();
                String nama = namaController.text.trim();
                String detail = detailController.text.trim();

                // Perform necessary validation and submit logic
                if (report != null) {
                  // Update existing report logic
                  _editReport(report.id, masalah, detail, nama);
                } else {
                  // Add new report logic
                  _addReport(masalah, detail, nama);
                }

                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Future<void> _addReport(String masalah, String detail, String nama) async {
    try {
      await FirebaseFirestore.instance.collection('report_siswa').add({
        'Masalah': masalah,
        'Detail': detail,
        'Nama': nama,
      });
      // Success message or further processing
    } catch (error) {
      // Error handling
    }
  }

  Future<void> _editReport(String documentId, String masalah, String detail, String nama) async {
    try {
      await FirebaseFirestore.instance.collection('report_siswa').doc(documentId).update({
        'Masalah': masalah,
        'Detail': detail,
        'Nama': nama,
      });
      // Success message or further processing
    } catch (error) {
      // Error handling
    }
  }

  Future<void> _deleteReport(String documentId) async {
    try {
      await FirebaseFirestore.instance.collection('report_siswa').doc(documentId).delete();
    } catch (e) {
      // Handle any errors that occur during deletion
      print('Error deleting report: $e');
    }
  }

  Future<void> _showDeleteConfirmationDialog(BuildContext context, String documentId) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Confirmation'),
          content: Text('Are you sure you want to delete this report?'),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the confirmation dialog
                _deleteReport(documentId); // Delete the report
                Navigator.of(context).pop(); // Close the edit dialog
              },
              child: Text('Yes'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the confirmation dialog
              },
              child: Text('No'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
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
        title: Text('Reports',
          style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 20,
              fontWeight: FontWeight.w700,
              letterSpacing: 0.5)),
      ),

      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('report_siswa').snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          }

          final reports = snapshot.data?.docs ?? [];

          return ListView.builder(
            itemCount: reports.length,
            itemBuilder: (BuildContext context, int index) {
              final report = reports[index];
              final data = report.data() as Map<String, dynamic>;

              return Container(
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(color: Colors.black),
                ),
                child: ListTile(
                  title: Text('Nama: ${data['Nama']}', style: TextStyle(color: Colors.black),),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data['Masalah'],
                        style: TextStyle(color: Colors.black),
                      ),
                      Text(
                        data['Detail'],
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                  onTap: () {
                    selectedDocumentId = report.id;
                    _showEditDialog(report: reports[index]);
                  },
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showAddDialog(),
        child: Icon(Icons.add),
      ),
    );
  }
}
