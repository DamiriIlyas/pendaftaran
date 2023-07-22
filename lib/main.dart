import 'package:flutter/material.dart';
import 'package:pendaftaran/src/MyHttpOverrides.dart';
import 'package:pendaftaran/src/routes/constant.dart';
import 'package:get/get.dart';
import 'package:pendaftaran/src/routes/router.dart';
import 'package:pendaftaran/src/app.dart';
import 'dart:io';

void main() {
  HttpOverrides.global = MyHttpOverrides();
  runApp(MyApp());
}

