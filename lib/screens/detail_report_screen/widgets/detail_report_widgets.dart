import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ReportScreen extends StatefulWidget {
  @override
  _ReportScreenState createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
  final TextEditingController _masalahController = TextEditingController();
  final TextEditingController _detailController = TextEditingController();
  final TextEditingController _namaController = TextEditingController();

  String? selectedDocumentId;

  Future<void> _showAddEditDialog({bool isEditing = false}) async {
    final dialogTitle = isEditing ? 'Edit Report' : 'Add Report';
    final masalahLabel = isEditing ? 'Masalah (Edit)' : 'Masalah';
    final detailLabel = isEditing ? 'Detail (Edit)' : 'Detail';
    final namaLabel = isEditing ? 'Nama (Edit)' : 'Nama';

    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(dialogTitle),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: _masalahController,
                decoration: InputDecoration(labelText: masalahLabel),
              ),
              TextField(
                controller: _detailController,
                decoration: InputDecoration(labelText: detailLabel),
              ),
              TextField(
                controller: _namaController,
                decoration: InputDecoration(labelText: namaLabel),
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
                  _editReport();
                } else {
                  _addReport();
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

  Future<void> _addReport() async {
    final masalah = _masalahController.text;
    final detail = _detailController.text;
    final nama = _namaController.text;

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

  Future<void> _editReport() async {
    final masalah = _masalahController.text;
    final detail = _detailController.text;
    final nama = _namaController.text;

    try {
      await FirebaseFirestore.instance.collection('report').doc(selectedDocumentId).update({
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
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                TextField(
                  controller: _masalahController,
                  decoration: InputDecoration(labelText: 'Masalah'),
                ),
                TextField(
                  controller: _detailController,
                  decoration: InputDecoration(labelText: 'Detail'),
                ),
                TextField(
                  controller: _namaController,
                  decoration: InputDecoration(labelText: 'Nama'),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () => _showAddEditDialog(),
                      child: Text('Add Report'),
                    ),
                    ElevatedButton(
                      onPressed: selectedDocumentId != null
                          ? () => _showAddEditDialog(isEditing: true)
                          : null,
                      child: Text('Edit Report'),
                    ),
                  ],
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
          StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance.collection('report').snapshots(),
            builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              }

              if (snapshot.connectionState == ConnectionState.waiting) {
                return CircularProgressIndicator();
              }

              final reports = snapshot.data?.docs ?? [];

              return Expanded(
                child: ListView.builder(
                  itemCount: reports.length,
                  itemBuilder: (BuildContext context, int index) {
                    final report = reports[index];
                    final data = report.data() as Map<String, dynamic>;
                    final masalah = data['Masalah'] ?? '';
                    final detail = data['Detail'] ?? '';
                    final nama = data['Nama'] ?? '';

                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedDocumentId = report.id;
                          _masalahController.text = masalah;
                          _detailController.text = detail;
                          _namaController.text = nama;
                        });
                      },
                      child: Card(
                        margin: EdgeInsets.all(10),
                        child: ListTile(
                          title: Text(
                            masalah,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 4),
                              Text(
                                'Nama: $nama',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                detail,
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          trailing: Icon(Icons.edit),
                        ),
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
