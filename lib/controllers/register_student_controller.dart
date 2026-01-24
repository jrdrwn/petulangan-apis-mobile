import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../models/sekolah_model.dart';
import '../models/kelas_model.dart';
import '../models/peserta_didik_model.dart';
import '../services/api_service.dart';
import '../services/connectivity_service.dart';

class RegisterStudentController extends GetxController {
  final ApiService _apiService = ApiService();
  final ConnectivityService _connectivityService = ConnectivityService();

  // Text Controllers
  final namaController = TextEditingController();
  final nisnController = TextEditingController();
  final konfirmasiNisnController = TextEditingController();

  // Observable variables
  final selectedSekolah = Rxn<SekolahModel>();
  final selectedKelas = Rxn<KelasModel>();

  final sekolahList = <SekolahModel>[].obs;
  final kelasList = <KelasModel>[].obs;

  final isLoadingSekolah = false.obs;
  final isLoadingKelas = false.obs;
  final isRegistering = false.obs;

  @override
  void onInit() {
    super.onInit();
    // Fetch sekolah on init
    fetchSekolah();
  }

  @override
  void onClose() {
    namaController.dispose();
    nisnController.dispose();
    konfirmasiNisnController.dispose();
    super.onClose();
  }

  // Fetch list of sekolah from API
  Future<void> fetchSekolah() async {
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
        duration: const Duration(seconds: 4),
      );
    } finally {
      isLoadingSekolah.value = false;
    }
  }

  // Fetch list of kelas by sekolah_id
  Future<void> fetchKelasBySekolahId(int sekolahId) async {
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

      isLoadingKelas.value = true;
      kelasList.clear();
      selectedKelas.value = null;

      final classes = await _apiService.getKelasBySekolahId(sekolahId);
      kelasList.value = classes;
    } catch (e) {
      Get.snackbar(
        'Error',
        'Gagal memuat data kelas: ${e.toString()}',
        backgroundColor: Colors.red,
        colorText: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
        icon: const Icon(Icons.error_outline, color: Colors.white),
        duration: const Duration(seconds: 4),
      );
    } finally {
      isLoadingKelas.value = false;
    }
  }

  // Handle sekolah selection
  void onSekolahChanged(SekolahModel? sekolah) {
    selectedSekolah.value = sekolah;
    if (sekolah != null) {
      fetchKelasBySekolahId(sekolah.id);
    } else {
      kelasList.clear();
      selectedKelas.value = null;
    }
  }

  // Handle kelas selection
  void onKelasChanged(KelasModel? kelas) {
    selectedKelas.value = kelas;
  }

  // Validate form inputs
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

    if (nisnController.text.trim().isEmpty) {
      Get.snackbar(
        'Error',
        'NISN tidak boleh kosong',
        backgroundColor: Colors.red,
        colorText: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
        icon: const Icon(Icons.error_outline, color: Colors.white),
      );
      return false;
    }

    if (konfirmasiNisnController.text.trim().isEmpty) {
      Get.snackbar(
        'Error',
        'Konfirmasi NISN tidak boleh kosong',
        backgroundColor: Colors.red,
        colorText: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
        icon: const Icon(Icons.error_outline, color: Colors.white),
      );
      return false;
    }

    if (nisnController.text != konfirmasiNisnController.text) {
      Get.snackbar(
        'Error',
        'NISN dan Konfirmasi NISN tidak cocok!',
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

    if (selectedKelas.value == null) {
      Get.snackbar(
        'Error',
        'Mohon pilih kelas',
        backgroundColor: Colors.red,
        colorText: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
        icon: const Icon(Icons.error_outline, color: Colors.white),
      );
      return false;
    }

    return true;
  }

  // Register peserta didik
  Future<void> register() async {
    // Validate inputs
    if (!_validateInputs()) return;

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

      isRegistering.value = true;

      final request = RegisterPesertaDidikRequest(
        nama: namaController.text.trim(),
        nisn: nisnController.text.trim(),
        kelasId: selectedKelas.value!.id,
      );

      final result = await _apiService.registerPesertaDidik(request);

      Get.snackbar(
        'Berhasil!',
        'Pendaftaran ${result.namaLengkap} berhasil!',
        backgroundColor: Colors.green,
        colorText: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
        icon: const Icon(Icons.check_circle_outline, color: Colors.white),
        duration: const Duration(seconds: 3),
      );

      // Clear form
      namaController.clear();
      nisnController.clear();
      konfirmasiNisnController.clear();
      selectedSekolah.value = null;
      selectedKelas.value = null;
      kelasList.clear();

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
    // Clear any loading states
    isLoadingSekolah.value = false;
    isLoadingKelas.value = false;
    isRegistering.value = false;

    // Navigate back
    Get.back();
  }
}
