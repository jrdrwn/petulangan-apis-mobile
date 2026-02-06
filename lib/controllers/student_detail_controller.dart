import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../models/student_progress_model.dart';
import '../models/nilai_peserta_didik_model.dart';
import '../services/api_service.dart';
import '../services/auth_service.dart';
import '../services/connectivity_service.dart';

class StudentDetailController extends GetxController {
  final _apiService = ApiService();
  late final AuthService _authService;
  final _connectivityService = ConnectivityService();

  final studentDetail = Rx<StudentDetailModel?>(null);
  final nilaiData = <BabNilaiModel>[].obs;
  final expandedChapters = <int>{}.obs;
  final isLoading = false.obs;
  final errorMessage = ''.obs;

  String nisn = '';
  String name = '';
  int? pesertaDidikId;

  @override
  void onInit() {
    super.onInit();
    _authService = Get.find<AuthService>();
    _loadArguments();
    _loadNilaiFromApi();
  }

  void _loadArguments() {
    final args = Get.arguments as Map<String, dynamic>?;
    if (args != null) {
      nisn = args['nisn'] as String? ?? '';
      name = args['name'] as String? ?? '';
      pesertaDidikId = args['id'] as int?;
    }
  }

  Future<void> _loadNilaiFromApi() async {
    if (pesertaDidikId == null) {
      errorMessage.value = 'ID peserta didik tidak ditemukan';
      // Fallback to mock data for UI testing
      studentDetail.value = StudentDetailModel.getSampleDetail(nisn, name);
      return;
    }

    try {
      isLoading.value = true;
      errorMessage.value = '';

      // Check internet connection
      final hasConnection = await _connectivityService.hasConnection();
      if (!hasConnection) {
        errorMessage.value = 'Tidak ada koneksi internet';
        Get.snackbar(
          'Peringatan',
          'Tidak ada koneksi internet',
          snackPosition: SnackPosition.TOP,
        );
        return;
      }

      // Get token
      final token = _authService.token.value;
      if (token == null) {
        errorMessage.value = 'Token tidak ditemukan';
        Get.snackbar(
          'Error',
          'Silakan login kembali',
          snackPosition: SnackPosition.TOP,
        );
        Get.offAllNamed('/login-teacher');
        return;
      }

      // Fetch nilai from API
      final data = await _apiService.getNilaiPesertaDidik(
        pesertaDidikId!,
        token,
      );
      nilaiData.value = data;
    } catch (e) {
      errorMessage.value = e.toString();
      Get.snackbar(
        'Error',
        'Gagal memuat data nilai: ${e.toString()}',
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> refreshData() async {
    await _loadNilaiFromApi();
  }

  void toggleChapter(int babId) {
    if (expandedChapters.contains(babId)) {
      expandedChapters.remove(babId);
    } else {
      expandedChapters.add(babId);
    }
  }

  bool isChapterExpanded(int babId) {
    return expandedChapters.contains(babId);
  }

  void goBack() {
    Get.back();
  }
}
