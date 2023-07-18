import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pendaftaran/src/routes/constant.dart';

class DaftarPeserta extends StatefulWidget {
  const DaftarPeserta({super.key});

  @override
  State<DaftarPeserta> createState() => _DaftarPesertaState();
}

class _DaftarPesertaState extends State<DaftarPeserta> {
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
                    height: 55,
                    width: 500,
                    decoration: BoxDecoration( gradient: LinearGradient(
                            colors: [
                  Colors.greenAccent, Colors.blueAccent],
                          ),),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 20),
                          child: InkWell(onTap: () => Get.toNamed(dashboardRoute),
                            child: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20, left: 10),
                          child: Text(
                            'Daftar Peserta',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                            child: Padding( 
                          padding: EdgeInsets.only(top: 70, right: 5, bottom: 30, left: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                            height: 50,
                                            width: 40,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(10),
                                                image: DecorationImage(
                                                    image: AssetImage('assets/LogoPondok.png'),
                                                    fit: BoxFit.cover)),
                                          ),
                                          Text(
                                    'Peserta yang sudah daftar',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700),
                                  ),
                                    ],
                                  ),
                                  SizedBox(height: 5),
                                  Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(top: 5, right: 10),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(horizontal: 3),
                                                child: Text(
                                                  'Muhammad Fahmi Aziz',
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      fontWeight: FontWeight.w400),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(horizontal: 3),
                                                child: Text(
                                                  'MA Babul Futuh',
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      color: Colors.blueAccent,
                                                      fontWeight: FontWeight.w400),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        
                                      ),
                                    ],
                                  ),
                                  Padding(
                                        padding: EdgeInsets.only(top: 5, right: 5),
                                        child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.symmetric(horizontal: 3),
                                          child: Text(
                                            'Muhammad Fahmi Aziz',
                                            style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w400),
                                          ),  
                                        ),
                                      ),
                                      Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(horizontal: 3),
                                                child: Text(
                                                  'MA Babul Futuh',
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      color: Colors.blueAccent,
                                                      fontWeight: FontWeight.w400),
                                                ),
                                              ),
                                            ),
                                    ],
                                        
                                      ),
                                        ),
                                         Padding(
                                        padding: EdgeInsets.only(top: 5, right: 5),
                                        child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.symmetric(horizontal: 3),
                                          child: Text(
                                            'Muhammad Fahmi Aziz',
                                            style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w400),
                                          ),  
                                        ),
                                      ),
                                      Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(horizontal: 3),
                                                child: Text(
                                                  'MA Babul Futuh',
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      color: Colors.blueAccent,
                                                      fontWeight: FontWeight.w400),
                                                ),
                                              ),
                                            ),
                                    ],
                                        
                                      ),
                                        ),
                                         Padding(
                                        padding: EdgeInsets.only(top: 5, right: 5),
                                        child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.symmetric(horizontal: 3),
                                          child: Text(
                                            'Muhammad Fahmi Aziz',
                                            style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w400),
                                          ),  
                                        ),
                                      ),
                                      Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(horizontal: 3),
                                                child: Text(
                                                  'MA Babul Futuh',
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      color: Colors.blueAccent,
                                                      fontWeight: FontWeight.w400),
                                                ),
                                              ),
                                            ),
                                    ],
                                        
                                      ),
                                        ),
                                         Padding(
                                        padding: EdgeInsets.only(top: 5, right: 5),
                                        child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.symmetric(horizontal: 3),
                                          child: Text(
                                            'Muhammad Fahmi Aziz',
                                            style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w400),
                                          ),  
                                        ),
                                      ),
                                      Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(horizontal: 3),
                                                child: Text(
                                                  'MA Babul Futuh',
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      color: Colors.blueAccent,
                                                      fontWeight: FontWeight.w400),
                                                ),
                                              ),
                                            ),
                                    ],
                                        
                                      ),
                                        ),
                                         Padding(
                                        padding: EdgeInsets.only(top: 5, right: 5),
                                        child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.symmetric(horizontal: 3),
                                          child: Text(
                                            'Muhammad Fahmi Aziz',
                                            style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w400),
                                          ),  
                                        ),
                                      ),
                                      Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(horizontal: 3),
                                                child: Text(
                                                  'MA Babul Futuh',
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      color: Colors.blueAccent,
                                                      fontWeight: FontWeight.w400),
                                                ),
                                              ),
                                            ),
                                    ],
                                        
                                      ),
                                        ),
                                ],
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