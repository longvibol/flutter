import 'dart:io';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class RegisterController extends GetxController {
  final _imagePicker = ImagePicker();
  File? image;

  void pickImage() async {
    final file = await _imagePicker.pickImage(source: ImageSource.gallery);
    if (file != null) {
      image = File(file.path); //convert from Xfile to file
    }
  }
}
