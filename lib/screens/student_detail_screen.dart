import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controllers/student_detail_controller.dart';

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

              // Logo at top right
              Positioned(
                top: 16,
                right: 16,
                child: Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 3),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.15),
                        blurRadius: 10,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/logo.png',
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          color: Colors.orange.shade300,
                          child: const Icon(
                            Icons.school,
                            color: Colors.white,
                            size: 35,
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),

              // Main content
              Center(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.fromLTRB(20, 100, 20, 20),
                  child: Obx(() {
                    final detail = controller.studentDetail.value;
                    if (detail == null) {
                      return const CircularProgressIndicator();
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
                            detail.name.toUpperCase(),
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
                            detail.nisn,
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
                              // decoration: BoxDecoration(
                              //   gradient: const LinearGradient(
                              //     begin: Alignment.topLeft,
                              //     end: Alignment.bottomRight,
                              //     colors: [
                              //       Color(0xFFF5F5F5),
                              //       Color(0xFFE8E8E8),
                              //     ],
                              //   ),
                              //   borderRadius: BorderRadius.circular(20),
                              //   border: Border.all(
                              //     color: Colors.grey.shade300,
                              //     width: 2,
                              //   ),
                              // ),
                              // padding: const EdgeInsets.all(20),
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

                                  // Chapter list
                                  ...detail.chapters.map((chapter) {
                                    return _buildCollapsibleChapter(
                                      chapter,
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

  Widget _buildCollapsibleChapter(chapter, controller) {
    return Obx(() {
      final isExpanded = controller.isChapterExpanded(chapter.chapterId);

      Color statusColor;
      IconData statusIconData;

      switch (chapter.status) {
        case 'completed':
          statusColor = const Color(0xFF4CAF50);
          statusIconData = Icons.check_circle;
          break;
        case 'in-progress':
          statusColor = const Color(0xFFFFA726);
          statusIconData = Icons.warning_amber_rounded;
          break;
        case 'locked':
          statusColor = Colors.grey.shade600;
          statusIconData = Icons.lock;
          break;
        default:
          statusColor = Colors.grey;
          statusIconData = Icons.help;
      }

      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              if (chapter.topics.isNotEmpty) {
                controller.toggleChapter(chapter.chapterId);
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
                        if (chapter.topics.isNotEmpty)
                          Icon(
                            isExpanded
                                ? Icons.keyboard_arrow_down
                                : Icons.keyboard_arrow_right,
                            size: 20,
                            color: Colors.grey.shade700,
                          ),
                        if (chapter.topics.isNotEmpty) const SizedBox(width: 5),
                        Expanded(
                          child: RichText(
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: '${chapter.chapterNumber}: ',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                    color: const Color(0xFF1565C0),
                                  ),
                                ),
                                TextSpan(
                                  text: chapter.chapterTitle,
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
                            chapter.statusText,
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
                        chapter.score?.toString() ?? '-',
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
          if (isExpanded && chapter.topics.isNotEmpty) ...[
            const SizedBox(height: 8),
            ...chapter.topics.map((topic) {
              return _buildTopicRow(topic);
            }).toList(),
          ],
          const SizedBox(height: 12),
        ],
      );
    });
  }

  Widget _buildTopicRow(topic) {
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
                    topic.topicTitle,
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
                    index < topic.stars ? Icons.star : Icons.star_border,
                    size: 16,
                    color: index < topic.stars
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
                topic.score?.toString() ?? '-',
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
}
