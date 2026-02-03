import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controllers/dashboard_student_controller.dart';

class DashboardStudentScreen extends StatelessWidget {
  const DashboardStudentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(DashboardStudentController());
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg2.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Stack(
            children: [
              // Blue overlay background with rounded top
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                top: 100,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(187, 73, 214, 236),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(screenWidth * 0.5),
                      topRight: Radius.circular(screenWidth * 0.5),
                    ),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/texture_bg.jpg'),
                      fit: BoxFit.cover,
                      opacity: 0.25, // transparan agar tidak terlalu mencolok
                    ),
                  ),
                ),
              ),
              // Logout button
              Positioned(
                top: 10,
                left: 10,
                child: IconButton(
                  icon: const Icon(
                    Icons.logout,
                    color: Colors.white,
                    size: 25,
                  ),
                  onPressed: controller.logout,
                  style: IconButton.styleFrom(
                    backgroundColor: Color(0xFFCD3551),
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(8),
                    shadowColor: Colors.black.withValues(alpha: 0.2),
                    elevation: 5,
                  ),
                ),
              ),
              // Profile dropdown button
              Positioned(
                top: 10,
                right: 10,
                child: _buildProfileDropdown(controller),
              ),
              // Main content
              Column(
                children: [
                  const SizedBox(height: 60),
                  // Logo
                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.2),
                          blurRadius: 10,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),
                    child: ClipOval(
                      child: Image.asset(
                        'assets/images/logo.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Call to action text
                  Text(
                    'Ayo mulai petualanganmu!',
                    style: GoogleFonts.montserrat(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          offset: Offset(1, 1),
                          blurRadius: 3,
                          color: Colors.black26,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  // Scrollable content with chapters
                  Expanded(
                    child: Obx(
                      () => controller.isLoadingBab.value
                          ? const Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CircularProgressIndicator(
                                    color: Colors.white,
                                  ),
                                  SizedBox(height: 16),
                                  Text(
                                    'Memuat materi...',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          : LayoutBuilder(
                              builder: (context, constraints) {
                                final containerWidth = constraints.maxWidth;
                                final containerHeight = constraints.maxHeight;

                                return Container(
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                        'assets/images/maps.png',
                                      ),
                                      fit: BoxFit.cover,
                                      alignment: Alignment.topCenter,
                                    ),
                                  ),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: containerWidth * 0.01,
                                        top: containerHeight * 0.01,
                                        child: Image(
                                          image: AssetImage(
                                            'assets/images/idashboard.png',
                                          ),
                                          width: containerWidth * 0.5,
                                        ),
                                      ),
                                      // Chapter buttons with responsive positioning
                                      Positioned(
                                        right: containerWidth * 0.20,
                                        top: containerHeight * 0.24,
                                        child: _ChapterButton(
                                          label: 'BAB VI',
                                          controller: controller,
                                          screenWidth: containerWidth,
                                          onPressed: () {
                                            controller.showChapterDialog(
                                              'BAB VI',
                                              context,
                                            );
                                          },
                                        ),
                                      ),
                                      Positioned(
                                        left: containerWidth * 0.20,
                                        top: containerHeight * 0.38,
                                        child: _ChapterButton(
                                          label: 'BAB V',
                                          controller: controller,
                                          screenWidth: containerWidth,
                                          onPressed: () {
                                            controller.showChapterDialog(
                                              'BAB V',
                                              context,
                                            );
                                          },
                                        ),
                                      ),
                                      Positioned(
                                        right: containerWidth * 0.03,
                                        top: containerHeight * 0.47,
                                        child: _ChapterButton(
                                          label: 'BAB VIII',
                                          controller: controller,
                                          screenWidth: containerWidth,
                                          onPressed: () {
                                            controller.showChapterDialog(
                                              'BAB VIII',
                                              context,
                                            );
                                          },
                                        ),
                                      ),
                                      Positioned(
                                        left: containerWidth * 0.16,
                                        top: containerHeight * 0.70,
                                        child: _ChapterButton(
                                          label: 'BAB VII',
                                          controller: controller,
                                          screenWidth: containerWidth,
                                          onPressed: () {
                                            controller.showChapterDialog(
                                              'BAB VII',
                                              context,
                                            );
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProfileDropdown(DashboardStudentController controller) {
    return PopupMenuButton<String>(
      offset: const Offset(0, 50),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      color: Colors.white,
      elevation: 8,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: const Color(0xFF1565C0),
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.2),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const CircleAvatar(
              radius: 14,
              backgroundColor: Colors.white,
              child: Icon(
                Icons.person,
                size: 18,
                color: Color(0xFF1565C0),
              ),
            ),
            const SizedBox(width: 8),
            Obx(
              () => Text(
                controller.studentName.value.split(' ').first,
                style: GoogleFonts.montserrat(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(width: 4),
            const Icon(
              Icons.arrow_drop_down,
              color: Colors.white,
            ),
          ],
        ),
      ),
      itemBuilder: (context) => [
        // Profile header
        PopupMenuItem<String>(
          enabled: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(
                () => Text(
                  controller.studentName.value,
                  style: GoogleFonts.montserrat(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ),
              const SizedBox(height: 4),
              Text(
                'Peserta Didik',
                style: GoogleFonts.montserrat(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
        const PopupMenuDivider(),
        // Progress section
        PopupMenuItem<String>(
          enabled: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Progress Belajar',
                style: GoogleFonts.montserrat(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 8),
              Obx(
                () => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: LinearProgressIndicator(
                        value: controller.progressPercentage,
                        minHeight: 12,
                        backgroundColor: Colors.grey.shade300,
                        valueColor: AlwaysStoppedAnimation<Color>(
                          controller.progressPercentage >= 1.0
                              ? Colors.green
                              : const Color(0xFF1565C0),
                        ),
                      ),
                    ),
                    const SizedBox(height: 6),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          controller.progressText,
                          style: GoogleFonts.montserrat(
                            fontSize: 12,
                            color: Colors.grey.shade700,
                          ),
                        ),
                        Text(
                          '${(controller.progressPercentage * 100).toInt()}%',
                          style: GoogleFonts.montserrat(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: controller.progressPercentage >= 1.0
                                ? Colors.green
                                : const Color(0xFF1565C0),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const PopupMenuDivider(),
        // Download report
        PopupMenuItem<String>(
          value: 'download',
          child: Obx(
            () => Row(
              children: [
                controller.isDownloadingReport.value
                    ? const SizedBox(
                        width: 20,
                        height: 20,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      )
                    : const Icon(
                        Icons.download,
                        color: Color(0xFF1565C0),
                      ),
                const SizedBox(width: 12),
                Text(
                  controller.isDownloadingReport.value
                      ? 'Mengunduh...'
                      : 'Download Laporan',
                  style: GoogleFonts.montserrat(
                    fontSize: 14,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
      onSelected: (value) {
        if (value == 'download') {
          controller.downloadLaporan();
        }
      },
    );
  }
}

class _ChapterButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final DashboardStudentController controller;
  final double screenWidth;

  const _ChapterButton({
    required this.label,
    required this.onPressed,
    required this.controller,
    required this.screenWidth,
  });

  @override
  Widget build(BuildContext context) {
    final hasUnlocked = controller.hasUnlockedMaterial(label);

    // Responsive sizing with min-max constraints
    final iconSize = (screenWidth * 0.16).clamp(50.0, 80.0);
    final fontSize = (screenWidth * 0.038).clamp(12.0, 16.0);

    return GestureDetector(
      onTap: onPressed,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Book icon
          Container(
            width: iconSize,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset(
              hasUnlocked
                  ? 'assets/images/open_book.png'
                  : 'assets/images/close_book.png',
              fit: BoxFit.contain,
            ),
          ),
          // Chapter label
          Text(
            label,
            style: GoogleFonts.montserrat(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: const Color(0xFFFFFFFF),
              shadows: [
                Shadow(
                  offset: Offset(0, 4),
                  blurRadius: 4,
                  color: Colors.black26,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
