import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AttendanceScreen extends StatefulWidget {
  static String routeName = 'DetailReportScreenAbsen';
  @override
  _AttendanceScreenState createState() => _AttendanceScreenState();
}

class _AttendanceScreenState extends State<AttendanceScreen> {
  String nama = '';
  String kelas = '';
  int? sakit;
  int? izin;
  int? alpa;

  Future<void> submitAttendance() async {
    // Validate the input fields
    if (nama.isEmpty || kelas.isEmpty || sakit == null || izin == null || alpa == null) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Error'),
            content: Text('Please fill in all the fields.'),
            actions: [
              TextButton(
                child: Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
      return;
    }

    try {
      // Add the attendance data to Firestore
      await FirebaseFirestore.instance.collection('absen').add({
        'Nama': nama,
        'Kelas': kelas,
        'Sakit': sakit,
        'Izin': izin,
        'Alpa': alpa,
      });

      // Reset the input fields
      setState(() {
        nama = '';
        kelas = '';
        sakit = null;
        izin = null;
        alpa = null;
      });

      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Success'),
            content: Text('Attendance submitted successfully.'),
            actions: [
              TextButton(
                child: Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    } catch (error) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Error'),
            content: Text('Failed to submit attendance.'),
            actions: [
              TextButton(
                child: Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
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
        title: Text('Attendance'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Nama'),
              onChanged: (value) {
                setState(() {
                  nama = value;
                });
              },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Kelas'),
              onChanged: (value) {
                setState(() {
                  kelas = value;
                });
              },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Sakit'),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  sakit = int.tryParse(value);
                });
              },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Izin'),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  izin = int.tryParse(value);
                });
              },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Alpa'),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  alpa = int.tryParse(value);
                });
              },
            ),
            ElevatedButton(
              child: Text('Submit'),
              onPressed: submitAttendance,
            ),
            SizedBox(height: 20),
            Text(
              'Submitted Attendances',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            StreamBuilder<QuerySnapshot>(
              stream: FirebaseFirestore.instance.collection('absen').snapshots(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  final documents = snapshot.data?.docs ?? [];

                  if (documents == null || documents.isEmpty) {
                    return Text('No attendances found.');
                  }

                  return Expanded(
                    child: ListView.builder(
                      itemCount: documents.length,
                      itemBuilder: (context, index) {
                        final attendance = documents[index];
                        final data = attendance.data() as Map<String, dynamic>;

                        return ListTile(
                          title: Text(
                            data['Nama'],
                            style: TextStyle(color: Colors.black),
                          ),
                          subtitle: Text(
                            data['Kelas'],
                            style: TextStyle(color: Colors.black),
                          ),

                          trailing: IconButton(
                            icon: Icon(Icons.delete),
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text('Confirmation'),
                                    content: Text('Are you sure you want to delete this attendance?'),
                                    actions: [
                                      TextButton(
                                        child: Text('Cancel'),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                      ),
                                      TextButton(
                                        child: Text('Delete'),
                                        onPressed: () {
                                          // Delete the attendance with the corresponding document ID
                                          FirebaseFirestore.instance.collection('absen')
                                              .doc(documents[index].id)
                                              .delete();
                                          Navigator.of(context).pop();
                                        },
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                          ),
                        );
                      },
                    ),
                  );
                } else if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                } else {
                  return CircularProgressIndicator();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
