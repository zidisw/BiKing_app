import 'package:biking_app/constants.dart';
import 'package:flutter/material.dart';
import '../../components/custom_buttons2.dart';
import 'package:sizer/sizer.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static String routeName = 'HomeScreen';
  

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: Container(
          width: double.infinity,
          height: 968 * fem,
          decoration: BoxDecoration(
            color: Color(0xffffffff),
          ),
          child: Stack(
            children: [
              Positioned(
                left: 0 * fem,
                top: 0 * fem,
                child: Container(
                  padding:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 70 * fem),
                  width: 360 * fem,
                  height: 700 * fem,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          child: Column(
                        children: [
                          Positioned(
                            child: SizedBox(
                              width: 368 * fem,
                              height: 100 * fem,
                              child: Image.asset(
                                'assets/images/atas_trans.png',
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ],
                      )),
                      Container(
                          margin: EdgeInsets.fromLTRB(
                              30 * fem, 0 * fem, 30 * fem, 0 * fem),
                          width: double.infinity,
                          height: 350 * fem,
                          child: Stack(
                            children: [
                              Positioned(
                                  left: 0 * fem,
                                  top: 10 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 200 * fem,
                                      height: 30 * fem,
                                      child: Text(
                                        'Haii, Semangat Pagi!',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 20 * fem,
                                          color: kPrimaryColor,
                                          fontWeight: FontWeight.w600,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  )),
                              Positioned(
                                  left: 12 * fem,
                                  top: 290 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 276 * fem,
                                      height: 40 * fem,
                                      child: Text(
                                        'Lakukan konsultasi dengan Guru BK kapan saja dan dimana saja melalui aplikasi ini.',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 12 * ffem,
                                          color: kTextBlackColor,
                                          fontWeight: FontWeight.w500,
                                          height: 1.5 * ffem / fem,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  )),
                              Positioned(
                                  left: 0 * fem,
                                  top: 9 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 300 * fem,
                                      height: 300 * fem,
                                      child: Image.asset(
                                        'assets/images/ele1.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  )),
                            ],
                          )),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(left: 8.5.w, right: 8.5.w),
                          decoration: BoxDecoration(
                              color: kOtherColor,
                              //reusable radius,
                              borderRadius: kTopBorderRadius),
                          child: Column(
                            children: [
                              MyCustomButton(
                                width: 500,
                                height: 80,
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, 'MyProfileScreen');
                                },
                                text: 'Informasi Seputar BK',
                                image: AssetImage('assets/images/ele2.png'),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(left: 8.5.w, right: 8.5.w),
                          decoration: BoxDecoration(
                              color: kOtherColor,
                              //reusable radius,
                              borderRadius: kTopBorderRadius),
                          child: Column(
                            children: [
                              MyCustomButton(
                                width: 500,
                                height: 80,
                                onPressed: () {
                                  Navigator.pushNamed(context, 'SplashScreen2');
                                },
                                text: 'Tentang Kami',
                                image: AssetImage('assets/images/ele3.png'),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          )),

    );
  }
}
