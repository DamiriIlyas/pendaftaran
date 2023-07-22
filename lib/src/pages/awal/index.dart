import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pendaftaran/src/routes/constant.dart';
import 'package:pendaftaran/src/service/assets.dart';
import 'package:pendaftaran/src/storage/preference.dart';

class Root extends StatefulWidget {
  const Root({super.key});

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  void _init() {
    Timer(const Duration(seconds: 3), () {
      getPef();
    });
  }

  void getPef() async {
    String? token = await getToken();
    if (token != '' && token != null) {
      Get.offAndToNamed(awalRoute);
    } else {
      Get.offAndToNamed(loginRoute);
    }
  }

  @override
  void initState() {
    _init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          child: Center(
            child: Image.asset(
              LogoPondok,
              height: 200,
              width: 200,
            ),
          ),
        ),
      ),
    );
  }
}