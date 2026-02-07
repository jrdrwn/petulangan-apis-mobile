import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../models/sekolah_model.dart';
import '../services/api_service.dart';
import '../services/connectivity_service.dart';

class RegisterTeacherController extends GetxController {
  final ApiService _apiService = ApiService();
  final ConnectivityService _connectivityService = ConnectivityService();

  // Text Controllers
  final namaController = TextEditingController();
  final nipController = TextEditingController();
  final passwordController = TextEditingController();
  final konfirmasiPasswordController = TextEditingController();

  // Observable variables
  final selectedSekolah = Rxn<SekolahModel>();
  final sekolahList = <SekolahModel>[].obs;

  final isLoadingSekolah = false.obs;
  final isRegistering = false.obs;
  final obscurePassword = true.obs;
  final obscureKonfirmasi = true.obs;

  @override
  void onInit() {
    super.onInit();
    fetchSekolah();
  }

  @override
  void onClose() {
    namaController.dispose();
    nipController.dispose();
    passwordController.dispose();
    konfirmasiPasswordController.dispose();
    super.onClose();
  }

  void togglePasswordVisibility() {
    obscurePassword.value = !obscurePassword.value;
  }

  void toggleKonfirmasiVisibility() {
    obscureKonfirmasi.value = !obscureKonfirmasi.value;
  }

  Future<void> fetchSekolah() async {
    try {
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

      isLoadingSekolah.value = true;
      final schools = await _apiService.getSekolah();
      sekolahList.value = schools;
    } catch (e) {
      Get.snackbar(
        'Error',
        'Gagal memuat data sekolah: ${e.toString()}',
        backgroundColor: Colors.red,
        colorText: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
        icon: const Icon(Icons.error_outline, color: Colors.white),
      );
    } finally {
      isLoadingSekolah.value = false;
    }
  }

  void onSekolahChanged(SekolahModel? sekolah) {
    selectedSekolah.value = sekolah;
  }

  bool _validateInputs() {
    if (namaController.text.trim().isEmpty) {
      Get.snackbar(
        'Error',
        'Nama lengkap tidak boleh kosong',
        backgroundColor: Colors.red,
        colorText: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
        icon: const Icon(Icons.error_outline, color: Colors.white),
      );
      return false;
    }

    if (nipController.text.trim().isEmpty) {
      Get.snackbar(
        'Error',
        'NIP tidak boleh kosong',
        backgroundColor: Colors.red,
        colorText: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
        icon: const Icon(Icons.error_outline, color: Colors.white),
      );
      return false;
    }

    if (passwordController.text.trim().isEmpty) {
      Get.snackbar(
        'Error',
        'Password tidak boleh kosong',
        backgroundColor: Colors.red,
        colorText: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
        icon: const Icon(Icons.error_outline, color: Colors.white),
      );
      return false;
    }

    if (konfirmasiPasswordController.text.trim().isEmpty) {
      Get.snackbar(
        'Error',
        'Konfirmasi password tidak boleh kosong',
        backgroundColor: Colors.red,
        colorText: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
        icon: const Icon(Icons.error_outline, color: Colors.white),
      );
      return false;
    }

    if (passwordController.text != konfirmasiPasswordController.text) {
      Get.snackbar(
        'Error',
        'Password dan Konfirmasi Password tidak cocok!',
        backgroundColor: Colors.red,
        colorText: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
        icon: const Icon(Icons.error_outline, color: Colors.white),
      );
      return false;
    }

    if (selectedSekolah.value == null) {
      Get.snackbar(
        'Error',
        'Mohon pilih sekolah',
        backgroundColor: Colors.red,
        colorText: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
        icon: const Icon(Icons.error_outline, color: Colors.white),
      );
      return false;
    }

    return true;
  }

  Future<void> register() async {
    if (!_validateInputs()) return;

    try {
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

      isRegistering.value = true;

      await _apiService.registerGuru(
        namaLengkap: namaController.text.trim(),
        nip: nipController.text.trim(),
        password: passwordController.text.trim(),
        sekolahId: selectedSekolah.value!.id,
      );

      Get.snackbar(
        'Berhasil!',
        'Pendaftaran guru berhasil!',
        backgroundColor: Colors.green,
        colorText: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
        icon: const Icon(Icons.check_circle_outline, color: Colors.white),
        duration: const Duration(seconds: 3),
      );

      // Clear form
      namaController.clear();
      nipController.clear();
      passwordController.clear();
      konfirmasiPasswordController.clear();
      selectedSekolah.value = null;

      // Navigate back after short delay
      await Future.delayed(const Duration(milliseconds: 1500));
      Get.back();
    } catch (e) {
      Get.snackbar(
        'Gagal Mendaftar',
        e.toString(),
        backgroundColor: Colors.red,
        colorText: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
        icon: const Icon(Icons.error_outline, color: Colors.white),
        duration: const Duration(seconds: 4),
      );
    } finally {
      isRegistering.value = false;
    }
  }

  void goToLogin() {
    isLoadingSekolah.value = false;
    isRegistering.value = false;
    Get.back();
  }
}
