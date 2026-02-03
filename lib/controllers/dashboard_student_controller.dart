import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';
import 'package:open_filex/open_filex.dart';
import '../routes/app_pages.dart';
import '../models/bab_model.dart';
import '../services/api_service.dart';
import '../services/auth_service.dart';
import '../services/connectivity_service.dart';
import '../config/app_config.dart';

class DashboardStudentController extends GetxController {
  final ApiService _apiService = ApiService();
  late final AuthService _authService;
  final ConnectivityService _connectivityService = ConnectivityService();

  final studentName = ''.obs;
  final babList = <BabModel>[].obs;
  final isLoadingBab = false.obs;
  final isDownloadingReport = false.obs;

  // Progress tracking
  int get totalTopik {
    int count = 0;
    for (var bab in babList) {
      count += bab.topik.length;
    }
    return count;
  }

  int get completedTopik {
    int count = 0;
    for (var bab in babList) {
      // Count topik that are completed (next one is unlocked or it's the last unlocked)
      for (int i = 0; i < bab.topik.length; i++) {
        if (i < bab.topik.length - 1 && bab.topik[i + 1].unlocked) {
          count++;
        }
      }
    }
    return count;
  }

  double get progressPercentage {
    if (totalTopik == 0) return 0;
    return completedTopik / totalTopik;
  }

  String get progressText {
    return '$completedTopik / $totalTopik Misi Selesai';
  }

  @override
  void onInit() {
    super.onInit();
    // Get shared AuthService instance
    _authService = Get.find<AuthService>();

    // Get student name from auth service
    studentName.value = _authService.getUserName() ?? 'Siswa';

    // Fetch bab and topik
    fetchBabTopik();
  }

  @override
  void onReady() {
    super.onReady();
    // Check if should refresh from quiz completion
    final args = Get.arguments;
    if (args != null && args is Map && args['refresh'] == true) {
      fetchBabTopik();
    }
  }

  Future<void> fetchBabTopik() async {
    try {
      // Check if logged in
      if (!_authService.isLoggedIn()) {
        Get.offNamed(Routes.LOGIN_STUDENT);
        return;
      }

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

      isLoadingBab.value = true;
      final token = _authService.getToken()!;
      final babs = await _apiService.getBabTopik(token);
      babList.value = babs;
    } catch (e) {
      // Check if unauthorized
      if (e.toString().contains('Unauthorized') ||
          e.toString().contains('401')) {
        Get.snackbar(
          'Session Expired',
          'Silakan login kembali',
          backgroundColor: Colors.red,
          colorText: Colors.white,
          snackPosition: SnackPosition.BOTTOM,
          icon: const Icon(Icons.error_outline, color: Colors.white),
        );
        await _authService.logout();
        Get.offNamed(Routes.LOGIN_STUDENT);
      } else {
        Get.snackbar(
          'Error',
          'Gagal memuat data: ${e.toString()}',
          backgroundColor: Colors.red,
          colorText: Colors.white,
          snackPosition: SnackPosition.BOTTOM,
          icon: const Icon(Icons.error_outline, color: Colors.white),
          duration: const Duration(seconds: 4),
        );
      }
    } finally {
      isLoadingBab.value = false;
    }
  }

  // Check if a chapter (by roman numeral) has unlocked material
  bool hasUnlockedMaterial(String chapter) {
    // Remove 'BAB ' prefix to get just roman numeral
    final romanNumeral = chapter.replaceAll('BAB ', '');

    final bab = babList.firstWhereOrNull((b) => b.nomor == romanNumeral);

    if (bab == null) return false;

    // Check if any topik is unlocked
    return bab.topik.any((t) => t.unlocked);
  }

  // Get bab by roman numeral
  BabModel? getBabByNomor(String chapter) {
    final romanNumeral = chapter.replaceAll('BAB ', '');
    return babList.firstWhereOrNull((b) => b.nomor == romanNumeral);
  }

