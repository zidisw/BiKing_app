import 'package:biking_app/components/custom_buttons.dart';
import 'package:biking_app/constants.dart';
import 'package:biking_app/screens/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../main.dart';
import '../main_screen.dart';

late bool _passwordVisible;

class LoginScreen extends StatefulWidget {
  static String routeName = 'LoginScreen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //validate our form now
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  //changes current state
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;

    return GestureDetector(
        //when user taps anywhere on the screen, keyboard hides
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
          
          body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xff38acff),
                  Color(0xff9587ff),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            
            child: Column(
              children: [
                
                Positioned(
                  left: 0,
                  top: 0,
                  child: SizedBox(
                    width: 391 * fem,
                    height: 150.76 * fem,
                    child: Image.asset(
                      'assets/images/atas.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  width: 100.w,
                  height: 10.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Halo Admin!',
                              style: Theme.of(context).textTheme.subtitle1),
                          Text('Sign in to continue',
                              style: Theme.of(context).textTheme.subtitle2),
                          sizedBox,
                        ],
                      ),
                      Image.asset(
                        'assets/images/Vector-1.png',
                        height: 20.h,
                        width: 40.w,
                      ),
                      SizedBox(
                        height: kDefaultPadding / 2,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(left: 5.w, right: 5.w),
                    decoration: BoxDecoration(
                      color: kOtherColor,
                      //reusable radius,
                      borderRadius: kTopBorderRadius,
                    ),
                    child: Form(
                      key: _formKey,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            sizedBox,
                            buildEmailField(),
                            sizedBox,
                            buildPasswordField(),
                            sizedBox,
                            DefaultButton(
                              onPress: () {
                                if (_formKey.currentState!.validate()) {
                                  Navigator.pushNamedAndRemoveUntil(context,
                                      MainScreen.routeName, (route) => false);
                                }
                              },
                              title: 'SIGN IN',
                              iconData: Icons.arrow_forward_outlined,
                            ),
                            sizedBox,
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Text(
                                'Forgot Password',
                                textAlign: TextAlign.end,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall!
                                    .copyWith(
                                        color: kContainerColor,
                                        fontWeight: FontWeight.w400),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                
              ],
            ),
            
          ),
        ));
  }

  TextFormField buildEmailField() {
    return TextFormField(
      textAlign: TextAlign.start,
      keyboardType: TextInputType.emailAddress,
      style: kInputTextStyle,
      decoration: InputDecoration(
        labelText: 'Mobile Number/Email',
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
      validator: (value) {
        //for validation
        RegExp regExp = new RegExp(emailPattern);
        if (value == null || value.isEmpty) {
          return 'Please enter some text';
          //if it does not matches the pattern, like
          //it not contains @
        } else if (!regExp.hasMatch(value)) {
          return 'Please enter a valid email address';
        }
      },
    );
  }

  TextFormField buildPasswordField() {
    return TextFormField(
      obscureText: _passwordVisible,
      textAlign: TextAlign.start,
      keyboardType: TextInputType.visiblePassword,
      style: kInputTextStyle,
      decoration: InputDecoration(
        labelText: 'Password',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              _passwordVisible = !_passwordVisible;
            });
          },
          icon: Icon(
            _passwordVisible
                ? Icons.visibility_off_outlined
                : Icons.visibility_off_outlined,
          ),
          iconSize: kDefaultPadding,
        ),
      ),
      validator: (value) {
        if (value!.length < 5) {
          return 'Must be more than 5 characters';
        }
      },
    );
  }
}
