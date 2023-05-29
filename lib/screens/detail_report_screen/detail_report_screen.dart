// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
//
// class AttendanceScreen extends StatefulWidget {
//   @override
//   _AttendanceScreenState createState() => _AttendanceScreenState();
// }
//
// class _AttendanceScreenState extends State<AttendanceScreen> {
//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;
//   final CollectionReference _attendanceCollection = FirebaseFirestore.instance.collection('absen');
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Attendance Screen'),
//       ),
//       body: StreamBuilder<QuerySnapshot>(
//         stream: _attendanceCollection.snapshots(),
//         builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
//           if (snapshot.hasData) {
//             final attendances = snapshot.data?.docs ?? [];
//             if (attendances.isEmpty) {
//               return Center(
//                 child: Text('No attendances found'),
//               );
//             }
//             return ListView.builder(
//               itemCount: attendances.length,
//               itemBuilder: (BuildContext context, int index) {
//                 final attendance = attendances[index].data();
//                 final String nama = attendance['nama'];
//                 final String kelas = attendance['kelas'];
//                 final int alpa = attendance['alpa'];
//                 final int izin = attendance['izin'];
//                 final int sakit = attendance['sakit'];
//
//                 return ListTile(
//                   title: Text(nama),
//                   subtitle: Text('Kelas: $kelas'),
//                   trailing: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text('Alpa: $alpa'),
//                       Text('Izin: $izin'),
//                       Text('Sakit: $sakit'),
//                     ],
//                   ),
//                 );
//               },
//             );
//           } else if (snapshot.hasError) {
//             return Center(
//               child: Text('Error: ${snapshot.error}'),
//             );
//           } else {
//             return Center(
//               child: CircularProgressIndicator(),
//             );
//           }
//         },
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           _addAttendance();
//         },
//         child: Icon(Icons.add),
//       ),
//     );
//   }
//
//   Future<void> _addAttendance(String nama, String kelas, int alpa, int izin, int sakit) async {
//     try {
//       await FirebaseFirestore.instance.collection('report_siswa').add({
//         'Nama': nama,
//         'Kelas': kelas,
//         'Alpa': alpa,
//         'Izin': izin,
//         'Sakit': sakit,
//       });
//       // Success message or further processing
//     } catch (error) {
//       // Error handling
//     }
//   }
// }
