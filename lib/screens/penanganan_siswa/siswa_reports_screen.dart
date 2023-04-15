import 'package:biking_app/constants.dart';
import 'package:biking_app/screens/penanganan_siswa/data/siswa_reports_data.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../home_screen/home_screen.dart';
import '../my_profile/my_profile.dart';
import '../navigation_bar/nav_bar.dart';
import 'widgets/siswa_reports_widgets.dart';

class SiswaReportsScreen extends StatelessWidget {
  const SiswaReportsScreen({Key? key}) : super(key: key);
  static String routeName = 'SiswaReportsScreen';

  void _onItemTapped(int index, BuildContext context) {
    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MyProfileScreen()),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen()),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SiswaReportsScreen()),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Pelaporan',
            style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 20,
                fontWeight: FontWeight.w700)),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: kOtherColor,
                borderRadius: kTopBorderRadius,
              ),
              child: ListView.builder(
                  padding: EdgeInsets.all(kDefaultPadding),
                  itemCount: siswareports.length,
                  itemBuilder: (context, int index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, 'SiswaReportsScreen');
                      },
                      child: Container(
                        margin: EdgeInsets.only(bottom: kDefaultPadding),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.all(kDefaultPadding),
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(kDefaultPadding),
                                color: kOtherColor,
                                boxShadow: [
                                  BoxShadow(
                                    color: kTextLightColor,
                                    blurRadius: 2.0,
                                  ),
                                ],
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 40.w,
                                    height: 3.h,
                                    decoration: BoxDecoration(
                                      color: kSecondaryColor,
                                      borderRadius: BorderRadius.circular(
                                          kDefaultPadding),
                                    ),
                                    child: Center(
                                      child: Text(
                                        siswareports[index].subjectName,
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelSmall!
                                            .copyWith(
                                              color: kTextWhiteColor,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ),
                                  ),
                                  kHalfSizedBox,
                                  Text(
                                    siswareports[index].topicName,
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleSmall!
                                        .copyWith(
                                          color: kTextBlackColor,
                                          fontWeight: FontWeight.w900,
                                        ),
                                  ),
                                  kHalfSizedBox,
                                  SiswaReportsWidget(
                                    title: 'Tanggal',
                                    statusValue: siswareports[index].tanggal,
                                  ),
                                  kHalfSizedBox,
                                  SiswaReportsWidget(
                                    title: 'Status',
                                    statusValue: siswareports[index].status,
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
      bottomNavigationBar: MyBottomNavigationBar(
        currentIndex: 0,
        onItemTapped: (index) => _onItemTapped(index, context),
      ),
    );
  }
}
