import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:pendaftaran/src/config/env.dart';
import 'package:pendaftaran/src/model/FormModel.dart';
import 'package:pendaftaran/src/service/api.dart';

class FormController extends GetxController{
  var isLoading = true.obs;
  var isloadinPage = false.obs;
  var formulir = <FormulirData>[].obs;

  void getForm() async {
    try {
      isLoading(true);
      var res = await ApiService().getForm();
      if(res != null) {
        formulir.value = res;
      }else{}
    } finally{
      isLoading(false);
    }
  } 
}