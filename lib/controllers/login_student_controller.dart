import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../routes/app_pages.dart';
import '../models/login_model.dart';
import '../services/auth_service.dart';
import '../services/connectivity_service.dart';

class LoginStudentController extends GetxController {
  late final AuthService _authService;
  final ConnectivityService _connectivityService = ConnectivityService();

  final namaController = TextEditingController();
  final nisnController = TextEditingController();

  final isLogging = false.obs;

  @override
  void onInit() {
    super.onInit();
    // Put AuthService as singleton
    _authService = Get.put(AuthService(), permanent: true);

    // Check if already logged in
    if (_authService.isLoggedIn()) {
      Get.offNamed(Routes.DASHBOARD_STUDENT);
    }
  }

  @override
  void onClose() {
    namaController.dispose();
    nisnController.dispose();
    super.onClose();
  }

  Future<void> login() async {
    // Validate NISN
    if (nisnController.text.trim().isEmpty) {
      Get.snackbar(
        'Error',
        'Mohon masukkan NISN!',
        backgroundColor: Colors.red,
        colorText: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
        icon: const Icon(Icons.error_outline, color: Colors.white),
      );
      return;
    }

    try {
      // Check internet connection
      if (!await _connectivityService.hasConnection()) {
        Get.snackbar(
          'Tidak Ada Koneksi',
          'Mohon periksa koneksi internet Anda',
          backgroundColor: Colors.orange,
          colorText: Colors.white,
          snackPosition: SnackPosition.BOTTOM,
          icon: const Icon(Icons.wifi_off, color: Colors.white),
        );
        return;
      }

      isLogging.value = true;

      final request = LoginRequest(nisn: nisnController.text.trim());
      final response = await _authService.login(request);

      // Save name (from TextField as decoration)
      if (namaController.text.trim().isNotEmpty) {
        await _authService.saveName(namaController.text.trim());
      }

      Get.snackbar(
        'Berhasil!',
        'Login berhasil!',
        backgroundColor: Colors.green,
        colorText: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
        icon: const Icon(Icons.check_circle_outline, color: Colors.white),
        duration: const Duration(seconds: 2),
      );

      // Navigate to dashboard
      await Future.delayed(const Duration(milliseconds: 500));
      Get.offNamed(Routes.DASHBOARD_STUDENT);
    } catch (e) {
      Get.snackbar(
        'Login Gagal',
        e.toString(),
        backgroundColor: Colors.red,
        colorText: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
        icon: const Icon(Icons.error_outline, color: Colors.white),
        duration: const Duration(seconds: 4),
      );
    } finally {
      isLogging.value = false;
    }
  }

  void goToRegister() {
    Get.toNamed(Routes.REGISTER_STUDENT);
  }

  void goToTeacherLogin() {
    Get.toNamed(Routes.LOGIN_TEACHER);
  }
}
