import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:pendaftaran/src/routes/constant.dart';
import 'package:pendaftaran/src/service/assets.dart';
import 'package:pendaftaran/src/controller/LoginController.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  bool validate = false;
  bool inHiddenPass = true;
  bool _isHidden = true;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  LoginController loginCon = Get.put(LoginController());
  bool passToggle = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 30, right: 30, top: 80),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(
                    'assets/LogoPondok.png',
                    height: 100,
                    width: 100,
                  ),
                ),
                Center(
                  child: Text(
                    'Penerimaan Santri Dan',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xFf359D9E),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    'Siswa baru',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xFf359D9E),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height:25),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  'Email',
                  style: TextStyle(
                      color: Color(0xFf359D9E),
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xffFFD9D9D9)),
                child: TextField(
                    controller: email,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Masukkan Email Anda',
                      hintStyle: TextStyle(color: Color(0xFf359D9E)),
                      filled: true,
                    )),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  'Password',
                  style: TextStyle(
                      color: Color(0xFf359D9E),
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
             SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color(0xffFFD9D9D9)),
                  child: TextField(
                    obscureText: _isHidden,
                    controller: password,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Masukkan Password',
                        hintStyle: TextStyle(color: Color(0xFf359D9E)),
                        filled: true),
                  )),
            ),
             SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  'Lupa Password?',
                  style: TextStyle(
                      color: Color(0xFf359D9E),
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () async {
                if (email.text.isEmpty || password.text.isEmpty) {
                  setState(() {
                    validate = true;
                  });
                } else {
                  await loginCon.loginUser(email.text, password.text);
                }
              },
              child: Padding(
                padding: EdgeInsets.only(left: 17, right: 17),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xFf359D9E),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Masuk',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ),
            ),
             SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  'Belum punya akun?',
                  style: TextStyle(
                      color: Color(0xFf359D9E),
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
           InkWell( onTap: () => Get.toNamed(daftarakunRoute),
             child: Padding(
               padding: EdgeInsets.only(left: 17, right: 17),
               child: Container(
                 height: 50,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(30),
                   color: Color(0xFf359D9E),
                 ),
                 child: Align(
                   alignment: Alignment.center,
                   child: Text(
                     'Daftar Akun',
                     style: TextStyle(
                         color: Colors.white,
                         fontSize: 17,
                         fontWeight: FontWeight.w400),
                   ),
                 ),
               ),
             ),
           ),
            SizedBox(
              height: 15,
            ),
          ],
        )),
      ),
      ),
    );
  }
}
