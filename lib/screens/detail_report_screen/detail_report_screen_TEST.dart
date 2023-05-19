import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ReportScreen extends StatefulWidget {
  static String routeName = 'DetailReportScreen';
  @override
  _ReportScreenState createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
  TextEditingController _titleController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();
  TextEditingController _namaController = TextEditingController();

  void _addReport() {
    String Masalah = _titleController.text.trim();
    String Detail = _descriptionController.text.trim();
    String Nama = _namaController.text.trim();

    // Perform the logic to add the report to Firestore
    FirebaseFirestore.instance.collection('report').add({
      'title': Masalah,
      'description': Detail,
      'nama': Nama,
    });

    // Clear the text fields after adding the report
    _titleController.clear();
    _descriptionController.clear();
    _namaController.clear();
  }

  void _editReport(String documentId) {
    String Masalah = _titleController.text.trim();
    String Detail = _descriptionController.text.trim();
    String Nama = _namaController.text.trim();

    // Perform the logic to update the report in Firestore
    FirebaseFirestore.instance.collection('report').doc(documentId).update({
      'title': Masalah,
      'description': Detail,
      'nama': Nama,
    });

    // Clear the text fields after editing the report
    _titleController.clear();
    _descriptionController.clear();
    _namaController.clear();
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

            return Column(
              children: [
                ButtonBar(
                  alignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('Add Report'),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  TextField(
                                    controller: _titleController,
                                    decoration: InputDecoration(labelText: 'Masalah'),
                                  ),
                                  TextField(
                                    controller: _descriptionController,
                                    decoration: InputDecoration(labelText: 'Detail/Deskripsi'),
                                  ),
                                  TextField(
                                    controller: _namaController,
                                    decoration: InputDecoration(labelText: 'Nama'),
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
                                ElevatedButton(
                                  onPressed: () {
                                    _addReport();
                                    Navigator.pop(context);
                                  },
                                  child: Text('Add'),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      child: Text('Add Report'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('Edit Report'),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  TextField(
                                    controller: _titleController,
                                    decoration: InputDecoration(labelText: 'Masalah'),
                                  ),
                                  TextField(
                                    controller: _descriptionController,
                                    decoration: InputDecoration(labelText: 'Detail/Deskripsi'),
                                  ),
                                  TextField(
                                    controller: _namaController,
                                    decoration: InputDecoration(labelText: 'Nama'),
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
                                ElevatedButton(
                                  onPressed: () {
                                    String documentId = ''; // Replace with the document ID of the report to be edited
                                    _editReport(documentId);
                                    Navigator.pop(context);
                                  },
                                  child: Text('Edit'),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      child: Text('Edit Report'),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: documents.length,
                  itemBuilder: (BuildContext context, int index) {
                    final document = documents[index];
                    final Masalah = document['Masalah'];
                    final Detail = document['Detail'];
                    final Nama = document['Nama'];

                    return Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Nama: $Nama',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(Masalah),
                          SizedBox(height: 5),
                          Text(Detail),
                        ],
                      ),
                    );
                  },
                ),
              ],
            );
          }

          return Text('No data available');
        },
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ReportScreen(),
  ));
}
