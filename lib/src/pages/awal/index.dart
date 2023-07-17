import 'dart:async';
import 'package:flutter/material.dart';
import 'package:pendaftaran/src/pages/login/index.dart';
import 'package:pendaftaran/src/routes/constant.dart';

class awal extends StatefulWidget {
  @override
  _awalState createState() => _awalState();
}

class _awalState extends State<awal> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3), // Waktu tampilan splash screen (3 detik dalam contoh ini)
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => LoginPage()),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue, // Warna latar belakang splash screen
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                  child: Image.asset(
                    'assets/LogoPondok.png',
                    height: 100,
                    width: 100,
                  ),
                ),
          ],
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Text('Halaman Utama'),
      ),
    );
  }
}
