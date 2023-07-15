import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pendaftaran/src/routes/constant.dart';
import 'package:pendaftaran/src/service/assets.dart';
import 'package:pendaftaran/src/storage/preference.dart';
import 'package:pendaftaran/src/service/api.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _Dashboard();
}

class _Dashboard extends State<Dashboard> {
  String? name;
  String? id;

  getAtribute() async {
    name = await getName();
    id = await getId();
    String? nama;
    String?userId;
    setState(() {
      nama = name;
      userId = id;
    });
  }

  @override
  void initState() {
    getAtribute();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 230,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                Color(0xFF359D9E), const Color.fromARGB(255, 55, 122, 238)],
                        ),
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(40),
                            bottomLeft: Radius.circular(40)
                            ),
                            ),
                            padding: EdgeInsets.only(left: 30, right: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 20),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                      Image.asset(
                                        LogoPondok, height: 70,
                                width: 70,),
                                      
                                      Icon(
                                          Icons.notifications_active,
                                          color: Colors.white,
                                          size: 30),
                                  ]
                                  
                                ),
                                
                                SizedBox(height: 20),
                                Text(
                                  'Assalamualaikum',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '${name}',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 3,),
                                    Text(
                                  'Selamat Datang Di Aplikasi Pendaftaran Pondok\nPesantren Babul Futuh',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,),
                                ),
                              ],
                            ),
                          ),
                          ],
                        ),
              SizedBox(height: 20),
              Center(
                child: Container(
                  height: 35,
                  width: 300,
                  decoration: BoxDecoration(
                      color: Color(0xFF359D9E),
                      borderRadius: BorderRadius.circular(20),
                      ),
                  child: Center(
                    child: Text(
                      'Pilihan Menu',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.only(left: 30, right: 30),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () => Get.toNamed(isiformulirRoute, arguments: [id]),
                          child: Column(
                            children: [
                              Image.asset(
                                a10,
                                height: 80,
                                width: 80,
                              ),
                              SizedBox(height: 5),
                              RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(children: [
                                  TextSpan(
                                    text: 'Formulir\n',
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Color(0xFF359D9E),
                                    ),
                                  ),
                                  TextSpan(
                                      text: 'Pendaftaran',
                                      style: TextStyle(
                                          fontSize: 13, color: Color(0xFF359D9E))),
                                ]),
                              )
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () => Get.toNamed(persyaratanRoute),
                          child: Column(
                            children: [
                              Image.asset(
                                a11,
                                height: 80,
                                width: 80,
                              ),
                              SizedBox(height: 5),
                              RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(children: [
                                  TextSpan(
                                    text: 'Syarat\n',
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Color(0xFF359D9E),
                                    ),
                                  ),
                                  TextSpan(
                                      text: 'Pendaftaran',
                                      style: TextStyle(
                                          fontSize: 13, color: Color(0xFF359D9E))),
                                ]),
                              )
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () => Get.toNamed(pembayaranRoute),
                          child: Column(
                            children: [
                              Image.asset(
                                a13,
                                height: 80,
                                width: 80,
                              ),
                              SizedBox(height: 20),
                              Text(
                                'Pembayaran',
                                style: TextStyle(
                                    color: Color(0xFF359D9E), fontSize: 15),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () => Get.toNamed(lembagaRoute),
                          child: Column(
                            children: [
                              Image.asset(
                                a14,
                                height: 80,
                                width: 80,
                              ),
                              SizedBox(height: 5),
                              Text(
                                'Lembaga',
                                style: TextStyle(
                                    color: Color(0xFF359D9E), fontSize: 15),
                              )
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () => Get.toNamed(pengumumanRoute),
                          child: Column(
                            children: [
                              Image.asset(
                                a15,
                                height: 80,
                                width: 80,
                              ),
                              SizedBox(height: 5),
                              Text(
                                'Pengumuman',
                                style: TextStyle(
                                    color: Color(0xFF359D9E), fontSize: 15),
                              )
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () => Get.toNamed(),
                          child: Column(
                            children: [
                              Image.asset(
                                a12,
                                height: 80,
                                width: 80,
                              ),
                              SizedBox(height: 5),
                              Text(
                                  'Daftar Peserta',
                                  style: TextStyle(
                                      color: Color(0xFF359D9E), fontSize: 15),
                                ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 15,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: Color(0xffEDEDED)),
              ),
              SizedBox(height: 35),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Alur Pendaftaran',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Penerimaan Peserta Didik Baru (PPDB)',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Tahun Ajaran Baru 2023-2024',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.only(left: 30, right: 30),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 65,
                            width: 270,
                            decoration: BoxDecoration(
                                color: Color(0xFF359D9E),
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                              child: Text(
                                'Calon Siswa Melakukan Pendaftaran dan Input\ndata secara online di Aplikasi Babul Futuh',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Image.asset(
                          a4,
                          height: 60,
                          width: 55,
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Image.asset(
                          a1,
                          height: 60,
                          width: 55,
                        ),
                        Expanded(
                          child: Container(
                            height: 65,
                            width: 270,
                            decoration: BoxDecoration(
                                color: Color(0xFF359D9E),
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                              child: Text(
                                'Calon Siswa Melengkapi persyaratan-\npersyaratan yang dibutuhkan',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 65,
                            width: 270,
                            decoration: BoxDecoration(
                                color: Color(0xFF359D9E),
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                              child: Text(
                                'Calon Siswa Melakukan pembayaran yang\ndi tentukan',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Image.asset(
                          a2,
                          height: 60,
                          width: 55,
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Image.asset(
                          a3,
                          height: 60,
                          width: 55,
                        ),
                        Expanded(
                          child: Container(
                            height: 65,
                            width: 270,
                            decoration: BoxDecoration(
                                color: Color(0xFF359D9E),
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                              child: Text(
                                'Pengumuman hasil pendaftaran',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.white,
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
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
