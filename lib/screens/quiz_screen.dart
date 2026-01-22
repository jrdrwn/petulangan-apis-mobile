import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controllers/quiz_controller.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final args = Get.arguments as Map<String, dynamic>;
    final materialTitle = args['materialTitle'] as String;
    final chapterName = args['chapterName'] as String;

    final controller = Get.put(
      QuizController(materialTitle: materialTitle, chapterName: chapterName),
    );

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg2.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              // Header
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Question counter
                    Obx(
                      () => Text(
                        'Pertanyaan ${controller.currentQuestionIndex.value + 1}/${controller.totalQuestions}',
                        style: GoogleFonts.montserrat(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFFFFC107),
                          // added shadow for better visibility
                          shadows: [
                            Shadow(
                              offset: const Offset(1.0, 1.0),
                              blurRadius: 2.0,
                              color: Colors.black.withValues(alpha: 0.5),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // Timer
                    Obx(
                      () => Row(
                        children: [
                          const Icon(
                            Icons.access_time,
                            color: Colors.white,
                            size: 24,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            '00:${controller.timeRemaining.value.toString().padLeft(2, '0')}',
                            style: GoogleFonts.montserrat(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Logo
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.orange.shade300,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 3),
                      ),
                      child: const Center(
                        child: Image(
                          image: AssetImage('assets/images/logo.png'),
                          fit: BoxFit.cover,
                          width: 50,
                          height: 50,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Question and answers
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      const SizedBox(height: 20),

                      // Question box
                      Obx(
                        () => Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withValues(alpha: 0.2),
                                blurRadius: 8,
                                offset: const Offset(0, 4),
                              ),
                            ],
                          ),
                          child: Text(
                            controller.currentQuestion.question,
                            textAlign: TextAlign.justify,
                            style: GoogleFonts.montserrat(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.black87,
                              height: 1.5,
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 30),

                      // Time up warning (if applicable)
                      Obx(() {
                        if (controller.isTimeUp.value) {
                          return Container(
                            width: double.infinity,
                            padding: const EdgeInsets.all(15),
                            margin: const EdgeInsets.only(bottom: 15),
                            decoration: BoxDecoration(
                              color: Colors.red.shade100,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.red, width: 2),
                            ),
                            child: Row(
                              children: [
                                const Icon(Icons.warning, color: Colors.red),
                                const SizedBox(width: 10),
                                Expanded(
                                  child: Text(
                                    'Waktu habis! Soal ini hanya bisa dilihat, tidak bisa dijawab.',
                                    style: GoogleFonts.montserrat(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.red.shade900,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        }
                        return const SizedBox.shrink();
                      }),

                      // Answer options
                      Obx(() {
                        final isTimeUpForQuestion = controller.isTimeUp.value;

                        return Column(
                          children: controller.currentQuestion.answers.map((
                            answer,
                          ) {
                            final isSelected =
                                controller.selectedAnswerId.value == answer.id;

                            Color backgroundColor;
                            Color borderColor;
                            Color textColor;
                            double opacity = 1.0;

                            if (isTimeUpForQuestion) {
                              // Grayed out when time is up
                              backgroundColor = Colors.grey.shade200;
                              borderColor = Colors.grey.shade400;
                              textColor = Colors.grey.shade600;
                              opacity = 0.6;

                              if (isSelected) {
                                backgroundColor = Colors.grey.shade300;
                                borderColor = Colors.grey.shade500;
                              }
                            } else if (isSelected) {
                              backgroundColor = const Color(0xFFCD3551);
                              borderColor = const Color(0xFFCD3551);
                              textColor = Colors.white;
                            } else {
                              backgroundColor = Colors.white;
                              borderColor = Colors.grey.shade300;
                              textColor = Colors.black87;
                            }

                            return Padding(
                              padding: const EdgeInsets.only(bottom: 15),
                              child: Opacity(
                                opacity: opacity,
                                child: InkWell(
                                  onTap: () =>
                                      controller.selectAnswer(answer.id),
                                  borderRadius: BorderRadius.circular(15),
                                  child: Container(
                                    width: double.infinity,
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 20,
                                      vertical: 15,
                                    ),
                                    decoration: BoxDecoration(
                                      color: backgroundColor,
                                      borderRadius: BorderRadius.circular(15),
                                      border: Border.all(
                                        color: borderColor,
                                        width: 2,
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withValues(
                                            alpha: 0.1,
                                          ),
                                          blurRadius: 4,
                                          offset: const Offset(0, 2),
                                        ),
                                      ],
                                    ),
                                    child: Text(
                                      '${answer.id}. ${answer.text}',
                                      style: GoogleFonts.montserrat(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: textColor,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }).toList(),
                        );
                      }),

                      const SizedBox(height: 30),

                      // Navigation buttons
                      Obx(
                        () => Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Previous button
                            if (controller.currentQuestionIndex.value > 0)
                              ElevatedButton.icon(
                                onPressed: controller.previousQuestion,
                                icon: const Icon(Icons.arrow_back),
                                label: Text(
                                  'Sebelumnya',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue.shade700,
                                  foregroundColor: Colors.white,
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 20,
                                    vertical: 12,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                ),
                              )
                            else
                              const SizedBox.shrink(),

                            // Next/Finish button
                            ElevatedButton.icon(
                              onPressed: () {
                                if (controller.currentQuestionIndex.value <
                                    controller.totalQuestions - 1) {
                                  controller.nextQuestion();
                                } else {
                                  controller.finishQuiz();
                                }
                              },
                              icon: Icon(
                                controller.currentQuestionIndex.value <
                                        controller.totalQuestions - 1
                                    ? Icons.arrow_forward
                                    : Icons.check,
                              ),
                              label: Text(
                                controller.currentQuestionIndex.value <
                                        controller.totalQuestions - 1
                                    ? 'Selanjutnya'
                                    : 'Selesai',
                                style: GoogleFonts.montserrat(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    controller.currentQuestionIndex.value <
                                        controller.totalQuestions - 1
                                    ? const Color(0xFFCD3551)
                                    : const Color(0xFFFFC107),
                                foregroundColor: Colors.white,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 25,
                                  vertical: 12,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 40),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
