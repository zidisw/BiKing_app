import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Future<void> loadFont() async {
  await Future.delayed(const Duration(milliseconds: 500));
  final regularFont = await rootBundle.load('fonts/NamaFont-Regular.ttf');
  final boldFont = await rootBundle.load('fonts/NamaFont-Bold.ttf');
  // Use the loaded fonts to create TextStyles
  const regularTextStyle =
      TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.normal);
  const boldTextStyle =
      TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.bold);
}

class UbahPassword extends StatefulWidget {
  const UbahPassword({super.key});

  @override
  _UbahPasswordState createState() => _UbahPasswordState();
}

class _UbahPasswordState extends State<UbahPassword> {
  bool _obscureText = true;

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
        title: const Text('Ganti Password',
            style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 20,
                fontWeight: FontWeight.w700)),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Stack(children: [
            const Align(
                alignment: Alignment.topLeft,
                child: Padding(
                    padding: EdgeInsets.only(left: 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Ubah Password",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Color.fromARGB(255, 64, 173, 251),
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ))),
            Align(
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        alignment: Alignment.topCenter,
                        width: 350,
                        height: 350,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/images/ubah_password.png",
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 26),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 305,
                          ),
                          const Text(
                            "Masukkan password lama",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xFF000000),
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          TextFormField(
                            obscureText: _obscureText,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                vertical: 16.0,
                                horizontal: 12.0,
                              ),
                              labelText: "password",
                              labelStyle: const TextStyle(
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
                          ),
                        ]))),
            Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 26),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 387,
                          ),
                          const Text(
                            "Masukkan password baru",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xFF000000),
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          TextFormField(
                            obscureText: _obscureText,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                vertical: 16.0,
                                horizontal: 12.0,
                              ),
                              labelText: "password",
                              labelStyle: const TextStyle(
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
                          ),
                        ]))),
            Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 26),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 467,
                          ),
                          const Text(
                            "Konfirmasi password baru",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xFF000000),
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          TextFormField(
                            obscureText: _obscureText,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                vertical: 16.0,
                                horizontal: 12.0,
                              ),
                              labelText: "password",
                              labelStyle: const TextStyle(
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
                          ),
                        ]))),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 26),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 560,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Row(
                                children: [
                                  Icon(
                                    Icons.check_circle,
                                    color: Colors.green,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text('Sukses'),
                                ],
                              ),
                              content: const Text('Berhasil Ubah Kata Sandi'),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text('OK'),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        padding:
                            const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text(
                        "Simpan",
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
      
    );
  }
}
