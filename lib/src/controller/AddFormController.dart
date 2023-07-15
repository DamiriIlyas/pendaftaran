import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pendaftaran/src/model/FormModel.dart';
import 'package:pendaftaran/src/config/env.dart';
import 'package:pendaftaran/src/routes/constant.dart';
import 'package:pendaftaran/src/service/api.dart';

class AddFormController extends GetxController {
  var isLoading = false.obs;
  var log = FormulirData().obs;

  Future<void> addFormulir(String namaLengkap, String nisn, String jenisKelamin,String ttl,String alamat, String asalSekolah, String tahunLulus, String namaWali,String nik, String pekerjaanWali, String alamatWali, String nomorWa, String pilihanSekolah, String userId) async {
    isLoading = false.obs;
    final response = await ApiService().addFormulir(namaLengkap, nisn, jenisKelamin, ttl, alamat, asalSekolah, tahunLulus, namaWali, nik, pekerjaanWali, alamatWali, nomorWa, pilihanSekolah, userId);
    print(response);
    if (response != null) {
      Get.rawSnackbar(message: "Ahlan Wa Sahlan");
    }else{
      Get.defaultDialog(
        middleText: "Antum Gagal Ditambahkan",
        textConfirm: "OK",
        confirmTextColor: Colors.white,
        buttonColor: Colors.blueAccent,
        onConfirm: () {
          Get.back();
        }
      );
      isLoading.value = false;
    }
  }
}