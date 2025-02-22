// import 'package:pendaftaran/src/router/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pendaftaran/src/controller/AddFormController.dart';
import 'package:pendaftaran/src/controller/UploadController.dart';
import 'package:pendaftaran/src/controller/UploadFotoController.dart';
import 'package:pendaftaran/src/controller/UploadSkhuController.dart';
import 'package:pendaftaran/src/routes/constant.dart';
import 'package:pendaftaran/src/storage/preference.dart';
import 'dart:io';
import 'package:http/http.dart' as http;

class IsiFormulir extends StatefulWidget {
  const IsiFormulir({super.key});

  @override
  State<IsiFormulir> createState() => _IsiFormulirState();
}

class _IsiFormulirState extends State<IsiFormulir> {
  TextEditingController namaLengkap = TextEditingController();
  TextEditingController nisn = TextEditingController();
  TextEditingController jenisKelamin = TextEditingController();
  TextEditingController ttl = TextEditingController();
  TextEditingController alamat = TextEditingController();
  TextEditingController asalSekolah = TextEditingController();
  TextEditingController tahunLulus = TextEditingController();
  TextEditingController namaWali = TextEditingController();
  TextEditingController nik = TextEditingController();
  TextEditingController pekerjaanWali = TextEditingController();
  TextEditingController alamatWali = TextEditingController();
  TextEditingController nomorWa = TextEditingController();
  TextEditingController pilihanSekolah = TextEditingController();
  AddFormController addForm = Get.put(AddFormController());

  final upload = Get.put(UploadController());
  UploadFotoController uploadFoto = Get.put(UploadFotoController());
  UploadSkhuController uploadSkhu = Get.put(UploadSkhuController());
  String? selectedJenisKelamin;
  String? selectedPilihanSekolah;
  bool validate = false;

  String? userId;

  getAtribute() async {
    userId = await getId();

    String? user;
    setState(() {
      user = userId;
    });
  }

