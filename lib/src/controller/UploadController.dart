import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pendaftaran/src/service/api.dart';
import 'package:image_picker/image_picker.dart';

class UploadController extends GetxController {
  var isLoading = false.obs;
  var imageURL = '';

  Future<void> uploadImage(ImageSource imageSource, String id) async {
  {
    //   final pickedFile = await ImagePicker().pickImage(source: imageSource);
    //   isLoading(true);
    //   if (pickedFile != null) {
    //     var response = await ApiService().uploadBukti(pickedFile.path, id);

    //     if (response != null) {
    //       Get.snackbar('Success', 'Image uploaded successfully',
    //           margin: const EdgeInsets.only(top: 5, left: 10, right: 10));
    //     } else {}
    //   } else {
    //     Get.snackbar('Failed', 'Image not selected',
    //         margin: const EdgeInsets.only(top: 5, left: 10, right: 10));
    //   }
    // } finally {
    //   isLoading(false);
    // }
  }
  }
}