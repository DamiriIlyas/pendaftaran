import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pendaftaran/src/routes/constant.dart';
import 'package:pendaftaran/src/routes/router.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lacons',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: const Color(0xffD4A373)
        )
      ),
      initialRoute: loginRoute,
      getPages: routes,
    );
  }
}