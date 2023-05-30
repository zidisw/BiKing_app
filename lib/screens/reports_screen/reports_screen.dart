import 'package:biking_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'data/reports_data.dart';
import 'widgets/reports_widgets.dart';

class ReportsScreen extends StatefulWidget {
  const ReportsScreen({Key? key}) : super(key: key);
  static String routeName = 'ReportsScreen';

  @override
  // ignore: library_private_types_in_public_api
  _ReportsScreenState createState() => _ReportsScreenState();
}

class _ReportsScreenState extends State<ReportsScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        title: const Text('Pelaporan',
            style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 20,
                fontWeight: FontWeight.w700)),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: kOtherColor,
                
              ),
              child: ListView.builder(
                  padding: const EdgeInsets.all(kDefaultPadding),
                  itemCount: reports.length,
                  itemBuilder: (context, int index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, 'SiswaReportsScreen');
                      },
                      child: Container(
                        margin: const EdgeInsets.only(bottom: kDefaultPadding),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(kDefaultPadding),
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(12),
                                color: kOtherColor,
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color(0x19000000),
                                    offset: Offset(0, 1),
                                    blurRadius: 3,
                                    spreadRadius: 2,
                                  ),
                                ],
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  kHalfSizedBox,
                                  Text(
                                    reports[index].topicName,
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w700,
                                      color: const Color(0xff38acff),
                                    ),
                                  ),
                                  kHalfSizedBox,
                                  ReportsRow(
                                    title: 'Status',
                                    statusValue: reports[index].status,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
