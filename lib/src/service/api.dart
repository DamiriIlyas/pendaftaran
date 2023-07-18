import 'dart:convert';
import 'dart:developer';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:pendaftaran/src/config/env.dart';
import 'package:pendaftaran/src/model/GetFormModel.dart';
import 'package:pendaftaran/src/model/LoginModel.dart';
import 'package:pendaftaran/src/model/FormModel.dart';
import 'package:pendaftaran/src/service/app_exception.dart';
import 'package:pendaftaran/src/service/base_client.dart';
import 'package:http/http.dart' as http;
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

  Future<List<GetData>?> getForm() async {
    final response = await BaseClient()
      .get(BASE_URL, '/get-form', '')
      .catchError((error) {
        if(error is BadRequestException) {
          var apiError = json.decode(error.message!);
        }else{
          handleError(error);
        }
      });
      print(response);
      if (response != null) {
        var formulir = getformModelFromJson(response);
        return formulir.data;
      }else{
        return null;
      }
  }

  Future<FormModel?> addFormulir(
    String namaLengkap,
    String nisn,
    String jenisKelamin,
    String ttl,
    String alamat,
    String asalSekolah,
    String tahunLulus,
    String namaWali,
    String nik,
    String pekerjaanWali,
    String alamatWali,
    String nomorWa,
    String pilihanSekolah,
    String ijazah,
    String skhu,
    String foto,
    String userId
  ) async {
    dynamic body = ({
      "namaLengkap": namaLengkap,
      "nisn": nisn,
      "jenisKelamin": jenisKelamin,
      "ttl": ttl,
      "alamat": alamat,
      "asalSekolah": asalSekolah,
      "tahunLulus": tahunLulus,
      "namaWali": namaWali,
      "nik": nik,
      "pekerjaanWali": pekerjaanWali,
      "alamatWali": alamatWali,
      "nomorWa": nomorWa,
      "pilihanSekolah": pilihanSekolah,
      "ijazah": ijazah,
      "skhu": skhu,
      "foto": foto,
      "userId": userId,
    });
    final response = await BaseClient()
      .post(BASE_URL, '/add-form', body, "")
      .catchError((error) {
        if (error is BadRequestException) {
          var apiError = json.decode(error.message!);
          Get.rawSnackbar(message: apiError["message"]);
        }else{
          handleError(error);
        }
      });
      print(response);
      if (response != null) {
        var log = formModelFromJson(response);
        return log;
      }else{
        return null;
      }
  }
  Future<http.StreamedResponse> uploadGambar(filepath) async {
    var url = Uri.parse('$BASE_URL/add-image');

    http.MultipartRequest request = new http.MultipartRequest("POST", url);
    http.MultipartFile multipartFile =
        await http.MultipartFile.fromPath('image', filepath);

    request.files.add(multipartFile);

    var response = await request.send();

    if (response.statusCode == 200) {
      Get.snackbar('Success', 'Image uploaded successfully',
          margin: EdgeInsets.only(top: 5, left: 10, right: 10));
    }

    return response;
  }

  Future<http.StreamedResponse> uploadSkhu(filepath) async {
    var url = Uri.parse('$BASE_URL/add-skhu');

    http.MultipartRequest request = new http.MultipartRequest("POST", url);
    http.MultipartFile multipartFile =
        await http.MultipartFile.fromPath('image', filepath);

    request.files.add(multipartFile);

    var response = await request.send();

    if (response.statusCode == 200) {
      Get.snackbar('Success', 'Image uploaded successfully',
          margin: EdgeInsets.only(top: 5, left: 10, right: 10));
    }

    return response;
  }

  Future<http.StreamedResponse> uploadFoto(filepath) async {
    var url = Uri.parse('$BASE_URL/add-foto');

    http.MultipartRequest request = new http.MultipartRequest("POST", url);
    http.MultipartFile multipartFile =
        await http.MultipartFile.fromPath('image', filepath);

    request.files.add(multipartFile);

    var response = await request.send();

    if (response.statusCode == 200) {
      Get.snackbar('Success', 'Image uploaded successfully',
          margin: EdgeInsets.only(top: 5, left: 10, right: 10));
    }

    return response;
  }
}
