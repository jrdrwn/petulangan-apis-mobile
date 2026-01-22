import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginTeacherController extends GetxController {
  final namaController = TextEditingController();
  final passwordController = TextEditingController();

  final selectedSchool = Rxn<String>();
  final obscurePassword = true.obs;

  final schools = <String>[
    'SD Negeri 1',
    'SD Negeri 2',
    'SD Negeri 3',
    'SD Swasta ABC',
    'SD Swasta XYZ',
  ];

  @override
  void onClose() {
    namaController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  void togglePasswordVisibility() {
    obscurePassword.value = !obscurePassword.value;
  }

  void login() {
    // TODO: Implement teacher login logic
    if (namaController.text.isEmpty ||
        passwordController.text.isEmpty ||
        selectedSchool.value == null) {
      Get.snackbar(
        'Error',
        'Mohon isi semua field!',
        backgroundColor: Colors.red,
        colorText: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
      );
      return;
    }

    // Navigate to class selection screen
    Get.offNamed(
      '/select-class',
      arguments: {
        'teacherName': namaController.text,
        'school': selectedSchool.value,
      },
    );
  }

  void goToStudentLogin() {
    Get.back();
  }
}
