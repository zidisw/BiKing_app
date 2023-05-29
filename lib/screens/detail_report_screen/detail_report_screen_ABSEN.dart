import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AttendanceScreen extends StatefulWidget {
  static String routeName = 'DetailReportScreenAbsen';
  @override
  _AttendanceScreenState createState() => _AttendanceScreenState();
}

class _AttendanceScreenState extends State<AttendanceScreen> {
  String? selectedDocumentId;

  void _showAddEditDialog({bool isEditing = false}) {
    final dialogTitle = isEditing ? 'Edit Absen' : 'Tambah Absen';
    final namaLabel = isEditing ? 'Nama (Edit)' : 'Nama';
    final kelasLabel = isEditing ? 'Kelas (Edit)' : 'Kelas';
    final alpaLabel = isEditing ? 'Alpa (Edit)' : 'Alpa';
    final izinLabel = isEditing ? 'Izin (Edit)' : 'Izin';
    final sakitLabel = isEditing ? 'Sakit (Edit)' : 'Sakit';

    showDialog(
      context: context,
      builder: (BuildContext context) {
        final TextEditingController _namaController = TextEditingController();
        final TextEditingController _kelasController = TextEditingController();
        final TextEditingController _alpaController = TextEditingController();
        final TextEditingController _izinController = TextEditingController();
        final TextEditingController _sakitController = TextEditingController();

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
                controller: _kelasController,
                decoration: InputDecoration(labelText: kelasLabel),
                style: TextStyle(color: Colors.black),
              ),
              TextField(
                controller: _alpaController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: alpaLabel),
                style: TextStyle(color: Colors.black),
              ),
              TextField(
                controller: _izinController,
                decoration: InputDecoration(labelText: izinLabel),
                style: TextStyle(color: Colors.black),
              ),
              TextField(
                controller: _sakitController,
                decoration: InputDecoration(labelText: sakitLabel),
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
                    _namaController.text,
                    _kelasController.text,
                    _alpaController.text,
                    _izinController.text,
                    _sakitController.text,
                  );
                } else {
                  _addAbsen(
                    _namaController.text,
                    _kelasController.text,
                    _alpaController.text,
                    _izinController.text,
                    _sakitController.text,
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

  Future<void> _editReport(String documentId, String nama, String kelas, String alpa, String izin, String sakit) async {
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
