import 'package:biking_app/constants.dart';
import 'package:flutter/material.dart';
import '../../components/custom_buttons2.dart';
import 'package:sizer/sizer.dart';
import 'package:google_fonts/google_fonts.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static String routeName = 'HomeScreen';
  

  @override
  // ignore: library_private_types_in_public_api
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
         decoration: const BoxDecoration(
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
                 height: 758 * fem,
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     Column(
                       children: [
                     Positioned(
                       child: SizedBox(
                         width: 368 * fem,
                         height: 160 * fem,
                         child: Image.asset(
                           'assets/images/atas_trans.png',
                           fit: BoxFit.fill,
                         ),
                       ),
                     ),
                       ],
                     ),
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
                                     width: 211 * fem,
                                     height: 27 * fem,
                                     child: Text(
                                       'Haii, Semangat Pagi!',
                                       style: GoogleFonts.poppins(
                                         fontSize: 20 * fem,
                                         color: kPrimaryColor,
                                         fontWeight: FontWeight.w500,
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
                                     width: 275 * fem,
                                     height: 35 * fem,
                                     child: Text(
                                       'Lakukan konsultasi dengan Guru BK kapan saja dan dimana saja melalui aplikasi ini.',
                                       style: GoogleFonts.poppins(
                                         fontSize: 13 * ffem,
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
                                 top: 9* fem,
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
                                     context, 'InformasibkScreen');
                               },
                               text: 'Informasi Seputar BK',
                               image: const AssetImage('assets/images/ele2.png'),
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
                                 Navigator.pushNamed(
                                   context, 'AboutUsScreen');
                               },
                               text: 'Tentang Kami',
                               image: const AssetImage('assets/images/ele3.png'),
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
