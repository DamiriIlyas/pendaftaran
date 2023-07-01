import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:pendaftaran/src/model/LoginModel.dart';
import 'package:pendaftaran/src/routes/constant.dart';
import 'package:pendaftaran/src/service/api.dart';

class LoginController extends GetxController {
  var isLoading = false.obs;
  var log = LoginModel().obs;

  Future<void> loginUser(String email, String password) async {
    isLoading = false.obs;
    final response = await ApiService().loginApp(email, password);
    print(response);
    if (response != null) {
      Get.toNamed(dashboardRoute);
    } else {
      Get.defaultDialog(
          middleText: "Username atau password Salah",
          textConfirm: "OK",
          confirmTextColor: Colors.white,
          buttonColor: Colors.yellow,
          onConfirm: () {
            Get.back();
          });
      isLoading.value = false;
    }
  }
}
