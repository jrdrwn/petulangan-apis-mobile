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
                    color: Color(0xFF49D5EC),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(screenWidth * 0.5),
                      topRight: Radius.circular(screenWidth * 0.5),
                    ),
                  ),
                ),
              ),
              // Back button
              Positioned(
                top: 10,
                left: 10,
                child: IconButton(
                  icon: const Icon(
                    Icons.logout,
                    color: Color(0xFFCD3551),
                    size: 25,
                  ),
                  onPressed: controller.logout,
                ),
              ),
              // Main content
              Column(
                children: [
                  const SizedBox(height: 20),
                  // Welcome message
                  Obx(
                    () => Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Text(
                          'Halo, ${controller.studentName.value}',
                          style: GoogleFonts.montserrat(
                            fontSize: 16,
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
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  // Logo
                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
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
