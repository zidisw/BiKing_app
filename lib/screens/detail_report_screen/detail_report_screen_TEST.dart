import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ReportScreen extends StatefulWidget {
  static String routeName = 'DetailReportScreen';
  @override
  _ReportScreenState createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
  final TextEditingController _masalahController = TextEditingController();
  final TextEditingController _detailController = TextEditingController();
  final TextEditingController _namaController = TextEditingController();

  String? selectedDocumentId; // Store the selected document ID

  @override
  void dispose() {
    _masalahController.dispose();
    _detailController.dispose();
    _namaController.dispose();
    super.dispose();
  }

  Future<void> _addReport() async {
    String masalah = _masalahController.text.trim();
    String detail = _detailController.text.trim();
    String nama = _namaController.text.trim();

    if (masalah.isEmpty || detail.isEmpty || nama.isEmpty) {
      // Show an error message to the user if any field is empty
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Error'),
            content: Text('Please fill in all the fields.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
      return;
    }

    try {
      await FirebaseFirestore.instance.collection('report').add({
        'Masalah': masalah,
        'Detail': detail,
        'Nama': nama,
      });

      // Clear the input fields after adding the report
      _masalahController.clear();
      _detailController.clear();
      _namaController.clear();
    } catch (error) {
      // Show an error message if the report couldn't be added
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Error'),
            content: Text('Failed to add the report. Please try again.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }

  Future<void> _editReport() async {
    String masalah = _masalahController.text.trim();
    String detail = _detailController.text.trim();
    String nama = _namaController.text.trim();

    if (masalah.isEmpty || detail.isEmpty || nama.isEmpty) {
      // Show an error message to the user if any field is empty
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Error'),
            content: Text('Please fill in all the fields.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
      return;
    }

    try {
      await FirebaseFirestore.instance
          .collection('report')
          .doc(selectedDocumentId)
          .update({
        'Masalah': masalah,
        'Detail': detail,
        'Nama': nama,
      });

      // Clear the input fields after editing the report
      _masalahController.clear();
      _detailController.clear();
      _namaController.clear();
      setState(() {
        selectedDocumentId = null; // Clear the selected document ID
      });
    } catch (error) {
      // Show an error message if the report couldn't be edited
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Error'),
            content: Text('Failed to edit the report. Please try again.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reports'),
      ),
      body: SingleChildScrollView(
        child: Column(
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
                        onPressed: _addReport,
                        child: Text('Add Report'),
                      ),
                      ElevatedButton(
                        onPressed: selectedDocumentId != null ? _editReport : null,
                        child: Text('Edit Report'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            StreamBuilder<QuerySnapshot>(
              stream: FirebaseFirestore.instance.collection('report').snapshots(),
              builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
                if (snapshot.hasError) {
                  // Log the error to the console
                  print('Error: ${snapshot.error}');

                  // Display an error message to the user
                  return Text('Error occurred while retrieving data');
                }

                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }

                if (snapshot.hasData) {
                  final documents = snapshot.data!.docs;

                  return ListView.builder(
                    shrinkWrap: true,
                    itemCount: documents.length,
                    itemBuilder: (BuildContext context, int index) {
                      final document = documents[index];
                      final masalah = document['Masalah'];
                      final detail = document['Detail'];
                      final nama = document['Nama'];

                      return Card(
                        margin: EdgeInsets.all(10),
                        child: ListTile(
                          title: Text(
                            masalah,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text('Nama: $nama'),
                          trailing: Icon(Icons.edit),
                          onTap: () {
                            setState(() {
                              selectedDocumentId = document.id; // Store the selected document ID
                              _masalahController.text = masalah; // Populate the input fields with existing data for editing
                              _detailController.text = detail;
                              _namaController.text = nama;
                            });
                          },
                        ),
                      );
                    },
                  );
                }

                return Text('No data available');
              },
            ),
          ],
        ),
      ),
    );
  }
}