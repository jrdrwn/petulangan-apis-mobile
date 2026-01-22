import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/quiz_model.dart';

class QuizResultScreen extends StatelessWidget {
  const QuizResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final args = Get.arguments as Map<String, dynamic>;
    final result = args['result'] as QuizResult;
    final materialTitle = args['materialTitle'] as String;
    final chapterName = args['chapterName'] as String;

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
                  // Result icon
                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      color: isPassed ? Colors.green : Colors.red,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: (isPassed ? Colors.green : Colors.red)
                              .withValues(alpha: 0.4),
                          blurRadius: 20,
                          spreadRadius: 5,
                        ),
                      ],
                    ),
                    child: Icon(
                      isPassed
                          ? Icons.check_circle_outline
                          : Icons.cancel_outlined,
                      size: 80,
                      color: Colors.white,
                    ),
                  ),

                  const SizedBox(height: 30),

                  // Result title
                  Text(
                    isPassed ? 'BERHASIL!' : 'GAGAL!',
                    style: GoogleFonts.montserrat(
                      fontSize: 48,
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                      shadows: [
                        const Shadow(
                          blurRadius: 8,
                          color: Colors.black45,
                          offset: Offset(2, 4),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 10),

                  // Result message
                  Text(
                    isPassed
                        ? 'Selamat! Kamu Berhasil Menyelesaikan Misi'
                        : 'Jangan Menyerah! Coba Lagi',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      shadows: [
                        const Shadow(
                          blurRadius: 4,
                          color: Colors.black26,
                          offset: Offset(1, 2),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 40),

                  // Score card
                  Container(
                    padding: const EdgeInsets.all(25),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.2),
                          blurRadius: 10,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Text(
                          'Hasil Quiz',
                          style: GoogleFonts.montserrat(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        const SizedBox(height: 20),

                        // Score percentage
                        Text(
                          '${result.percentage.toStringAsFixed(0)}%',
                          style: GoogleFonts.montserrat(
                            fontSize: 64,
                            fontWeight: FontWeight.w900,
                            color: isPassed ? Colors.green : Colors.red,
                          ),
                        ),

                        const SizedBox(height: 20),

                        Divider(color: Colors.grey.shade300, thickness: 2),

                        const SizedBox(height: 20),

                        // Details
                        _buildScoreRow(
                          'Total Pertanyaan',
                          result.totalQuestions.toString(),
                          Colors.blue,
                        ),
                        const SizedBox(height: 15),
                        _buildScoreRow(
                          'Jawaban Benar',
                          result.correctAnswers.toString(),
                          Colors.green,
                        ),
                        const SizedBox(height: 15),
                        _buildScoreRow(
                          'Jawaban Salah',
                          result.wrongAnswers.toString(),
                          Colors.red,
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 40),

                  // Action buttons
                  if (isPassed) ...[
                    // Continue button (for passed)
                    ElevatedButton(
                      onPressed: () {
                        // Navigate back to dashboard
                        Get.offAllNamed('/dashboard-student');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 50,
                          vertical: 18,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        elevation: 5,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(Icons.home, size: 24),
                          const SizedBox(width: 10),
                          Text(
                            'Kembali ke Dashboard',
                            style: GoogleFonts.montserrat(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ] else ...[
                    // Retry button (for failed)
                    ElevatedButton(
                      onPressed: () {
                        // Retry quiz
                        Get.back();
                        Get.offNamed(
                          '/quiz',
                          arguments: {
                            'materialTitle': materialTitle,
                            'chapterName': chapterName,
                          },
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFCD3551),
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 50,
                          vertical: 18,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        elevation: 5,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(Icons.refresh, size: 24),
                          const SizedBox(width: 10),
                          Text(
                            'Coba Lagi',
                            style: GoogleFonts.montserrat(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 15),
                    // Back to dashboard button
                    OutlinedButton(
                      onPressed: () {
                        Get.offAllNamed('/dashboard-student');
                      },
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.white,
                        side: const BorderSide(color: Colors.white, width: 2),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 40,
                          vertical: 15,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: Text(
                        'Kembali ke Dashboard',
                        style: GoogleFonts.montserrat(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildScoreRow(String label, String value, Color color) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: GoogleFonts.montserrat(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          decoration: BoxDecoration(
            color: color.withValues(alpha: 0.2),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: color, width: 2),
          ),
          child: Text(
            value,
            style: GoogleFonts.montserrat(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
