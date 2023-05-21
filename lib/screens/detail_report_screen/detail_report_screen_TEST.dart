import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ReportScreen extends StatefulWidget {
  static String routeName = 'DetailReportScreen';
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
                controller: _masalahController,
                decoration: InputDecoration(labelText: namaLabel),
              ),
              TextField(
                controller: _detailController,
                decoration: InputDecoration(labelText: masalahLabel),
              ),
              TextField(
                controller: _namaController,
                decoration: InputDecoration(labelText: detailLabel),
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
          ],
        );
      },
    );
  }

  Future<void> _addReport(String masalah, String detail, String nama) async {
    try {
      await FirebaseFirestore.instance.collection('report').add({
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
      await FirebaseFirestore.instance.collection('report').doc(documentId).update({
        'Masalah': masalah,
        'Detail': detail,
        'Nama': nama,
      });
      // Success message or further processing
    } catch (error) {
      // Error handling
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reports'),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('report').snapshots(),
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

              return ListTile(
                title: Text(data['Nama']),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(data['Masalah']),
                    Text(data['Detail']),
                  ],
                ),
                onTap: () {
                  selectedDocumentId = report.id;
                  _showAddEditDialog(isEditing: true);
                },
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
