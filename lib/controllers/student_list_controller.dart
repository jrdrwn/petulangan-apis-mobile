import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';
import 'package:open_filex/open_filex.dart';
import '../models/student_model.dart';
import '../models/kelas_model.dart';
import '../models/peserta_didik_guru_model.dart';
import '../services/api_service.dart';
import '../services/auth_service.dart';
import '../services/connectivity_service.dart';
import '../config/app_config.dart';

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

  void printStudentData(PesertaDidikGuruModel student) async {
    try {
      // Show loading dialog
      Get.dialog(
        const Center(
          child: Card(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircularProgressIndicator(),
                  SizedBox(height: 16),
                  Text('Mengunduh laporan...'),
                ],
              ),
            ),
          ),
        ),
        barrierDismissible: false,
      );

      final token = _authService.token.value;
      if (token == null) {
        Get.back();
        Get.snackbar(
          'Error',
          'Token tidak ditemukan. Silakan login kembali.',
          snackPosition: SnackPosition.TOP,
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
        return;
      }

      // Download PDF from API
      final url = Uri.parse(
        '${AppConfig.apiBaseUrl}/guru/laporan-pdf/${student.id}',
      );

      final response = await http.get(
        url,
        headers: {'Authorization': 'Bearer $token'},
      );

      if (response.statusCode == 200) {
        // Get download directory
        final directory = await getApplicationDocumentsDirectory();
        final fileName =
            'Laporan_${student.namaLengkap.replaceAll(' ', '_')}_${DateTime.now().millisecondsSinceEpoch}.pdf';
        final filePath = '${directory.path}/$fileName';

        // Save file
        final file = File(filePath);
        await file.writeAsBytes(response.bodyBytes);

        Get.back(); // Close loading dialog

        // Open the PDF file
        final result = await OpenFilex.open(filePath);

        if (result.type != ResultType.done) {
          Get.snackbar(
            'Info',
            'File disimpan di: $filePath',
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: const Color(0xFF1565C0),
            colorText: Colors.white,
            duration: const Duration(seconds: 5),
          );
        }
      } else {
        Get.back(); // Close loading dialog
        Get.snackbar(
          'Error',
          'Gagal mengunduh laporan. Status: ${response.statusCode}',
          snackPosition: SnackPosition.TOP,
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
      }
    } catch (e) {
      Get.back(); // Close loading dialog
      Get.snackbar(
        'Error',
        'Gagal mengunduh laporan: ${e.toString()}',
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }

  Future<void> refreshData() async {
    offset = 0;
    hasMore.value = true;
    pesertaDidik.clear();
    await _loadStudentsFromApi();
  }

  void goBack() {
    Get.back();
  }
}
