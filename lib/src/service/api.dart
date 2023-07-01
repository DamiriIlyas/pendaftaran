import 'dart:convert';
import 'dart:developer';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:pendaftaran/src/config/env.dart';
import 'package:pendaftaran/src/model/LoginModel.dart';
import 'package:pendaftaran/src/service/app_exception.dart';
import 'package:pendaftaran/src/service/base_client.dart';
import 'package:pendaftaran/src/service/base_controller.dart';

class ApiService extends GetConnect with BaseController {
  Future<LoginModel?> loginApp(String email, String password) async {
    dynamic body = ({"email": email, "password": password});
    final response = await BaseClient()
        .post(BASE_URL, '/masuk', body, "")
        .catchError((error) {
      if (error is BadRequestException) {
        var apiError = json.decode(error.message!);
        Get.rawSnackbar(message: apiError["message"]);
      } else {
        handleError(error);
      }
    });
    print(response);
    if (response != null) {
      var log = loginFromJson(response);
      return log;
    } else {
      return null;
    }
  }
}
