import 'package:flutter/material.dart';
import 'package:flutter_biking/screens/profil/edit_password.dart';
import 'package:flutter_biking/screens/beranda/home_page.dart';
import 'package:flutter/services.dart';

Future<void> loadFont() async {
  await Future.delayed(Duration(milliseconds: 500));
  final regularFont = await rootBundle.load('fonts/NamaFont-Regular.ttf');
  final boldFont = await rootBundle.load('fonts/NamaFont-Bold.ttf');
  // Use the loaded fonts to create TextStyles
  final regularTextStyle =
      TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.normal);
  final boldTextStyle =
      TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.bold);
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscureText = true;
  bool _emailValid = false; // variabel email valid
  bool _passwordValid = false; // variabel password valid
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFF38ACFF),
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 0,
              child: SizedBox(
                width: 395,
                height: 152,
                child: Image.asset(
                  'assets/image/elemenatas.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 100, horizontal: 20),
                child: Image.asset(
                  'assets/image/biking.png',
                  height: 100,
                  width: 150,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 49, horizontal: 26),
                decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(35),
                        topRight: Radius.circular(35))),
                width: double.infinity,
                height: 570,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Masuk ke Akun Anda",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(0xFF6F91FF),
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 29,
                    ),
                    const Text(
                      "Masukkan e-mail anda",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(0xFF000000),
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 16.0,
                          horizontal: 12.0,
                        ),
                        labelStyle: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xFF677294),
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      autovalidateMode: AutovalidateMode.always,
                      validator: (value) {
                        final emailPattern =
                            r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
                        RegExp regExp = new RegExp(emailPattern);
                        if (value == null || value.isEmpty) {
                          _emailValid = false;
                          return 'Masukkan e-mail anda';
                        } else if (!regExp.hasMatch(value)) {
                          _emailValid = false;
                          return 'masukkan e-mail yang benar';
                        }
                        _emailValid = true;
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Masukkan password anda",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(0xFF000000),
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    TextFormField(
                      obscureText: _obscureText,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 16.0,
                          horizontal: 12.0,
                        ),
                        labelStyle: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xFF677294),
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obscureText
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Colors.grey,
                          ),
                          onPressed: () {
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          },
                        ),
                      ),
                      autovalidateMode: AutovalidateMode.always,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          _passwordValid = false;
                          return 'Masukkan password anda';
                        }
                        _passwordValid = true;
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 41,
                    ),
                    Center(
                      child: Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: ElevatedButton(
                            onPressed: _emailValid && _passwordValid
                                ? () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => HomePage()),
                                    );
                                  }
                                : null,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF38ACFF),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 40, vertical: 10),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Text(
                              "Log in",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Center(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => UbahPassword()),
                          );
                        },
                        child: Text(
                          "Anda Lupa Password?",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
