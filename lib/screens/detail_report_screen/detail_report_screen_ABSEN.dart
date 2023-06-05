import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AttendanceScreen extends StatefulWidget {
  static String routeName = 'DetailReportScreenAbsen';

  const AttendanceScreen({super.key});
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
        final TextEditingController namaController = TextEditingController();
        final TextEditingController kelasController = TextEditingController();
        final TextEditingController alpaController = TextEditingController();
        final TextEditingController izinController = TextEditingController();
        final TextEditingController sakitController = TextEditingController();

        return AlertDialog(
          title: Text(dialogTitle),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: namaController,
                decoration: InputDecoration(labelText: namaLabel),
                style: const TextStyle(color: Colors.black),
              ),
              TextField(
                controller: kelasController,
                decoration: InputDecoration(labelText: kelasLabel),
                style: const TextStyle(color: Colors.black),
              ),
              TextField(
                controller: alpaController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: alpaLabel),
                style: const TextStyle(color: Colors.black),
              ),
              TextField(
                controller: izinController,
                decoration: InputDecoration(labelText: izinLabel),
                style: const TextStyle(color: Colors.black),
              ),
              TextField(
                controller: sakitController,
                decoration: InputDecoration(labelText: sakitLabel),
                style: const TextStyle(color: Colors.black),
              ),
            ],
          ),

          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                if (isEditing) {
                  _editReport(
                    selectedDocumentId!,
                    namaController.text,
                    kelasController.text,
                    alpaController.text,
                    izinController.text,
                    sakitController.text,
                  );
                } else {
                  _addAbsen(
                    namaController.text,
                    kelasController.text,
                    alpaController.text,
                    izinController.text,
                    sakitController.text,
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
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
                child: const Text('Delete'),
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
          title: const Text('Confirmation'),
          content: const Text('Are you sure you want to delete this report?'),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the confirmation dialog
                _deleteReport(documentId); // Delete the report
                Navigator.of(context).pop(); // Close the edit dialog
              },
              child: const Text('Yes'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the confirmation dialog
              },
              child: const Text('No'),
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
        title: const Text('Reports',
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
            return const CircularProgressIndicator();
          }

          final attendance = snapshot.data?.docs ?? [];

          return ListView.builder(
            itemCount: attendance.length,
            itemBuilder: (BuildContext context, int index) {
              final absen = attendance[index];
              final data = absen.data() as Map<String, dynamic>;

              return Container(
                margin: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(color: Colors.black),
                ),
                child: ListTile(
                  title: Text(
                    data['Nama'],
                    style: const TextStyle(color: Colors.black),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data['Kelas'],
                        style: const TextStyle(color: Colors.black),
                      ),
                      Text(
                        'Alpa: ${data['Alpa']}',
                        style: const TextStyle(color: Colors.black),
                      ),
                      Text(
                        'Izin: ${data['Izin']}',
                        style: const TextStyle(color: Colors.black),
                      ),
                      Text(
                        'Sakit: ${data['Sakit']}',
                        style: const TextStyle(color: Colors.black),
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
        child: const Icon(Icons.add),
      ),
    );
  }
}
