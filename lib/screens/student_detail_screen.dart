import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controllers/student_detail_controller.dart';
import '../services/auth_service.dart';

class StudentDetailScreen extends StatelessWidget {
  const StudentDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(StudentDetailController());

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg2.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: SafeArea(
          child: Stack(
            children: [
              // Back button
              Positioned(
                top: 16,
                left: 16,
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFCD3551),
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.2),
                        blurRadius: 8,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: controller.goBack,
                    tooltip: 'Kembali',
                  ),
                ),
              ),

              // Profile dropdown at top right
              Positioned(
                top: 16,
                right: 16,
                child: _buildProfileDropdown(),
              ),

              // Main content
              Center(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.fromLTRB(20, 100, 20, 20),
                  child: Obx(() {
                    if (controller.isLoading.value) {
                      return Container(
                        constraints: const BoxConstraints(maxWidth: 450),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.15),
                              blurRadius: 20,
                              offset: const Offset(0, 10),
                            ),
                          ],
                        ),
                        padding: const EdgeInsets.all(50),
                        child: const Center(child: CircularProgressIndicator()),
                      );
                    }

                    if (controller.errorMessage.isNotEmpty) {
                      return Container(
                        constraints: const BoxConstraints(maxWidth: 450),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.15),
                              blurRadius: 20,
                              offset: const Offset(0, 10),
                            ),
                          ],
                        ),
                        padding: const EdgeInsets.all(25),
                        child: Column(
                          children: [
                            const Icon(
                              Icons.error_outline,
                              size: 60,
                              color: Colors.red,
                            ),
                            const SizedBox(height: 20),
                            Text(
                              'Error: ${controller.errorMessage.value}',
                              style: const TextStyle(color: Colors.red),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 20),
                            ElevatedButton(
                              onPressed: controller.goBack,
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                foregroundColor: Colors.white,
                              ),
                              child: const Text('Kembali'),
                            ),
                          ],
                        ),
                      );
                    }

                    if (controller.nilaiData.isEmpty) {
                      return Container(
                        constraints: const BoxConstraints(maxWidth: 450),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.15),
                              blurRadius: 20,
                              offset: const Offset(0, 10),
                            ),
                          ],
                        ),
                        padding: const EdgeInsets.all(25),
                        child: Column(
                          children: [
                            Text(
                              controller.name.toUpperCase(),
                              textAlign: TextAlign.center,
                              style: GoogleFonts.montserrat(
                                fontSize: 22,
                                fontWeight: FontWeight.w900,
                                color: const Color(0xFF1D4B8B),
                                letterSpacing: 0.5,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              controller.nisn,
                              textAlign: TextAlign.center,
                              style: GoogleFonts.montserrat(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xFF1D4B8B),
                              ),
                            ),
                            const SizedBox(height: 25),
                            const Text(
                              'Belum ada data nilai',
                              style: TextStyle(color: Colors.grey),
                            ),
                            const SizedBox(height: 20),
                            ElevatedButton(
                              onPressed: controller.goBack,
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                foregroundColor: Colors.white,
                              ),
                              child: const Text('Kembali'),
                            ),
                          ],
                        ),
                      );
                    }

                    return Container(
                      constraints: const BoxConstraints(maxWidth: 450),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.15),
                            blurRadius: 20,
                            offset: const Offset(0, 10),
                          ),
                        ],
                      ),
                      padding: const EdgeInsets.all(25),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // Student Info Header
                          Text(
                            controller.name.toUpperCase(),
                            textAlign: TextAlign.center,
                            style: GoogleFonts.montserrat(
                              fontSize: 22,
                              fontWeight: FontWeight.w900,
                              color: const Color(0xFF1D4B8B),
                              letterSpacing: 0.5,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            controller.nisn,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.montserrat(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xFF1D4B8B),
                            ),
                          ),

                          const SizedBox(height: 25),

                          // Progress Content with horizontal scroll
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Container(
                              constraints: const BoxConstraints(minWidth: 400),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  // Header row
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 12,
                                      horizontal: 15,
                                    ),
                                    decoration: BoxDecoration(
                                      color: const Color(0xFF1565C0),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 220,
                                          child: _buildHeaderText(
                                            'Materi Petualangan',
                                          ),
                                        ),
                                        SizedBox(
                                          width: 120,
                                          child: _buildHeaderText('Status'),
                                        ),
                                        SizedBox(
                                          width: 80,
                                          child: Center(
                                            child: _buildHeaderText('Nilai'),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  const SizedBox(height: 15),

                                  // Chapter list from API
                                  ...controller.nilaiData.map((bab) {
                                    return _buildCollapsibleChapter(
                                      bab,
                                      controller,
                                    );
                                  }).toList(),
                                ],
                              ),
                            ),
                          ),

                          const SizedBox(height: 25),

                          // Kembali button
                          ElevatedButton(
                            onPressed: controller.goBack,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              foregroundColor: Colors.white,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 50,
                                vertical: 16,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              elevation: 5,
                            ),
                            child: Text(
                              'Kembali',
                              style: GoogleFonts.montserrat(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeaderText(String text) {
    return Text(
      text,
      style: GoogleFonts.montserrat(
        fontSize: 12,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }

  Widget _buildCollapsibleChapter(bab, controller) {
    return Obx(() {
      final isExpanded = controller.isChapterExpanded(bab.id);

      // Calculate average score from topics
      int? averageScore;
      double totalScore = 0;
      int countScore = 0;

      for (var topik in bab.topik) {
        if (topik.nilaiQuiz != null) {
          totalScore += topik.nilaiQuiz!.nilai;
          countScore++;
        }
      }

      if (countScore > 0) {
        averageScore = (totalScore / countScore).round();
      }

      // Determine status
      String status;
      Color statusColor;
      IconData statusIconData;

      if (countScore == bab.topik.length) {
        status = 'Selesai';
        statusColor = const Color(0xFF4CAF50);
        statusIconData = Icons.check_circle;
      } else if (countScore > 0) {
        status = 'Proses';
        statusColor = const Color(0xFFFFA726);
        statusIconData = Icons.warning_amber_rounded;
      } else {
        status = 'Belum';
        statusColor = Colors.grey.shade600;
        statusIconData = Icons.lock;
      }

      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              if (bab.topik.isNotEmpty) {
                controller.toggleChapter(bab.id);
              }
            },
            borderRadius: BorderRadius.circular(12),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey.shade300, width: 1.5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.05),
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Row(
                children: [
                  // Chapter title
                  SizedBox(
                    width: 220,
                    child: Row(
                      children: [
                        if (bab.topik.isNotEmpty)
                          Icon(
                            isExpanded
                                ? Icons.keyboard_arrow_down
                                : Icons.keyboard_arrow_right,
                            size: 20,
                            color: Colors.grey.shade700,
                          ),
                        if (bab.topik.isNotEmpty) const SizedBox(width: 5),
                        Expanded(
                          child: RichText(
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: '${bab.nomor}: ',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                    color: const Color(0xFF1565C0),
                                  ),
                                ),
                                TextSpan(
                                  text: bab.judul,
                                  style: GoogleFonts.montserrat(
                                    fontSize: 13,
                                    color: Colors.black87,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Status
                  SizedBox(
                    width: 120,
                    child: Row(
                      children: [
                        Icon(statusIconData, size: 16, color: statusColor),
                        const SizedBox(width: 6),
                        Expanded(
                          child: Text(
                            status,
                            style: GoogleFonts.montserrat(
                              fontSize: 11,
                              color: statusColor,
                              fontWeight: FontWeight.w600,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Score
                  SizedBox(
                    width: 80,
                    child: Center(
                      child: Text(
                        averageScore?.toString() ?? '-',
                        style: GoogleFonts.montserrat(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF1565C0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Topics (collapsed/expanded)
          if (isExpanded && bab.topik.isNotEmpty) ...[
            const SizedBox(height: 8),
            ...bab.topik.map((topik) {
              return _buildTopicRow(topik);
            }).toList(),
          ],
          const SizedBox(height: 12),
        ],
      );
    });
  }

  Widget _buildTopicRow(topik) {
    // Calculate stars based on score (0-100 scale to 0-3 stars)
    int stars = 0;
    if (topik.nilaiQuiz != null) {
      final nilai = topik.nilaiQuiz!.nilai;
      if (nilai >= 80) {
        stars = 3;
      } else if (nilai >= 60) {
        stars = 2;
      } else if (nilai >= 40) {
        stars = 1;
      }
    }

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      margin: const EdgeInsets.only(bottom: 6),
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.blue.shade100, width: 1),
      ),
      child: Row(
        children: [
          // Topic title
          SizedBox(
            width: 220,
            child: Row(
              children: [
                Container(
                  width: 6,
                  height: 6,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade400,
                    shape: BoxShape.circle,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    '${topik.kode}. ${topik.judul}',
                    style: GoogleFonts.montserrat(
                      fontSize: 12,
                      color: Colors.black87,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
          // Stars
          SizedBox(
            width: 120,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: List.generate(3, (index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 3),
                  child: Icon(
                    index < stars ? Icons.star : Icons.star_border,
                    size: 16,
                    color: index < stars
                        ? const Color(0xFFFFC107)
                        : Colors.grey.shade400,
                  ),
                );
              }),
            ),
          ),
          // Score
          SizedBox(
            width: 80,
            child: Center(
              child: Text(
                topik.nilaiQuiz?.nilai.toString() ?? '-',
                style: GoogleFonts.montserrat(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProfileDropdown() {
    final authService = Get.find<AuthService>();
    final teacherName = authService.getUserName() ?? 'Guru';

    return PopupMenuButton<String>(
      offset: const Offset(0, 50),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.15),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 36,
              height: 36,
              decoration: const BoxDecoration(
                color: Color(0xFF1D4B8B),
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.person, color: Colors.white, size: 22),
            ),
            const SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  teacherName,
                  style: GoogleFonts.montserrat(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF1D4B8B),
                  ),
                ),
                Text(
                  'Guru',
                  style: GoogleFonts.montserrat(
                    fontSize: 10,
                    color: Colors.grey.shade600,
                  ),
                ),
              ],
            ),
            const SizedBox(width: 4),
            Icon(Icons.arrow_drop_down, color: Colors.grey.shade600),
          ],
        ),
      ),
      itemBuilder: (context) => [
        PopupMenuItem<String>(
          value: 'profile',
          enabled: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                      color: Color(0xFF1D4B8B),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.person, color: Colors.white, size: 24),
                  ),
                  const SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        teacherName,
                        style: GoogleFonts.montserrat(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF1D4B8B),
                        ),
                      ),
                      Text(
                        'Guru',
                        style: GoogleFonts.montserrat(
                          fontSize: 12,
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const Divider(height: 20),
            ],
          ),
        ),
        PopupMenuItem<String>(
          value: 'logout',
          child: Row(
            children: [
              Icon(Icons.logout, color: Colors.red.shade600, size: 20),
              const SizedBox(width: 12),
              Text(
                'Keluar',
                style: GoogleFonts.montserrat(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.red.shade600,
                ),
              ),
            ],
          ),
        ),
      ],
      onSelected: (value) {
        if (value == 'logout') {
          _showLogoutDialog();
        }
      },
    );
  }

  void _showLogoutDialog() {
    Get.dialog(
      AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        title: Text(
          'Konfirmasi Keluar',
          style: GoogleFonts.montserrat(fontWeight: FontWeight.bold),
        ),
        content: Text(
          'Apakah Anda yakin ingin keluar?',
          style: GoogleFonts.montserrat(),
        ),
        actions: [
          TextButton(
            onPressed: () => Get.back(),
            child: Text(
              'Batal',
              style: GoogleFonts.montserrat(color: Colors.grey),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Get.back();
              final authService = Get.find<AuthService>();
              authService.logout();
              Get.offAllNamed('/splash');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
            ),
            child: Text('Keluar', style: GoogleFonts.montserrat()),
          ),
        ],
      ),
    );
  }
}
