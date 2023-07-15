import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:pendaftaran/src/model/LoginModel.dart';
import 'package:pendaftaran/src/routes/constant.dart';
import 'package:pendaftaran/src/service/api.dart';
import 'package:pendaftaran/src/storage/preference.dart';

class LoginController extends GetxController {
  var isLoading = false.obs;
  var log = LoginModel().obs;

  Future<void> loginUser(String email, String password) async {
    isLoading = false.obs;
    final response = await ApiService().loginApp(email, password);
    print(response);
    if (response != null) {
      setId(response.data!.id.toString());
      setName(response.name!.toString());
      Get.toNamed(dashboardRoute);
    } else {
      Get.defaultDialog(
          middleText: "Username atau password Salah",
          textConfirm: "OK",
          confirmTextColor: Color(0xFF359D9E),
          buttonColor: Color(0xFF359D9E),
          onConfirm: () {
            Get.back();
          });
      isLoading.value = false;
    }
  }
}
