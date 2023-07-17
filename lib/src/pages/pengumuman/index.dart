// import 'package:pendaftaran/src/router/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pendaftaran/src/routes/constant.dart';
// import 'package:get/get.dart';

class pengumuman extends StatefulWidget {
  const pengumuman({super.key});

  @override
  State<pengumuman> createState() => _pengumumanState();
}

class _pengumumanState extends State<pengumuman> {
  @override
  Widget build(BuildContext context) {
   return SafeArea(
     child: Scaffold(
          backgroundColor: Color(0xffEDEDED),
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
                onTap: () => Get.toNamed(dashboardRoute),
                child: Icon(Icons.arrow_back)),
              iconSize: 25.0,
              color: Colors.white,
              onPressed: () {},
            ),
            title: Text(
              'Pengumuman',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          body:
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(left: 15, right: 15,),
              margin: EdgeInsets.symmetric(vertical: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
                    child: Container(
                      height: 200,
                      width: 300,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black87,
                                blurRadius: 2,
                                offset: const Offset(0, 1)),
                          ],
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                              child: Padding(
                            padding: EdgeInsets.only(top: 20, bottom: 30, left: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Tanggal Masuk Aktif Kegiatan\nTahun Ajaran 2023-2024',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w700),
                                    ),
                                     SizedBox(height: 10),
                                     Text(
                                      'Aktif Sekolah',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w700),
                                    ),
                                     SizedBox(height: 5),
                                     Text(
                                      '12 06 Juli 2023',
                                      style: TextStyle(
                                          fontSize: 15,
                                          ),
                                    ),
                                    SizedBox(height: 5),
                                     Text(
                                      'Aktif Pesantren',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w700),
                                    ),
                                     SizedBox(height: 5),
                                     Text(
                                      '12 Juni',
                                      style: TextStyle(
                                          fontSize: 15,
                                          ),
                                    ),
                                    SizedBox(height: 5),
                                  ],
                                ),
                              ),
                            ),
                          ),   
                      ),
                ],
              ),
            ),
          ),
     
      ),
   );
  }
}