  void showChapterDialog(String chapter, BuildContext context) {
    final bab = getBabByNomor(chapter);

    if (bab == null) {
      Get.snackbar(
        'Info',
        'Materi belum tersedia',
        backgroundColor: Colors.orange,
        colorText: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
      );
      return;
    }

    showDialog(
      context: context,
      builder: (BuildContext context) {
        final screenWidth = MediaQuery.of(context).size.width;
        final screenHeight = MediaQuery.of(context).size.height;

        return Dialog(
          backgroundColor: Colors.transparent,
          insetPadding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
          child: SizedBox(
            width: screenWidth,
            height: screenHeight * 0.4, // Fixed height 40% dari screen
            child: Column(
              children: [
                // Header background - fixed height, tidak stretch
                Container(
                  height: 90,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/popup_header_bg.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 0,
                  ),
                ),
                // Body background - dynamic/flexible, bisa stretch
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/popup_body_bg.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    child: Column(
                      children: [
                        // Title
                        Padding(
                          padding: const EdgeInsets.only(top: 0, bottom: 8),
                          child: Text(
                            'Pilih Misi Petualanganmu',
                            style: GoogleFonts.montserrat(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              shadows: [
                                Shadow(
                                  blurRadius: 4,
                                  color: Colors.black26,
                                  offset: Offset(1, 2),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Center(
                            child: Wrap(
                              direction: Axis.horizontal,
                              spacing: 40,
                              runSpacing: 20,
                              alignment: WrapAlignment.spaceAround,
                              runAlignment: WrapAlignment.center,
                              crossAxisAlignment: WrapCrossAlignment.center,
                              children: bab.topik
                                  .map((topik) => _buildTopikItem(topik, bab))
                                  .toList(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // Footer background - fixed height, tidak stretch
                Container(
                  height: 80,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/popup_footer_bg.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildTopikItem(TopikModel topik, BabModel bab) {
    return InkWell(
      onTap: topik.unlocked
          ? () {
              Get.back();
              // Navigate to video material screen
              Get.toNamed(
                Routes.VIDEO_MATERIAL,
                arguments: {
                  'topikId': topik.id,
                  'videoUrl': topik.topikUrl,
                  'materialTitle': '${topik.kode}. ${topik.judul}',
                  'chapterName': 'BAB ${bab.nomor}',
                  'description': topik.deskripsi,
                },
              );
            }
          : null,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          color: topik.unlocked
              ? const Color(0xFFCD3551)
              : const Color(0xFF5D4037),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.2),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              topik.unlocked ? Icons.lock_open : Icons.lock,
              color: Colors.white,
              size: 20,
            ),
            const SizedBox(width: 8),
            Text(
              'Misi ${topik.kode}',
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> logout() async {
    await _authService.logout();
    Get.offAllNamed(Routes.SPLASH);
  }

  Future<void> downloadLaporan() async {
    try {
      isDownloadingReport.value = true;

      final token = _authService.getToken();
      if (token == null) {
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
        '${AppConfig.apiBaseUrl}/peserta-didik/laporan-pdf',
      );

      final response = await http.get(
        url,
        headers: {
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode == 200) {
        // Get download directory
        final directory = await getApplicationDocumentsDirectory();
        final fileName = 'Laporan_${studentName.value.replaceAll(' ', '_')}_${DateTime.now().millisecondsSinceEpoch}.pdf';
        final filePath = '${directory.path}/$fileName';

        // Save file
        final file = File(filePath);
        await file.writeAsBytes(response.bodyBytes);

        // Open the PDF file
        final result = await OpenFilex.open(filePath);

        if (result.type != ResultType.done) {
          Get.snackbar(
            'Berhasil',
            'File disimpan di: $filePath',
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.green,
            colorText: Colors.white,
            duration: const Duration(seconds: 5),
          );
        }
      } else {
        Get.snackbar(
          'Error',
          'Gagal mengunduh laporan. Status: ${response.statusCode}',
          snackPosition: SnackPosition.TOP,
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
      }
    } catch (e) {
      Get.snackbar(
        'Error',
        'Gagal mengunduh laporan: ${e.toString()}',
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    } finally {
      isDownloadingReport.value = false;
    }
  }
}
