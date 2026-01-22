import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../routes/app_pages.dart';

class LoginStudentController extends GetxController {
  final namaController = TextEditingController();
  final nisnController = TextEditingController();

  @override
  void onClose() {
    namaController.dispose();
    nisnController.dispose();
    super.onClose();
  }

  void login() {
    // TODO: Implement login logic with API validation
    if (namaController.text.isEmpty || nisnController.text.isEmpty) {
      Get.snackbar(
        'Error',
        'Mohon isi semua field!',
        backgroundColor: Colors.red,
        colorText: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
      );
      return;
    }

    // Navigate directly to dashboard for students
    Get.offNamed(
      Routes.DASHBOARD_STUDENT,
      arguments: {'studentName': namaController.text},
    );
  }

  void goToRegister() {
    Get.toNamed(Routes.REGISTER_STUDENT);
  }

  void goToTeacherLogin() {
    Get.toNamed(Routes.LOGIN_TEACHER);
  }
}
