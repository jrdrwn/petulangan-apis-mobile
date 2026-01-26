import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../models/login_model.dart';
import '../models/sekolah_model.dart';
import '../services/api_service.dart';
import '../services/auth_service.dart';
import '../services/connectivity_service.dart';

class LoginTeacherController extends GetxController {
  final nipController = TextEditingController();
  final passwordController = TextEditingController();

  final selectedSchool = Rxn<SekolahModel>();
  final obscurePassword = true.obs;
  final isLogging = false.obs;
  final isLoadingSchools = false.obs;

  final schools = <SekolahModel>[].obs;

  final ApiService _apiService = ApiService();
  final ConnectivityService _connectivityService = ConnectivityService();
  late final AuthService _authService;

  @override
  void onInit() {
    super.onInit();
    _authService = Get.put(AuthService(), permanent: true);
    _fetchSekolah();
  }

  Future<void> _fetchSekolah() async {
    try {
      isLoadingSchools.value = true;

      // Check internet connection
      final hasConnection = await _connectivityService.hasConnection();
      if (!hasConnection) {
        Get.snackbar(
          'Tidak Ada Koneksi',
          'Periksa koneksi internet Anda dan coba lagi.',
          backgroundColor: Colors.orange,
          colorText: Colors.white,
          snackPosition: SnackPosition.BOTTOM,
        );
        return;
      }

      schools.value = await _apiService.getSekolah();
    } catch (e) {
      Get.snackbar(
        'Error',
        'Gagal memuat data sekolah: ${e.toString()}',
        backgroundColor: Colors.red,
        colorText: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
      );
    } finally {
      isLoadingSchools.value = false;
    }
  }

  @override
  void onClose() {
    nipController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  void togglePasswordVisibility() {
    obscurePassword.value = !obscurePassword.value;
  }

  Future<void> login() async {
    // Validate inputs
    if (nipController.text.isEmpty ||
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

    try {
      isLogging.value = true;

      // Check internet connection
      final hasConnection = await _connectivityService.hasConnection();
      if (!hasConnection) {
        Get.snackbar(
          'Tidak Ada Koneksi',
          'Periksa koneksi internet Anda dan coba lagi.',
          backgroundColor: Colors.orange,
          colorText: Colors.white,
          snackPosition: SnackPosition.BOTTOM,
        );
        return;
      }

      // Create login request
      final request = LoginGuruRequest(
        nip: nipController.text,
        password: passwordController.text,
        sekolahId: selectedSchool.value!.id,
      );

      // Call login API
      await _authService.loginGuru(request);

      Get.snackbar(
        'Berhasil',
        'Login berhasil!',
        backgroundColor: Colors.green,
        colorText: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
      );

      // Navigate to class selection screen
      Get.offNamed(
        '/select-class',
        arguments: {
          'teacherNip': nipController.text,
          'school': selectedSchool.value!.nama,
          'sekolahId': selectedSchool.value!.id,
        },
      );
    } catch (e) {
      Get.snackbar(
        'Login Gagal',
        e.toString(),
        backgroundColor: Colors.red,
        colorText: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
      );
    } finally {
      isLogging.value = false;
    }
  }

  void goToStudentLogin() {
    Get.back();
  }
}
