import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ReportScreen extends StatefulWidget {
  static String routeName = 'DetailReportScreenSiswa';
  @override
  _ReportScreenState createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
  String? selectedDocumentId;

  void _showAddEditDialog({bool isEditing = false}) {
    final dialogTitle = isEditing ? 'Edit Report' : 'Add Report';
    final masalahLabel = isEditing ? 'Masalah (Edit)' : 'Masalah';
    final detailLabel = isEditing ? 'Detail (Edit)' : 'Detail';
    final namaLabel = isEditing ? 'Nama (Edit)' : 'Nama';

    showDialog(
      context: context,
      builder: (BuildContext context) {
        final TextEditingController _masalahController = TextEditingController();
        final TextEditingController _detailController = TextEditingController();
        final TextEditingController _namaController = TextEditingController();

        return AlertDialog(
          title: Text(dialogTitle),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: _namaController,
                decoration: InputDecoration(labelText: namaLabel),
                style: TextStyle(color: Colors.black),
              ),
              TextField(
                controller: _masalahController,
                decoration: InputDecoration(labelText: masalahLabel),
                style: TextStyle(color: Colors.black),
              ),
              TextField(
                controller: _detailController,
                decoration: InputDecoration(labelText: detailLabel),
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),

          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                if (isEditing) {
                  _editReport(
                    selectedDocumentId!,
                    _masalahController.text,
                    _detailController.text,
                    _namaController.text,
                  );
                } else {
                  _addReport(
                    _masalahController.text,
                    _detailController.text,
                    _namaController.text,
                  );
                }
                Navigator.pop(context);
              },
              child: Text(isEditing ? 'Save Changes' : 'Add Report'),
            ),
            if (isEditing)
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
                    _showAddEditDialog(isEditing: true);
                  },
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showAddEditDialog(),
        child: Icon(Icons.add),
      ),
    );
  }
}
