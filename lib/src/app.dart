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
      title: 'Pondok',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: const Color(0xFF359D9E)
        )
      ),
      initialRoute: loginRoute,
      getPages: routes,
    );
  }
}