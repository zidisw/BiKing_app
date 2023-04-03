import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SplashScreen2 extends StatelessWidget {
  static String routeName = 'SplashScreen2';

  @override
  Widget build(BuildContext context) {
    //scaffold color set to primary color in main in our text theme
    return Scaffold(
      //its a row with a column
      body: Container(
          child: Positioned(
            top: 0,
            left: 0,
            child:
              Align(
                child: 
                SizedBox(
                  height: 391,
                  width: 168.76,
                  child: Image.asset(
                    'assets/images/atas.png',
                  ),
                ),
                )
              ),
      ),
    );
  }
}
