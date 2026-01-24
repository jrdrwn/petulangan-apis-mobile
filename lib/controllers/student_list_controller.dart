import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../models/student_model.dart';
import '../models/kelas_model.dart';
import '../models/peserta_didik_guru_model.dart';
import '../services/api_service.dart';
import '../services/auth_service.dart';
import '../services/connectivity_service.dart';

class StudentListController extends GetxController {
  final _apiService = ApiService();
  late final AuthService _authService;
  final _connectivityService = ConnectivityService();

  final students = <StudentModel>[].obs;
  final pesertaDidik = <PesertaDidikGuruModel>[].obs;
  final selectedClass = Rx<KelasModel?>(null);
  final teacherName = ''.obs;
  final school = ''.obs;
  final isLoading = false.obs;
  final errorMessage = ''.obs;

  // Pagination
  final limit = 20;
  int offset = 0;
  final hasMore = true.obs;

  @override
  void onInit() {
    super.onInit();
    _authService = Get.find<AuthService>();
    loadArguments();
    _loadStudentsFromApi();
  }

  void loadArguments() {
    final args = Get.arguments as Map<String, dynamic>?;
    if (args != null) {
      selectedClass.value = args['selectedClass'] as KelasModel?;
      teacherName.value = args['teacherName'] as String? ?? '';
      school.value = args['school'] as String? ?? '';
    }
  }

  Future<void> _loadStudentsFromApi() async {
    if (selectedClass.value == null) {
      errorMessage.value = 'Data kelas tidak ditemukan';
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

      // Fetch students from API
      final kelasId = selectedClass.value!.id;
      final result = await _apiService.getPesertaDidikByKelasId(
        kelasId,
        token,
        limit: limit,
        offset: offset,
      );

      pesertaDidik.value = result;

      // Update hasMore based on result count
      hasMore.value = result.length >= limit;
    } catch (e) {
      errorMessage.value = e.toString();
      Get.snackbar(
        'Error',
        'Gagal memuat data peserta didik: ${e.toString()}',
        snackPosition: SnackPosition.TOP,
      );
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> loadMore() async {
    if (!hasMore.value || isLoading.value) return;

    try {
      offset += limit;
      final token = _authService.token.value;
      if (token == null) return;

      final kelasId = selectedClass.value!.id;
      final result = await _apiService.getPesertaDidikByKelasId(
        kelasId,
        token,
        limit: limit,
        offset: offset,
      );

      if (result.isEmpty) {
        hasMore.value = false;
      } else {
        pesertaDidik.addAll(result);
        hasMore.value = result.length >= limit;
      }
    } catch (e) {
      Get.snackbar(
        'Error',
        'Gagal memuat data tambahan: ${e.toString()}',
        snackPosition: SnackPosition.TOP,
      );
    }
  }

  void showStudentInfo(PesertaDidikGuruModel student) {
    Get.toNamed(
      '/student-detail',
      arguments: {
        'nisn': student.nisn,
        'name': student.namaLengkap,
        'id': student.id,
      },
    );
  }

  void printStudentData(PesertaDidikGuruModel student) {
    // TODO: Implement print functionality
    Get.snackbar(
      'Print',
      'Mencetak data ${student.namaLengkap}...',
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: const Color(0xFF1565C0),
      colorText: Colors.white,
    );
  }

  void goBack() {
    Get.back();
  }
}
