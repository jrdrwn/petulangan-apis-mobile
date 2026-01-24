import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterStudentController extends GetxController {
  final namaController = TextEditingController();
  final nisnController = TextEditingController();
  final konfirmasiNisnController = TextEditingController();

  final selectedSchool = Rxn<String>();
  final selectedClass = Rxn<String>();

  final schools = <String>[
    'SD Negeri 1',
    'SD Negeri 2',
    'SD Negeri 3',
    'SD Swasta ABC',
    'SD Swasta XYZ',
  ];

  final classes = <String>['Kelas IV', 'Kelas V', 'Kelas VI'];

  @override
  void onClose() {
    namaController.dispose();
    nisnController.dispose();
    konfirmasiNisnController.dispose();
    super.onClose();
  }

  void register() {
    // TODO: Implement register logic
    if (nisnController.text != konfirmasiNisnController.text) {
      Get.snackbar(
        'Error',
        'NISN tidak cocok!',
        backgroundColor: Colors.red,
        colorText: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
      );
    } else {
      Get.snackbar(
        'Sukses',
        'Pendaftaran berhasil!',
        backgroundColor: Colors.green,
        colorText: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
      );
      Get.back();
    }
  }

  void goToLogin() {
    Get.back();
  }
}
