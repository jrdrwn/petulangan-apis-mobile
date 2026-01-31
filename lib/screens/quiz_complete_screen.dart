import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/quiz_model.dart';

class QuizCompleteScreen extends StatelessWidget {
  const QuizCompleteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final args = Get.arguments as Map<String, dynamic>;
    final result = args['result'] as QuizResult;
    final materialTitle = args['materialTitle'] as String;
    final chapterName = args['chapterName'] as String;
    final topikId = args['topikId'] as int?;
    final questions = args['questions'] as List<Question>?;
    final userAnswers = args['userAnswers'] as List<String>?;

    final isPassed = result.passed;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg2.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 40), // Space for half of logo
                  // Stack for logo positioning
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      // Main card
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.fromLTRB(40, 60, 40, 40),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.2),
                              blurRadius: 15,
                              offset: const Offset(0, 8),
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            // Title
                            Text(
                              isPassed ? 'SELAMAT' : 'YUK COBA LAGI',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.montserrat(
                                fontSize: 26,
                                fontWeight: FontWeight.w900,
                                color: const Color(0xFF1D4B8B),
                                height: 1.2,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              isPassed
                                  ? 'MISI BERHASIL'
                                  : 'MISI BELUM BERHASIL',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.montserrat(
                                fontSize: 26,
                                fontWeight: FontWeight.w900,
                                color: const Color(0xFF1D4B8B),
                                height: 1.2,
                              ),
                            ),

                            const SizedBox(height: 40),

                            // Character illustration
                            Image.asset(
                              isPassed
                                  ? 'assets/images/success_character.png'
                                  : 'assets/images/failed_character.png',
                              height: 250,
                              fit: BoxFit.contain,
                              errorBuilder: (context, error, stackTrace) {
                                // Fallback illustration
                                return Container(
                                  height: 250,
                                  alignment: Alignment.center,
                                  child: Icon(
                                    isPassed
                                        ? Icons.celebration
                                        : Icons.menu_book,
                                    size: 150,
                                    color: isPassed
                                        ? Colors.green.withValues(alpha: 0.5)
                                        : Colors.orange.withValues(alpha: 0.5),
                                  ),
                                );
                              },
                            ),

                            const SizedBox(height: 40),

                            // Buttons
                            Row(
                              children: [
                                // Lihat Hasil button
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Get.offNamed(
                                        '/quiz-result',
                                        arguments: {
                                          'result': result,
                                          'materialTitle': materialTitle,
                                          'chapterName': chapterName,
                                          'topikId': topikId,
                                          'questions': questions,
                                          'userAnswers': userAnswers,
                                        },
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.black,
                                      foregroundColor: Colors.white,
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 18,
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                      elevation: 5,
                                    ),
                                    child: Text(
                                      'Lihat Hasil',
                                      style: GoogleFonts.montserrat(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),

                                const SizedBox(width: 15),

                                // Lanjut / Belajar Lagi button
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      if (isPassed) {
                                        // Lanjut - go to dashboard and refresh
                                        Get.offAllNamed(
                                          '/dashboard-student',
                                          arguments: {'refresh': true},
                                        );
                                      } else {
                                        // Belajar Lagi - go back to video material
                                        Get.offNamed(
                                          '/video-material',
                                          arguments: {
                                            'topikId': topikId,
                                            'videoUrl':
                                                'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
                                            'materialTitle': materialTitle,
                                            'chapterName': chapterName,
                                          },
                                        );
                                      }
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: isPassed
                                          ? const Color(0xFFFFC107)
                                          : const Color(0xFFCD3551),
                                      foregroundColor: Colors.white,
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 18,
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                      elevation: 5,
                                    ),
                                    child: Text(
                                      isPassed ? 'Lanjut' : 'Belajar Lagi',
                                      style: GoogleFonts.montserrat(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      // Logo positioned absolutely at top center, half outside
                      Positioned(
                        top: -40,
                        left: 0,
                        right: 0,
                        child: Center(
                          child: Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              color: Colors.orange.shade300,
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
                            child: const ClipOval(
                              child: Image(
                                image: AssetImage('assets/images/logo.png'),
                                fit: BoxFit.cover,
                                width: 80,
                                height: 80,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
