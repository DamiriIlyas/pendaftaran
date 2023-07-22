import 'package:get/get.dart';
import 'package:pendaftaran/main.dart';
import 'package:pendaftaran/src/routes/constant.dart';
import 'package:pendaftaran/src/service/assets.dart';
import 'package:flutter/material.dart';

class lembaga extends StatefulWidget {
  const lembaga({super.key});

  @override
  State<lembaga> createState() => _lembagaState();
}

class _lembagaState extends State<lembaga> {
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
          'Profil Lembaga',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                 Image.asset(
                  oyi,
                  height: 290,
                  width: MediaQuery.of(context).size.width,
                 ),
                 Center(
                   child: Padding(
                     padding: const EdgeInsets.only(left: 20, right: 20, top: 200),
                     child: Container(
                      height: 270,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black87,
                                blurRadius: 2,
                                offset: const Offset(0, 1),
                                ),
                          ],
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                              child: Padding(
                            padding: EdgeInsets.only(top: 20, bottom: 30, left: 20, right: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Profil Lembaga',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700),
                                    ),
                                     SizedBox(height: 5),
                                     Text(
                                      'Pondok Pesantren Babul Futuh adalah salah satu satuan pendidikan dengan jenjang Mts - MA di Kemiri Sewu, Kec. Pandaan, Kab. Pasuruan, Jawa Timur. Dalam menjalankan kegiatannya, Babul Futuh berada di bawah naungan Kementerian Agama',
                                      style: TextStyle(
                                          fontSize: 15,
                                          ),
                                    ),
                                     Text(
                                      'Pondok Pesantren',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700),
                                    ),
                                     SizedBox(height: 5),
                                     Text(
                                      'Pondok Pesantren Babul Futuh memiliki 2 lembaga formal yaitu Mts Babul Futuh jenjang SLTP dan MA Babul Futuh jenjang SLTA',
                                      style: TextStyle(
                                          fontSize: 15,
                                          ),
                                    ),
                                  ],
                              ),
                      ),
                     ),
                   ),
              ),
                 ),
                ],
              ),
              
            ],
            
          ),
        ), 
        ),
     );
  }
}