  @override
  void initState() {
    super.initState();
    getAtribute();
  }

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
                    height: 270,
                    width: 500,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.greenAccent, Colors.blueAccent],
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 20),
                          child: InkWell(
                            onTap: () => Get.toNamed(dashboardRoute),
                            child: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                              size: 25,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20, left: 10),
                          child: Text(
                            'Formulir Pendaftaran',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20, right: 20, top: 60, bottom: 20),
                    child: Container(
                      height: 1300,
                      width: 320,
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
                          padding:
                              EdgeInsets.only(top: 20, bottom: 30, left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        image:
                                            AssetImage('assets/LogoPondok.png'),
                                        fit: BoxFit.cover)),
                              ),
                              SizedBox(height: 8),
                              Padding(
                                padding: EdgeInsets.only(left: 10, right: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Column(
                                      children: [
                                        RichText(
                                          textAlign: TextAlign.center,
                                          text: TextSpan(children: [
                                            TextSpan(
                                              text: 'Formulir Pendaftaran\n',
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            TextSpan(
                                                text:
                                                    'PonPes Babul Futuh Tahun Ajaran 2023-2024',
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.black)),
                                          ]),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 10),
                              Center(
                                child: Container(
                                  height: 25,
                                  width: 250,
                                  decoration: BoxDecoration(
                                      color: Color(0xFF359D9E),
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Center(
                                    child: Text(
                                      'Data Pribadi',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      top: 20, bottom: 30, left: 20, right: 20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      TextField(
                                        controller: namaLengkap,
                                        style: TextStyle(color: Colors.black),
                                        decoration: InputDecoration(
                                          hintText: "Nama Lengkap",
                                        ),
                                      ),
                                      SizedBox(height: 3),
                                      TextField(
                                        controller: nisn,
                                        style: TextStyle(color: Colors.black),
                                        decoration: InputDecoration(
                                          hintText: "NISN",
                                        ),
                                      ),
                                      SizedBox(height: 3),
                                      TextField(
                                        controller: jenisKelamin,
                                        style: TextStyle(color: Colors.black),
                                        decoration: InputDecoration(
                                          hintText: "Jenis Kelamin",
                                        ),
                                      ),
                                      SizedBox(height: 3),
                                      // DropdownButtonFormField<String>(
                                      //   value: selectedJenisKelamin,
                                      //   onChanged: (newValue) {
                                      //     setState(() {
                                      //       selectedJenisKelamin = newValue;
                                      //     });
                                      //   },
                                      //   items: [
                                      //     DropdownMenuItem(
                                      //       value: "Laki-laki",
                                      //       child: Text("Laki-laki"),
                                      //     ),
                                      //     DropdownMenuItem(
                                      //       value: "Perempuan",
                                      //       child: Text("Perempuan"),
                                      //     ),
                                      //   ],
                                      //   decoration: InputDecoration(
                                      //     hintText: "Jenis Kelamin",
                                      //   ),
                                      // ),
                                      SizedBox(height: 3),
                                      TextField(
                                        controller: ttl,
                                        style: TextStyle(color: Colors.black),
                                        decoration: InputDecoration(
                                          hintText: "Tempat Tanggal Lahir",
                                        ),
                                      ),
                                      SizedBox(height: 3),
                                      TextField(
                                        controller: alamat,
                                        style: TextStyle(color: Colors.black),
                                        decoration: InputDecoration(
                                          hintText: "Alamat Lengkap",
                                        ),
                                      ),
                                      SizedBox(height: 3),
                                      TextField(
                                        controller: asalSekolah,
                                        style: TextStyle(color: Colors.black),
                                        decoration: InputDecoration(
                                          hintText: "Asal Sekolah",
                                        ),
                                      ),
                                      SizedBox(height: 3),
                                      TextField(
                                        controller: tahunLulus,
                                        style: TextStyle(color: Colors.black),
                                        decoration: InputDecoration(
                                          hintText: "Tahun Lulus",
                                        ),
                                      ),

                                      SizedBox(height: 3),
                                      TextField(
                                        controller: pilihanSekolah,
                                        style: TextStyle(color: Colors.black),
                                        decoration: InputDecoration(
                                          hintText: "Pilihan Sekolah",
                                        ),
                                      ),
                                      SizedBox(height: 3),
                                      // DropdownButtonFormField<String>(
                                      //   value: selectedPilihanSekolah,
                                      //   onChanged: (newValue) {
                                      //     setState(() {
                                      //       selectedPilihanSekolah = newValue;
                                      //     });
                                      //   },
                                      //   items: [
                                      //     DropdownMenuItem(
                                      //       value: "MTS Babul Futuh",
                                      //       child: Text("MTS Babul Futuh"),
                                      //     ),
                                      //     DropdownMenuItem(
                                      //       value: "MA Babul Futuh",
                                      //       child: Text("MA Babul Futuh"),
                                      //     ),
                                      //   ],
                                      //   decoration: InputDecoration(
                                      //     hintText: "Tujuan Sekolah",
                                      //   ),
                                      // ),
                                      SizedBox(height: 10),
                                      Center(
                                        child: Container(
                                          height: 25,
                                          width: 250,
                                          decoration: BoxDecoration(
                                              color: Color(0xFF359D9E),
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          child: Center(
                                            child: Text(
                                              'Orang Tua/Wali',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      TextField(
                                        controller: namaWali,
                                        style: TextStyle(color: Colors.black),
                                        decoration: InputDecoration(
                                          hintText: "Nama Wali",
                                        ),
                                      ),
                                      SizedBox(height: 3),
                                      TextField(
                                        controller: nik,
                                        style: TextStyle(color: Colors.black),
                                        decoration: InputDecoration(
                                          hintText: "NIK",
                                        ),
                                      ),
                                      SizedBox(height: 3),
                                      TextField(
                                        controller: pekerjaanWali,
                                        style: TextStyle(color: Colors.black),
                                        decoration: InputDecoration(
                                          hintText: "Pekerjaan Wali",
                                        ),
                                      ),
                                      SizedBox(height: 3),
                                      TextField(
                                        controller: alamatWali,
                                        style: TextStyle(color: Colors.black),
                                        decoration: InputDecoration(
                                          hintText: "Alamat Wali",
                                        ),
                                      ),
                                      SizedBox(height: 3),
                                      TextField(
                                        controller: nomorWa,
                                        style: TextStyle(color: Colors.black),
                                        decoration: InputDecoration(
                                          hintText: "Nomor WhatsApp",
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        '*Wajib Bermukim Di Pondok',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Color(0xFF359D9E),
                                            fontWeight: FontWeight.w700),
                                      ),
                                      SizedBox(height: 10),
                                      Center(
                                        child: Container(
                                          height: 25,
                                          width: 250,
                                          decoration: BoxDecoration(
                                              color: Color(0xFF359D9E),
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          child: Center(
                                            child: Text(
                                              'Upload Berkas',
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Center(
                                            child: Text('Upload Ijazah'),
                                          ),
                                          InkWell(
                                            onTap: () async {
                                              upload.imageURL.value =
                                                  await upload.uploadImage(
                                                      ImageSource.gallery);
                                            },
                                            child: Obx(() {
                                              final imageUrl =
                                                  upload.imageURL.value;

                                              if (imageUrl == '') {
                                                return Center(
                                                  child: Container(
                                                    width: 80,
                                                    height: 80,
                                                    decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        border: Border.all(
                                                            color:
                                                                Colors.black)),
                                                    child: Icon(
                                                        Icons.upload_file,
                                                        color: Colors.black),
                                                  ),
                                                );
                                              } else {
                                                return Center(
                                                  child: Container(
                                                    width: 80,
                                                    height: 80,
                                                    decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        border: Border.all(
                                                            color:
                                                                Colors.black),
                                                        image: DecorationImage(
                                                            image: NetworkImage(
                                                                imageUrl),
                                                            fit: BoxFit.cover)),
                                                  ),
                                                );
                                              }
                                            }),
                                          ),
                                          Text(userId.toString()),
                                          SizedBox(height: 50),
                                          Center(
                                            child: InkWell(
                                              onTap: () async {
                                                await addForm.addFormulir(
                                                    namaLengkap.text,
                                                    nisn.text,
                                                    jenisKelamin.text,
                                                    ttl.text,
                                                    alamat.text,
                                                    asalSekolah.text,
                                                    tahunLulus.text,
                                                    namaWali.text,
                                                    nik.text,
                                                    pekerjaanWali.text,
                                                    alamatWali.text,
                                                    nomorWa.text,
                                                    pilihanSekolah.text,
                                                    upload.imageURL.toString(),
                                                    userId.toString());
                                              },
                                              child: Container(
                                                height: 40,
                                                width: 150,
                                                decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                    colors: [
                                                      Colors.greenAccent,
                                                      Colors.blueAccent
                                                    ],
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(30),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.black87,
                                                      blurRadius: 2,
                                                      offset:
                                                          const Offset(0, 1),
                                                    ),
                                                  ],
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    'Kirim',
                                                    style: TextStyle(
                                                      fontSize: 20,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
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
                            ],
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
