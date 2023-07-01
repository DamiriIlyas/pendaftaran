// import 'package:pendaftaran/src/router/constant.dart';
import 'package:pendaftaran/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pendaftaran/src/routes/constant.dart';
// import 'package:get/get.dart';

class persyaratan extends StatefulWidget {
  const persyaratan({super.key});

  @override
  State<persyaratan> createState() => _persyaratanState();
}

class _persyaratanState extends State<persyaratan> {
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
                              size: 25,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20, left: 10),
                          child: Text(
                            'Syarat Pendaftaran',
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
                    padding: const EdgeInsets.only(left: 20, right: 20, top: 60, bottom: 20),
                    child: Container(
                      height: 630,
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
                            padding: EdgeInsets.only(top: 20, bottom: 30, left: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Syarat-syarat Pendaftaran\nPesantren Dan Madin',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w700),
                                    ),
                                     SizedBox(height: 5),
                                     Text(
                                      '1. Mengisi Formulir Pendaftaran\n2. Menyerahkan Foto Copy Ijazah Terakhir 4 Lembar\n3. Menyerahkan Foto Copy Buku Lapor Terakhir\n4. Menyerahkan Pas Photo 3x4 4 Lembar\n5. Biaya Pendaftaran Rp.200.000,-',
                                      style: TextStyle(
                                          fontSize: 15,
                                          ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      'Syarat-syarat Pendaftaran Madrasah\nTsanawiyah',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w700),
                                    ),
                                     SizedBox(height: 5),
                                     Text(
                                      '1. Mengisi Formulir Pendaftaran\n2. Menyerahkan Foto Copy Ijazah SD/MI 4 Lembar\n3. Menyerahkan Foto Copy SKHU SD/MI 4 Lembar\n4. Menyerahkan Foto Copy Buku Lapor Terakhir\n5. Menyerahkan Foto Copy NISN 2 Lembar\n6. Menyerahkan Foto Copy KK 4 Lembar\n7. Menyerahkan Foto Copy Akta Kelahiran 4 Lembar\n8. Menyerahkan Pas Photo 3x4, 4 Lembar\n9. Biaya Pendaftaran Rp.200.000,-',
                                      style: TextStyle(
                                          fontSize: 15,
                                          ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      'Syarat-syarat pendaftaran\nMadrasah Aliyah',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w700),
                                    ),
                                     SizedBox(height: 5),
                                     Text(
                                      '1. Mengisi Formulir Pendaftaran\n2. Menyerahkan Foto Copy Ijazah SLTP/MTs. 4 Lembar\n3. Menyerahkan Foto Copy SKHU SLTP/MTs. 4 Lembar\n4. Menyerahkan Foto Copy Buku Lapor Terakhir\n5. Menyerahkan Foto Copy NISN 2 Lembar\n6. Menyerahkan Foto Copy KK 4 Lembar\n7. Menyerahkan Foto Copy Akta Kelahiran 4 Lembar\n8. Menyerahkan Pas Photo 3x4, 4 Lembar\n9. Biaya Pendaftaran Rp.200.000,-',
                                      style: TextStyle(
                                          fontSize: 15,
                                          ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      'Syarat Pembayaran',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w700),
                                    ),
                                     SizedBox(height: 5),
                                     Text(
                                      '* DP pembayaran keseluruhan 50% \n* Pembayaran DP tidak bisa kembali jika mengundurkan diri\n* Tidak termasuk biaya pendaftaran pendidikan formal\nPembayaran dapat melalui Aplikasi Ini',
                                      style: TextStyle(
                                          fontSize: 15,
                                          ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      'Contact Person',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w700),
                                    ),
                                     SizedBox(height: 5),
                                     Text(
                                      'Putra 0858-5932-3876\nPutri  0857-9036-1160',
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
                    ],
                  ),
               ],
            ),
          ),
      ),
    );
  }
}