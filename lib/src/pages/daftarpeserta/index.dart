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
            'Daftar Peserta',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(
              left: 15,
              right: 15,
            ),
            margin: EdgeInsets.symmetric(vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, top: 10, bottom: 10),
                  child: Container(
                    height: 250,
                    width: MediaQuery.of(context).size.width,
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
                            Row(
                              children: [
                                Container(
                                  height: 50,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/LogoPondok.png'),
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 3),
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
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 3),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 3),
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
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 3),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 3),
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
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 3),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 3),
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
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 3),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 3),
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
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 3),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 3),
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
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 3),
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
