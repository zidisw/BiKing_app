import 'package:biking_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'widgets/detail_report_widgets.dart';

class FeeScreen extends StatelessWidget {
  // const FeeScreen({Key? key}) : super(key: key);
  static String routeName = 'DetailReportScreen';
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  final CollectionReference reportCollection = FirebaseFirestore.instance.collection('report');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        title: Text('Detail Report'),
        // style: TextStyle(
        //         fontFamily: 'Poppins',
        //         fontSize: 20,
        //         fontWeight: FontWeight.w700
        // )),
      ),
      // body: Column(
      //   children: [
      //     Expanded(
      //       child: Container(
      //         decoration: BoxDecoration(
      //           color: kOtherColor,
      //         ),
      body: StreamBuilder<QuerySnapshot>(
          stream: reportCollection.snapshots(),
          builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot)

          {
            if (snapshot.hasError) {
              print('Error: ${snapshot.error}');
              return Text('Error occurred while retrieving data');
            } //HOW THE FUCK THIS FIXES THE FUCKING ERROR

            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            }

            return ListView.builder(
                      // physics: BouncingScrollPhysics(),
                      // padding: EdgeInsets.all(kDefaultPadding),
                itemCount: snapshot.data?.docs.length ?? 0,
                itemBuilder: (BuildContext context, int index) {
                  final document = snapshot.data!.docs[index];
                  final Detail = document['Detail'];
                  final Masalah = document['Masalah'];
                  final Nama = document['Nama'];

                  return Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.indigoAccent,
                        borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Masalah: $Masalah',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        fontWeight: FontWeight.w700
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(Detail),
                  ],
                  ),
                  );

                        // return Container(
                        //   margin: EdgeInsets.only(bottom: kDefaultPadding),
                        //   child: Column(
                        //     children: [
                        //       Container(
                        //         padding: EdgeInsets.all(kDefaultPadding),
                        //         decoration: BoxDecoration(
                        //           borderRadius: BorderRadius.vertical(
                        //             top: Radius.circular(kDefaultPadding),
                        //           ),
                        //           color: Colors.white,
                        //           boxShadow: [
                        //             BoxShadow(
                        //               color: kTextLightColor,
                        //               blurRadius: 2.0,
                        //             ),
                        //           ],
                        //         ),
                        //         child: Column(
                        //           children: [
                        //             DetailRow(
                        //               title: 'Receipt No',
                        //               statusValue: snapshot.data.docs[index],
                        //             ),
                        //             SizedBox(
                        //               height: kDefaultPadding,
                        //               child: Divider(
                        //                 thickness: 1.0,
                        //               ),
                        //             ),
                        //             DetailRow(
                        //               title: 'Month',
                        //               statusValue: detail[index].month,
                        //             ),
                        //             sizedBox,
                        //             DetailRow(
                        //               title: 'Payment Date',
                        //               statusValue: detail[index].date,
                        //             ),
                        //             sizedBox,
                        //             DetailRow(
                        //               title: 'Status',
                        //               statusValue: detail[index].paymentStatus,
                        //             ),
                        //             sizedBox,
                        //             SizedBox(
                        //               height: kDefaultPadding,
                        //               child: Divider(
                        //                 thickness: 1.0,
                        //               ),
                        //             ),
                        //             DetailRow(
                        //               title: 'Total Amount',
                        //               statusValue: detail[index].totalAmount,
                        //             ),
                        //           ],
                        //         ),
                        //       ),
                        //       DetailButton(
                        //           title: detail[index].btnStatus,
                        //           iconData: detail[index].btnStatus == 'Paid'
                        //               ? Icons.download_outlined
                        //               : Icons.arrow_forward_outlined,
                        //           onPress: () {})
                        //     ],
                        //   ),
                        // );
                      });
                }


              ),
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
