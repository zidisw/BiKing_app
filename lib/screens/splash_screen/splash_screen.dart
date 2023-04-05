import 'package:biking_app/screens/splash_screen/splash_screen2.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SplashScreen extends StatefulWidget {
  //route name for our screen
  static String routeName = 'SplashScreen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //we use future to go from one screen to other via duration time
    Future.delayed(Duration(seconds: 3), (){
      //no return when user is on login screen and press back, it will not return the
      //user to the splash screen
      Navigator.pushNamedAndRemoveUntil(context, SplashScreen2.routeName, (route) => false);
    });
  }
  @override
  Widget build(BuildContext context) {
    //scaffold color set to primary color in main in our text theme
    return Scaffold(
      backgroundColor: Colors.white,
      //its a row with a column
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              'assets/images/Vector-2.png',
              //25% of height & 50% of width
              height: 25.h,
              width: 50.w,
            ),
          ],
        ),
      ),
    );
  }
}
