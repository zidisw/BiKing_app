import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

// untuk screen ini => absen[index]

class AttendanceScreen extends StatefulWidget {
  static String routeName = 'DetailReportScreenAbsen';
  @override
  _AttendanceScreenState createState() => _AttendanceScreenState();
}

class _AttendanceScreenState extends State<AttendanceScreen> {
  String? selectedDocumentId;

  Future<void> _showAddEditDialog({DocumentSnapshot? absen}) async {
    final TextEditingController namaController = TextEditingController();
    final TextEditingController kelasController = TextEditingController();
    final TextEditingController alpaController = TextEditingController();
    final TextEditingController izinController = TextEditingController();
    final TextEditingController sakitController = TextEditingController();

    if (absen != null) {
      namaController.text = absen['Nama'] ?? '';
      kelasController.text = absen['Kelas'] ?? '';
      alpaController.text = absen['Alpa'] ?? '';
      izinController.text = absen['Izin'] ?? '';
      sakitController.text = absen['Sakit'] ?? '';
    }

    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(absen != null ? 'Edit Report' : 'Add Report'),
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
                controller: kelasController,
                decoration: InputDecoration(
                  labelText: 'Kelas',
                ),
                style: TextStyle(color: Colors.black),
              ),
              TextField(
                controller: alpaController,
                decoration: InputDecoration(
                  labelText: 'Alpa',
                ),
                style: TextStyle(color: Colors.black),
              ),
              TextField(
                controller: izinController,
                decoration: InputDecoration(
                  labelText: 'Izin',
                ),
                style: TextStyle(color: Colors.black),
              ),
              TextField(
                controller: sakitController,
                decoration: InputDecoration(
                  labelText: 'Sakit',
                ),
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
          actions: [
            ElevatedButton(
              child: Text('Save'),
              onPressed: () {
                String nama = namaController.text.trim();
                String kelas = kelasController.text.trim();
                String alpa = alpaController.text.trim();
                String izin = izinController.text.trim();
                String sakit = sakitController.text.trim();
                // Perform necessary validation and submit logic
                if (absen != null) {
                  // Update existing report logic
                  _editAbsen(absen.id, nama, kelas, alpa, izin, sakit);
                } else {
                  // Add new report logic
                  _addAbsen(nama, kelas, alpa, izin, sakit);
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

  Future<void> _addAbsen(String nama, String kelas, String alpa, String izin, String sakit) async {
    try {
      await FirebaseFirestore.instance.collection('absen').add({
        'Nama': nama,
        'Kelas': kelas,
        'Alpa': alpa,
        'Izin': izin,
        'Sakit': sakit,
      });
      // Success message or further processing
    } catch (error) {
      // Error handling
    }
  }

  Future<void> _editAbsen(String documentId, String nama, String kelas, String alpa, String izin, String sakit) async {
    try {
      await FirebaseFirestore.instance.collection('absen').doc(documentId).update({
        'Nama': nama,
        'Kelas': kelas,
        'Alpa': alpa,
        'Izin': izin,
        'Sakit': sakit,
      });
      // Success message or further processing
    } catch (error) {
      // Error handling
    }
  }

  Future<void> _deleteReport(String documentId) async {
    try {
      await FirebaseFirestore.instance.collection('absen').doc(documentId).delete();
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
        stream: FirebaseFirestore.instance.collection('absen').snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          }

          final attendance = snapshot.data?.docs ?? [];

          return ListView.builder(
            itemCount: attendance.length,
            itemBuilder: (BuildContext context, int index) {
              final absen = attendance[index];
              final data = absen.data() as Map<String, dynamic>;

              return Container(
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(color: Colors.black),
                ),
                child: ListTile(
                  title: Text(
                    data['Nama'],
                    style: TextStyle(color: Colors.black),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data['Kelas'],
                        style: TextStyle(color: Colors.black),
                      ),
                      Text(
                        'Alpa: ${data['Alpa']}',
                        style: TextStyle(color: Colors.black),
                      ),
                      Text(
                        'Izin: ${data['Izin']}',
                        style: TextStyle(color: Colors.black),
                      ),
                      Text(
                        'Sakit: ${data['Sakit']}',
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                  onTap: () {
                    selectedDocumentId = absen.id;
                    _showAddEditDialog(absen: attendance[index]);
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
