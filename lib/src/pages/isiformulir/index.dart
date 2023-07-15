// import 'package:pendaftaran/src/router/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pendaftaran/src/controller/AddFormController.dart';
import 'package:pendaftaran/src/routes/constant.dart';
import 'package:pendaftaran/src/storage/preference.dart';

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
  // final upload = Get.put(UploadController());
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
  void initState(){
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
                    decoration: BoxDecoration( gradient: LinearGradient(
                            colors: [
                  Colors.greenAccent, Colors.blueAccent],
                          ),),
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
                              size: 20,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20, left: 10),
                          child: Text(
                            'Isi Formulir',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20, top: 60, bottom: 20),
                    child: Container(
                      height: 1150,
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
                            padding: EdgeInsets.only(top: 20, bottom: 30, left: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                          height: 80,
                                          width: 80,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              image: DecorationImage(
                                                  image: AssetImage('assets/LogoPondok.png'),
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
                                                            ),),
                                                          TextSpan(
                                                              text: 'PonPes Babul Futuh Tahun Ajaran 2023-2024',
                                                              style: TextStyle(
                                                                  fontSize: 10, color: Colors.black)),
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
                                padding: EdgeInsets.only(top: 20, bottom: 30, left: 20, right: 20),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
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
                                        Center(
                                        child: Container(
                                          height: 25,
                                          width: 250,
                                          decoration: BoxDecoration(
                                              color: Color(0xFF359D9E),
                                              borderRadius: BorderRadius.circular(20)),
                                          child: Center(
                                            child: Text(
                                            
                                              'Tujuan Sekolah',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                     ),
                                     SizedBox(height: 15),
                                         TextField(
                                          controller: pilihanSekolah,
                                        style: TextStyle(color: Colors.black),
                                        decoration: InputDecoration(
                                          hintText: "Tujuan Sekolah",
                                          
                                        ),
                                       ),
                                       SizedBox(height: 10,),
                                       Center(
                                        child: Stack(
                                          children: [
                                            InkWell(
                                              onTap: (){
                                                upload.uploadImage(ImageSource.gallery, userId!);
                                              },
                                              child: Container(
                                                height: 150,
                                                width: 150,
                                                decoration: BoxDecoration(
                                                    color: Color.fromARGB(255, 97, 200, 202),
                                                    borderRadius: BorderRadius.circular(100),
                                                    image: DecorationImage(
                                                        image: AssetImage('assets/oya.png'),
                                                        fit: BoxFit.cover)),
                                              ),
                                            ),
                                           SizedBox(height: 20),
                                         Text(
                                          '*Wajib Bermukim Di Pondok',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Color(0xFF359D9E),
                                              fontWeight: FontWeight.w700),
                                        ),
                                  SizedBox(height: 50),
                                  Center(
                child: InkWell(
                    onTap: () async {
                      userId;
                      getId();
                      if (namaLengkap.text.isEmpty ||
                          nisn.text.isEmpty ||
                          jenisKelamin.text.isEmpty ||
                          ttl.text.isEmpty ||
                          alamat.text.isEmpty ||
                          asalSekolah.text.isEmpty ||
                          tahunLulus.text.isEmpty ||
                          namaWali.text.isEmpty ||
                          nik.text.isEmpty ||
                          pekerjaanWali.text.isEmpty ||
                          alamatWali.text.isEmpty ||
                          nomorWa.text.isEmpty ||
                          pilihanSekolah.text.isEmpty
                          ) {
                        userId;
                        setState(() {
                          validate = true;
                        });
                      } else {
                        await addForm.addFormulir(namaLengkap.text, nisn.text, jenisKelamin.text, ttl.text, alamat.text, asalSekolah.text, tahunLulus.text, namaWali.text, nik.text, pekerjaanWali.text, alamatWali.text, nomorWa.text, pilihanSekolah.text, userId.toString());
                      }
                    },
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
                        'Kirim',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
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