import 'package:pendaftaran/main.dart';
// import 'package:pendaftaran/src/router/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pendaftaran/src/routes/constant.dart';
import 'package:pendaftaran/src/service/assets.dart';

class TotalPembayaran extends StatefulWidget {
  const TotalPembayaran({super.key});

  @override
  State<TotalPembayaran> createState() => _TotalPembayaranState();
}

class _TotalPembayaranState extends State<TotalPembayaran> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              onTap: () => Get.toNamed(pembayaranRoute),
              child: Icon(Icons.arrow_back)),
          iconSize: 25.0,
          color: Colors.white,
          onPressed: () {},
        ),
        title: Text(
          'Total Pembayaran',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
        child: Container(
          height: 500,
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
          child: Padding(
            padding: const EdgeInsets.only(top: 15, left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Biaya Awal Masuk',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
                SizedBox(height: 15),
                Text(
                  'Rp 750.000',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 15),
                Text(
                  'Pilih Metode Pembayaran',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 20),
                Text(
                  'GoPay',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xFF359D9E),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                // SizedBox(height: 1),
                Row(
                  children: [
                    Image.asset(
                      a18,
                      height: 50,
                      width: 50,
                    ),
                    SizedBox(width: 10),
                    Image.asset(
                      a19,
                      height: 50,
                      width: 50,
                    )
                  ],
                ),
                SizedBox(height: 15),
                Text(
                  'Transfer Antar Bank',
                  style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFF359D9E),
                      fontWeight: FontWeight.w700),
                ),
                // SizedBox(height: 10),
                Row(
                  children: [
                    Image.asset(
                      a20,
                      height: 50,
                      width: 50,
                    ),
                    SizedBox(width: 10),
                    Image.asset(
                      a21,
                      height: 50,
                      width: 50,
                    ),
                    SizedBox(width: 10),
                    Image.asset(
                      a22,
                      height: 50,
                      width: 50,
                    ),
                    SizedBox(width: 10),
                    Image.asset(
                      a23,
                      height: 50,
                      width: 50,
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  'Minimarket',
                  style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFF359D9E),
                      fontWeight: FontWeight.w700),
                ),
                // SizedBox(height: 10),
                Row(
                  children: [
                    Image.asset(
                      a24,
                      height: 50,
                      width: 50,
                    ),
                    SizedBox(width: 10),
                    Image.asset(
                      a25,
                      height: 50,
                      width: 50,
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  'Kartu Debit/Kredit',
                  style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFF359D9E),
                      fontWeight: FontWeight.w700),
                ),
                // SizedBox(height: 10),
                Row(
                  children: [
                    InkWell(
                      onTap: () => Get.toNamed(metodepembayaranRoute),
                      child: Image.asset(
                        a26,
                        height: 50,
                        width: 50,
                      ),
                    ),
                    SizedBox(width: 10),
                    Image.asset(
                      a27,
                      height: 50,
                      width: 50,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
