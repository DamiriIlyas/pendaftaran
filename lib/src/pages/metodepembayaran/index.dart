// import 'package:pendaftaran/src/router/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pendaftaran/src/service/assets.dart';

class MetodePembayaran extends StatefulWidget {
  const MetodePembayaran({super.key});

  @override
  State<MetodePembayaran> createState() => _MetodePembayaranState();
}

class _MetodePembayaranState extends State<MetodePembayaran> {
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
          icon: Icon(Icons.arrow_back),
          iconSize: 25.0,
          color: Colors.white,
          onPressed: () {},
        ),
        title: Text(
          'Pilihan Pembayaran',
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
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 15, left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Biaya Awal Masuk',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  'Rp 750.000',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  'Pilih Metode Pembayaran',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700
                  ),
                ),
                
                SizedBox(height: 30),
                Text(
                  'Kartu Debit/Kredit',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xFF359D9E),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                // SizedBox(height: 10),
                Row(
                  children: [
                    Image.asset(
                      a26,
                      height: 50,
                      width: 50,
                    ),
                    SizedBox(width: 10),
                    Image.asset(
                      a27,
                      height: 50,
                      width: 50,
                    ), 
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  height: 40,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 1
                      )
                    ]
                  ),
                  child: Center(
                    child: Text
                    ('4676 7574 8412 8135',
                    style: TextStyle(
                      fontSize: 15
                    ),),
                    
                  ),
                ),
                SizedBox(height: 20),
               Row(
                children: [
                  Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 1
                      )
                    ]
                  ),
                  child: Center(
                    child: Text(
                    '05/25',
                    style: TextStyle(
                      fontSize: 15
                    ),),
                    
                  ),
                ),
                SizedBox(width: 15),
                Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 1
                      )
                    ]
                  ),
                  child: Center(
                    child: Text(
                    '435',
                    style: TextStyle(
                      fontSize: 15
                    ),),
                    
                  ),
                ),
                
                ],
               ),
               SizedBox(height: 25),
                Center(
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
                  'Bayar',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  )
                                        )
                  ),
                )  
              ],
            ),
          ),
        ),
      )
    );
  }
}
    