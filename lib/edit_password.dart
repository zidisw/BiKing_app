import 'package:flutter/material.dart';
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

class UbahPassword extends StatefulWidget {
  @override
  _UbahPasswordState createState() => _UbahPasswordState();
}

class _UbahPasswordState extends State<UbahPassword> {
  int _selectedIndex = 0;
  bool _obscureText = true;

  static List<Widget> _widgetOptions = <Widget>[
    Text('Beranda'),
    Text('Profil'),
    Text('Pengaturan'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil'),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Stack(children: [
            Align(
                alignment: Alignment.topLeft,
                child: Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        const Text(
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
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/ubah_password.png",
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
                    padding: EdgeInsets.symmetric(horizontal: 26),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
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
                              contentPadding: EdgeInsets.symmetric(
                                vertical: 16.0,
                                horizontal: 12.0,
                              ),
                              labelText: "password",
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
                          ),
                        ]))),
            Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 26),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
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
                              contentPadding: EdgeInsets.symmetric(
                                vertical: 16.0,
                                horizontal: 12.0,
                              ),
                              labelText: "password",
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
                          ),
                        ]))),
            Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 26),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
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
                              contentPadding: EdgeInsets.symmetric(
                                vertical: 16.0,
                                horizontal: 12.0,
                              ),
                              labelText: "password",
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
                          ),
                        ]))),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 26),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 560,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Row(
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
                              content: Text('Berhasil Ubah Kata Sandi'),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text('OK'),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        padding:
                            EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
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
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Pengaturan',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}
