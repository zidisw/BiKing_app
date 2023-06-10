import 'dart:io';
import 'package:biking_app/components/custom_buttons.dart';
import 'package:biking_app/constants.dart';
import 'package:biking_app/screens/login_screen/login_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sizer/sizer.dart';
// import 'model.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  _RegisterState();

  bool showProgress = false;
  bool visible = false;

  final _formkey = GlobalKey<FormState>();
  final _auth = FirebaseAuth.instance;

  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmpassController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController mobileController = TextEditingController();
  final TextEditingController kelasController = TextEditingController();
  final TextEditingController perwalianController = TextEditingController();
  final TextEditingController mapelController = TextEditingController();

  bool _isObscure = true;
  bool _isObscure2 = true;
  File? file;
  var options = [
    'Siswa',
    'Guru',
    'Admin',
    'Wali Kelas'
  ];
  var _currentItemSelected = "Siswa";
  var role = "Siswa";

  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    //email field
    final emailField = TextFormField(
        autofocus: false,
        controller: emailController,
        keyboardType: TextInputType.emailAddress,
        validator: (value) {
          if (value!.isEmpty) {
            return ("Masukkan email anda");
          }
          // reg expression for email validation
          if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
              .hasMatch(value)) {
            return ("Masukkan email yang benar");
          }
          return null;
        },
        onSaved: (value) {
          emailController.text = value!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.mail),
          contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Email",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ));
      
      //nama
      final nameField = TextFormField(
          autofocus: false,
          controller: nameController,
          keyboardType: TextInputType.text,
          validator: (value) {
            if (value!.isEmpty) {
              return "Masukkan nama anda";
            }
            return null;
          },
          onSaved: (value) {
            nameController.text = value!;
          },
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.person),
            contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
            hintText: "Nama",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        );

      final phoneField = TextFormField(
      autofocus: false,
      controller: mobileController,
      keyboardType: TextInputType.phone,
      validator: (value) {
        if (value!.isEmpty) {
          return "Masukkan nomor telepon anda";
        }
        return null;
      },
      onSaved: (value) {
        mobileController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.phone),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Nomor Telepon",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

    //kelas siswa
    final siswaField = TextFormField(
          autofocus: false,
          controller: kelasController,
          keyboardType: TextInputType.text,
          onSaved: (value) {
            nameController.text = value!;
          },
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.class_),
            contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
            hintText: "Kelas (Siswa)",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        );

    //kelas walikelas
    final walikelasField = TextFormField(
          autofocus: false,
          controller: perwalianController,
          keyboardType: TextInputType.text,
          onSaved: (value) {
            nameController.text = value!;
          },
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.class_),
            contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
            hintText: "Kelas Perwalian (Wali Kelas)",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        );

        //mapel guru
        final guruField = TextFormField(
          autofocus: false,
          controller: mapelController,
          keyboardType: TextInputType.text,
          onSaved: (value) {
            mapelController.text = value!;
          },
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.class_),
            contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
            hintText: "Mata Pelajaran yang diajarkan (Guru Mata Pelajaran)",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        );

    //password field
    final passwordField = TextFormField(
        autofocus: false,
        controller: passwordController,
        obscureText: _isObscure,
        validator: (value) {
          RegExp regex = RegExp(r'^.{6,}$');
          if (value!.isEmpty) {
            return ("Kata sandi diperlukan untuk masuk");
          }
          if (!regex.hasMatch(value)) {
            return ("Masukkan kata sandi (Min. 6 Karakter)");
          }
          return null;
        },
        onSaved: (value) {
          passwordController.text = value!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.vpn_key),
          suffixIcon: IconButton(
              icon: Icon(_isObscure ? Icons.visibility_off : Icons.visibility),
              onPressed: () {
                setState(() {
                  _isObscure = !_isObscure;
                });
              }),
          contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Kata Sandi",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ));

    //confirm password field
    final confirmPasswordField = TextFormField(
        autofocus: false,
        controller: confirmpassController,
        obscureText: _isObscure2,
        validator: (value) {
          if (confirmpassController.text !=
              passwordController.text) {
            return "Kata Sandi tidak sesuai";
          }
          return null;
        },
        onSaved: (value) {
          confirmpassController.text = value!;
        },
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.vpn_key),
          suffixIcon: IconButton(
              icon: Icon(_isObscure2 ? Icons.visibility_off : Icons.visibility),
              onPressed: () {
                setState(() {
                  _isObscure2 = !_isObscure2;
                });
              }),
          contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Konfirmasi Kata sandi",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ));

    //signup button
    final signUpButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.redAccent,
      child: DefaultButton(
          title: "Daftar",
          onPress: () {
            signUp(emailController.text, passwordController.text, role);
          },
          ),
    );
    return Scaffold(

      body:  Container(
        child: Column(
          children: [
            Positioned(
              left: 0,
              top: 0,
              child: SizedBox(
                width: 391 * fem,
                height: 100 * fem,
                child: Image.asset(
                  'assets/images/headertrans.png',
                  fit: BoxFit.fill,
                    ),
                  ),
                ),
          SizedBox(
              width: 100.w,
              height: 10.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                  ),
                  Image.asset(
                    'assets/images/Vector-2.png',
                    height: 20.h,
                    width: 40.w,
                  ),
                  sizedBox,
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 5.w, right: 5.w),
                child: Form(
                  key: _formkey,
                  child: SingleChildScrollView(
                  child: 
                  Column(

                    children: [
                      const SizedBox(height: 20),
                      emailField,
                      const SizedBox(height: 20),
                      nameField,
                      const SizedBox(height: 20),
                      phoneField,
                      const SizedBox(height: 20),
                      siswaField,
                      const SizedBox(height: 20),
                      walikelasField,
                      const SizedBox(height: 20),
                      guruField,
                      const SizedBox(height: 20),
                      passwordField,
                      const SizedBox(height: 20),
                      confirmPasswordField,
                      const SizedBox(height: 15),
                      Align(
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              const Text(
                                "Peran: ",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: kContainerColor,
                                ),
                              ),
                              const SizedBox(width: 10),
                              DropdownButton<String>(
                                dropdownColor: Colors.white,
                                iconEnabledColor: kSecondaryColor,
                                style: const TextStyle(
                                  color: kPrimaryColor,
                                  fontSize: 15,
                                ),
                                items: options.map((String dropDownStringItem) {
                                  return DropdownMenuItem<String>(
                                    value: dropDownStringItem,
                                    child: Text(dropDownStringItem),
                                  );
                                }).toList(),
                                onChanged: (newValueSelected) {
                                  setState(() {
                                    _currentItemSelected = newValueSelected!;
                                    role = newValueSelected;
                                  });
                                },
                                value: _currentItemSelected,
                              ),
                            ],
                          ),
                        ),
                      signUpButton,
                    ],
                  ),
                  ),
                ),
                ),
              ),

            Container(
              color: Colors.white,
              width: double.infinity,
              padding: const EdgeInsets.only(bottom: 15.0, top: 15.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text("Punya akun? "),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginScreen(),
                          ),
                        );
                      },
                      child: const Text(
                        "Masuk",
                        style: TextStyle(
                          color: kSecondaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
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

  void signUp(String email, String password, String role) async {
    const CircularProgressIndicator();
    if (_formkey.currentState!.validate()) {
      await _auth
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((value) => {postDetailsToFirestore(email, role)})
          .catchError((e) {
        Fluttertoast.showToast(msg: "Email already exists");
          });
    }
  }
  

  postDetailsToFirestore(String email, String name) async {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  var user = _auth.currentUser;

  // Simpan data pengguna ke dalam Firestore
  await firestore.collection('users').doc(user!.uid).set({
    'email': emailController.text,
    'role': role,
    'nama': nameController.text,
    'nomorTelepon': mobileController.text,
    'kelas': kelasController.text,
    'perwalian' : perwalianController.text,
    'gurumapel': mapelController.text
  });
  Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => LoginScreen(),
          ),
  );
  }
}