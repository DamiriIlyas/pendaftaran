import 'package:pendaftaran/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pendaftaran/src/routes/constant.dart';

class profil extends StatefulWidget {
  const profil({super.key});

  @override
  State<profil> createState() => _profilState();
}

class _profilState extends State<profil> {
  @override
  Widget build(BuildContext context) {
  return SafeArea(
      child: Scaffold(
      backgroundColor: Color(0xffEDEDED),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
          children: [
            Container(
              height: 250,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(gradient: LinearGradient(
            colors: [Colors.greenAccent, Colors.blueAccent],
          ),),
              padding: EdgeInsets.only(left: 10, right: 20, top: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(onTap: () => Get.toNamed(dashboardRoute),
                        child: IconButton(
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            size: 20,
                          ),
                          onPressed: () {},
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'Hasil Pendaftaran',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 80, bottom: 20),
                child: Container(
                height: 600,
                width: 320,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                            BoxShadow(
                                color: Colors.black87,
                                blurRadius: 2,
                                offset: const Offset(0, 1)),
                  ],
                ),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // Padding(
                      //   padding: EdgeInsets.symmetric(
                      //       horizontal: 10, vertical: 15),
                      //   child: Container(
                      //      height: 25,
                      //       width: 250,
                      //       decoration: BoxDecoration(
                      //       color: Color(0xFF359D9E),
                      //         borderRadius: BorderRadius.circular(20)),
                      //         child: Center(
                      //           child: Text(
                      //           'Data Pribadi',
                      //           style: TextStyle(
                      //           fontSize: 15,
                      //          color: Colors.white,
                      //       fontWeight: FontWeight.bold),
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      SizedBox(height: 15),
                      Container(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                'Nama Lengkap',
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ),
                            Text(
                              'Muhammad Damiri',
                              style: TextStyle(
                                  fontSize: 13, color: Color(0xFF9098B1)),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 15),
                      Container(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                'NISN',
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ),
                            Text(
                              '2019340987990',
                              style: TextStyle(
                                  fontSize: 13, color: Color(0xFF9098B1)),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 15),
                      Container(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                'Email',
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ),
                            Text(
                              'email.uaser@gmail.com',
                              style: TextStyle(
                                  fontSize: 13, color: Color(0xFF9098B1)),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 15),
                      Container(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                'NIK',
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ),
                            Text(
                              '35141131200002',
                              style: TextStyle(
                                  fontSize: 13, color: Color(0xFF9098B1)),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 15),
                      Container(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                'Jenis Kelamin',
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text(
                              'Laki-Laki',
                              style: TextStyle(
                                  fontSize: 13, color: Color(0xFF9098B1)),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 15),
                      Container(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                'Tempat Lahir',
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text(
                              'Pasuruan',
                              style: TextStyle(
                                  fontSize: 13, color: Color(0xFF9098B1)),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 15),
                      Container(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                'Tanggal Lahir',
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text(
                              '05/07/2004',
                              style: TextStyle(
                                  fontSize: 13, color: Color(0xFF9098B1)),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 15),
                      Container(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                'Alamat Lengkap',
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text(
                              'Pandaan',
                              style: TextStyle(
                                  fontSize: 13, color: Color(0xFF9098B1)),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 15),
                      Container(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                'Tahun Lulus',
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text(
                              '2010',
                              style: TextStyle(
                                  fontSize: 13, color: Color(0xFF9098B1)),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 15),
                      Container(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                'Nama Wali',
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text(
                              'Ainul',
                              style: TextStyle(
                                  fontSize: 13, color: Color(0xFF9098B1)),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 15),
                      Container(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                'NIK Wali',
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text(
                              '351421345',
                              style: TextStyle(
                                  fontSize: 13, color: Color(0xFF9098B1)),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 15),
                      Container(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                'Alamat Wali',
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text(
                              'Pasuruan',
                              style: TextStyle(
                                  fontSize: 13, color: Color(0xFF9098B1)),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 15),
                      Container(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                'Pekerjaan Wali',
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text(
                              'Swasta',
                              style: TextStyle(
                                  fontSize: 13, color: Color(0xFF9098B1)),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 15),
                      Container(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                'Nomor Telepon',
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text(
                              '089765765345',
                              style: TextStyle(
                                  fontSize: 13, color: Color(0xFF9098B1)),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 15),
                      Container(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                'Pilihan Sekolah',
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text(
                              'MTs Babul Futuh',
                              style: TextStyle(
                                  fontSize: 13, color: Color(0xFF9098B1)),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 15),
                      Container(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                'Upload Berkas',
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text(
                              'Masukkan Berkas',
                              style: TextStyle(
                                  fontSize: 13, color: Color(0xFF9098B1)),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 40),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 40,
                    width: 150,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        
                        colors: [Colors.greenAccent, Colors.blueAccent],),
                      borderRadius: BorderRadius.circular(30),
                       boxShadow: [
                        BoxShadow(
                            color: Colors.black87,
                            blurRadius: 2,
                            offset: const Offset(0, 1),
                            ),
                            
                       ],
                    ),
                    child: Center(
                      child: Text(
                        'Edit Profil',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                        ),
                      ),
                     
                    //   Container(
                    // height: 40,
                    // width: 150,
                    // decoration: BoxDecoration(
                    //   gradient: LinearGradient(
                      
                    //   colors: [Colors.greenAccent, Colors.blueAccent],),
                    //   borderRadius: BorderRadius.circular(30),
                    //    boxShadow: [
                    //   BoxShadow(
                    //       color: Colors.black87,
                    //       blurRadius: 2,
                    //       offset: const Offset(0, 1),
                    //       ),
                          
                    //    ],
                    // ),
                    // child: Center(
                    //   child: Text(
                    //   'Cetak Formulir',
                    //   style: TextStyle(
                    //     fontSize: 15,
                    //     color: Colors.white,
                    //     fontWeight: FontWeight.bold,
                    //   ),
                    //   ),
                    // ),
                    //   ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
            ],
          ),
        ),
      ),
    );
  }
}
