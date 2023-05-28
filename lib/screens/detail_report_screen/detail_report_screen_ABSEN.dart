import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AttendanceScreen extends StatefulWidget {
  @override
  _AttendanceScreenState createState() => _AttendanceScreenState();
}

class _AttendanceScreenState extends State<AttendanceScreen> {

  void _submitAttendance() {
    // TODO: Implement Firestore logic to submit attendance data
    // Use the values of 'nama', 'kelas', 'sakit', 'izin', 'alpa' to create a new attendance document in Firestore
    // Handle any errors that may occur during the submission process
  }

  String nama;
  String kelas;
  int sakit;
  int izin;
  int alpa;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Attendance'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              onChanged: (value) {
                nama = value;
              },
              decoration: InputDecoration(
                labelText: 'Nama',
              ),
            ),
            TextField(
              onChanged: (value) {
                kelas = value;
              },
              decoration: InputDecoration(
                labelText: 'Kelas',
              ),
            ),
            TextField(
              onChanged: (value) {
                sakit = int.parse(value);
              },
              decoration: InputDecoration(
                labelText: 'Sakit',
              ),
              keyboardType: TextInputType.number,
            ),
            TextField(
              onChanged: (value) {
                izin = int.parse(value);
              },
              decoration: InputDecoration(
                labelText: 'Izin',
              ),
              keyboardType: TextInputType.number,
            ),
            TextField(
              onChanged: (value) {
                alpa = int.parse(value);
              },
              decoration: InputDecoration(
                labelText: 'Alpa',
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 16.0),
            RaisedButton(
              onPressed: () {
                _submitAttendance();
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
