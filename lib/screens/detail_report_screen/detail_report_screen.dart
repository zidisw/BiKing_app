import 'package:biking_app/constants.dart';
import 'package:flutter/material.dart';

import 'data/detail_report_data.dart';
import 'widgets/detail_report_widgets.dart';

class FeeScreen extends StatelessWidget {
  const FeeScreen({Key? key}) : super(key: key);
  static String routeName = 'DetailReportScreen';

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
        title: const Text('Detail Report', 
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
                  physics: const BouncingScrollPhysics(),
                  padding: const EdgeInsets.all(kDefaultPadding),
                  itemCount: detail.length,
                  itemBuilder: (context, int index) {
                    return Container(
                      margin: const EdgeInsets.only(bottom: kDefaultPadding),
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(kDefaultPadding),
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(kDefaultPadding),
                              ),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: kTextLightColor,
                                  blurRadius: 2.0,
                                ),
                              ],
                            ),
                            child: Column(
                              children: [
                                DetailRow(
                                  title: 'Receipt No',
                                  statusValue: detail[index].receiptNo,
                                ),
                                const SizedBox(
                                  height: kDefaultPadding,
                                  child: Divider(
                                    thickness: 1.0,
                                  ),
                                ),
                                DetailRow(
                                  title: 'Month',
                                  statusValue: detail[index].month,
                                ),
                                sizedBox,
                                DetailRow(
                                  title: 'Payment Date',
                                  statusValue: detail[index].date,
                                ),
                                sizedBox,
                                DetailRow(
                                  title: 'Status',
                                  statusValue: detail[index].paymentStatus,
                                ),
                                sizedBox,
                                const SizedBox(
                                  height: kDefaultPadding,
                                  child: Divider(
                                    thickness: 1.0,
                                  ),
                                ),
                                DetailRow(
                                  title: 'Total Amount',
                                  statusValue: detail[index].totalAmount,
                                ),
                              ],
                            ),
                          ),
                          DetailButton(
                              title: detail[index].btnStatus,
                              iconData: detail[index].btnStatus == 'Paid'
                                  ? Icons.download_outlined
                                  : Icons.arrow_forward_outlined,
                              onPress: () {})
                        ],
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
