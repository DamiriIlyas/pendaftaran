import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pendaftaran/src/routes/constant.dart';

class DaftarAkun extends StatefulWidget {
  const DaftarAkun({super.key});

  @override
  State<DaftarAkun> createState() => _DaftarAkunState();
}

class _DaftarAkunState extends State<DaftarAkun> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
         appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.greenAccent, Colors.blueAccent],
            ),
          ),
        ),
        leading: IconButton(
          icon: InkWell(
            onTap: () => Get.toNamed(loginRoute),
            child: Icon(Icons.arrow_back)),
          iconSize: 25.0,
          color: Colors.white,
          onPressed: () {},
        ),
        title: Text(
          'Daftar Akun',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 30, right: 30, top: 150),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  'Nama',
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
                    // controller: email,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Nama Ini Akan Tampil Di Menu Dashboard',
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
                    // controller: email,
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
                    // obscureText: _isHidden,
                    // controller: password,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Buat Password Yang Mudah Di Ingat',
                        hintStyle: TextStyle(color: Color(0xFf359D9E)),
                        filled: true),
                  )),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.only(left: 17, right: 17),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xFf359D9E),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: InkWell(onTap: () => Get.toNamed(dashboardRoute),
                    child: Text(
                      'Daftar',
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