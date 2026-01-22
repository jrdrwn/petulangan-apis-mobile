import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
// import '../routes/app_routes.dart';
// Replace with the main library file that declares 'part' for app_routes.dart
import '../routes/app_pages.dart';

// Model untuk Materi
class Materi {
  final String title;
  final bool isUnlocked;

  Materi({required this.title, required this.isUnlocked});
}

class DashboardStudentController extends GetxController {
  final studentName = ''.obs;

  // Data materi untuk setiap bab
  final Map<String, List<Materi>> chapterMaterials = {
    'BAB V': [
      Materi(title: 'Materi 1', isUnlocked: true),
      Materi(title: 'Materi 2', isUnlocked: false),
      Materi(title: 'Materi 3', isUnlocked: false),
    ],
    'BAB VI': [
      Materi(title: 'Materi 1', isUnlocked: true),
      Materi(title: 'Materi 2', isUnlocked: false),
      Materi(title: 'Materi 3', isUnlocked: false),
    ],
    'BAB VII': [
      Materi(title: 'Materi 1', isUnlocked: false),
      Materi(title: 'Materi 2', isUnlocked: false),
      Materi(title: 'Materi 3', isUnlocked: false),
    ],
    'BAB VIII': [
      Materi(title: 'Materi 1', isUnlocked: false),
      Materi(title: 'Materi 2', isUnlocked: false),
      Materi(title: 'Materi 3', isUnlocked: false),
    ],
  };

  @override
  void onInit() {
    super.onInit();
    final args = Get.arguments as Map<String, dynamic>?;
    if (args != null && args['studentName'] != null) {
      studentName.value = args['studentName'];
    }
  }

  void showChapterDialog(String chapter, BuildContext context) {
    final materials = chapterMaterials[chapter] ?? [];

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
                              children: materials
                                  .map(
                                    (materi) =>
                                        _buildMateriItem(materi, chapter),
                                  )
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

  Widget _buildMateriItem(Materi materi, String chapter) {
    return InkWell(
      onTap: materi.isUnlocked
          ? () {
              Get.back();
              // Navigate to video material screen
              Get.toNamed(
                Routes.VIDEO_MATERIAL,
                arguments: {
                  'videoUrl':
                      'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
                  'materialTitle': materi.title,
                  'chapterName': chapter,
                },
              );
            }
          : null,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          color: materi.isUnlocked
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
              materi.isUnlocked ? Icons.lock_open : Icons.lock,
              color: Colors.white,
              size: 20,
            ),
            const SizedBox(width: 8),
            Text(
              materi.title,
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

  void openChapter(String chapter) {
    // TODO: Navigate to chapter content
    Get.snackbar(
      'Info',
      'Membuka $chapter',
      backgroundColor: Colors.blue,
      colorText: Colors.white,
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  // Cek apakah minimal satu materi sudah terbuka
  bool hasUnlockedMaterial(String chapter) {
    final materials = chapterMaterials[chapter] ?? [];
    return materials.any((materi) => materi.isUnlocked);
  }
}
