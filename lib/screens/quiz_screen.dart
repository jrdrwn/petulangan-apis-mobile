import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controllers/quiz_controller.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _timerPulseController;
  late Animation<double> _timerPulse;

  @override
  void initState() {
    super.initState();
    _timerPulseController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    _timerPulse = Tween<double>(begin: 1.0, end: 1.2).animate(
      CurvedAnimation(parent: _timerPulseController, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _timerPulseController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final args = Get.arguments as Map<String, dynamic>;
    final topikId = args['topikId'] as int;
    final videoUrl = args['videoUrl'] as String;
    final materialTitle = args['materialTitle'] as String;
    final chapterName = args['chapterName'] as String;

    final controller = Get.put(
      QuizController(
        topikId: topikId,
        videoUrl: videoUrl,
        materialTitle: materialTitle,
        chapterName: chapterName,
      ),
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
          child: Obx(() {
            // Show loading state while fetching quiz data
            if (controller.isLoading.value) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        Color(0xFFFFC107),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Memuat soal quiz...',
                      style: GoogleFonts.montserrat(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              );
            }

            // Show submitting state
            if (controller.isSubmitting.value) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        Color(0xFFFFC107),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Mengirim jawaban...',
                      style: GoogleFonts.montserrat(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              );
            }

            // Show quiz content when loaded
            return Column(
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
                      Obx(() {
                        // Pulse animation when time is low
                        if (controller.timeRemaining.value <= 10 &&
                            controller.timeRemaining.value > 0) {
                          if (!_timerPulseController.isAnimating) {
                            _timerPulseController.repeat(reverse: true);
                          }
                        } else {
                          if (_timerPulseController.isAnimating) {
                            _timerPulseController.stop();
                            _timerPulseController.reset();
                          }
                        }

                        return ScaleTransition(
                          scale: controller.timeRemaining.value <= 10
                              ? _timerPulse
                              : const AlwaysStoppedAnimation(1.0),
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 6,
                            ),
                            decoration: BoxDecoration(
                              color: controller.timeRemaining.value <= 10
                                  ? Colors.red.withValues(alpha: 0.2)
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(20),
                              border: controller.timeRemaining.value <= 10
                                  ? Border.all(color: Colors.red, width: 2)
                                  : null,
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.access_time,
                                  color: controller.timeRemaining.value <= 10
                                      ? Colors.red
                                      : Colors.white,
                                  size: 24,
                                ),
                                const SizedBox(width: 8),
                                Text(
                                  '00:${controller.timeRemaining.value.toString().padLeft(2, '0')}',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: controller.timeRemaining.value <= 10
                                        ? Colors.red
                                        : Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
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
                  child: Column(
                    children: [
                      Expanded(
                        child: SingleChildScrollView(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            children: [
                              const SizedBox(height: 20),

                              // Question box with AnimatedSwitcher
                              Obx(
                                () => AnimatedSwitcher(
                                  duration: const Duration(milliseconds: 400),
                                  transitionBuilder: (child, animation) {
                                    return FadeTransition(
                                      opacity: animation,
                                      child: SlideTransition(
                                        position: Tween<Offset>(
                                          begin: const Offset(0.1, 0),
                                          end: Offset.zero,
                                        ).animate(animation),
                                        child: child,
                                      ),
                                    );
                                  },
                                  child: Container(
                                    key: ValueKey(
                                      controller.currentQuestionIndex.value,
                                    ),
                                    width: double.infinity,
                                    padding: const EdgeInsets.all(20),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withValues(
                                            alpha: 0.2,
                                          ),
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
                                      border: Border.all(
                                        color: Colors.red,
                                        width: 2,
                                      ),
                                    ),
                                    child: Row(
                                      children: [
                                        const Icon(
                                          Icons.warning,
                                          color: Colors.red,
                                        ),
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
                                final isTimeUpForQuestion =
                                    controller.isTimeUp.value;

                                // Map untuk label A-D
                                const labels = ['A', 'B', 'C', 'D'];

                                return Column(
                                  children: controller.currentQuestion.answers
                                      .asMap()
                                      .entries
                                      .map((entry) {
                                        final index = entry.key;
                                        final answer = entry.value;
                                        final label = index < labels.length
                                            ? labels[index]
                                            : '${index + 1}';

                                        final isSelected =
                                            controller.selectedAnswerId.value ==
                                            answer.id;

                                        Color textColor;
                                        double opacity = 1.0;

                                        if (isTimeUpForQuestion) {
                                          // Grayed out when time is up
                                          textColor = Colors.grey.shade600;
                                          opacity = 0.6;
                                        } else if (isSelected) {
                                          textColor = Colors.white;
                                        } else {
                                          textColor = Colors.black87;
                                        }

                                        return Padding(
                                          padding: const EdgeInsets.only(
                                            bottom: 15,
                                          ),
                                          child: Opacity(
                                            opacity: opacity,
                                            child: _AnimatedAnswerOption(
                                              isSelected: isSelected,
                                              isTimeUp: isTimeUpForQuestion,
                                              onTap: () => controller
                                                  .selectAnswer(answer.id),
                                              child: Text(
                                                '$label. ${answer.text}',
                                                style: GoogleFonts.montserrat(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600,
                                                  color: textColor,
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      })
                                      .toList(),
                                );
                              }),

                              const SizedBox(height: 30),

                              // Navigation buttons
                              Obx(
                                () => Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    // Previous button
                                    if (controller.currentQuestionIndex.value >
                                        0)
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
                                            borderRadius: BorderRadius.circular(
                                              25,
                                            ),
                                          ),
                                        ),
                                      )
                                    else
                                      const SizedBox.shrink(),

                                    // Next/Finish button
                                    ElevatedButton.icon(
                                      onPressed: () {
                                        if (controller
                                                .currentQuestionIndex
                                                .value <
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
                                            controller
                                                    .currentQuestionIndex
                                                    .value <
                                                controller.totalQuestions - 1
                                            ? const Color(0xFFCD3551)
                                            : const Color(0xFFFFC107),
                                        foregroundColor: Colors.white,
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 25,
                                          vertical: 12,
                                        ),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            25,
                                          ),
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

                      // Cancel/Back to Dashboard button (fixed at bottom)
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 15,
                        ),
                        child: Center(
                          child: TextButton.icon(
                            onPressed: () {
                              Get.defaultDialog(
                                title: 'Batalkan Quiz',
                                middleText:
                                    'Apakah Anda yakin ingin keluar?\nJawaban Anda tidak akan disimpan.',
                                textConfirm: 'Ya, Keluar',
                                textCancel: 'Batal',
                                confirmTextColor: Colors.white,
                                buttonColor: const Color(0xFFCD3551),
                                cancelTextColor: Colors.grey.shade700,
                                onConfirm: () {
                                  Get.back(); // Close dialog
                                  Get.offAllNamed(
                                    '/dashboard-student',
                                    arguments: {'refresh': true},
                                  );
                                },
                              );
                            },
                            icon: const Icon(
                              Icons.close,
                              color: Colors.white,
                              size: 20,
                            ),
                            label: Text(
                              'Batalkan Quiz',
                              style: GoogleFonts.montserrat(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                            style: TextButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 10,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}

// Animated answer option with tap effect
class _AnimatedAnswerOption extends StatefulWidget {
  final bool isSelected;
  final bool isTimeUp;
  final VoidCallback onTap;
  final Widget child;

  const _AnimatedAnswerOption({
    required this.isSelected,
    required this.isTimeUp,
    required this.onTap,
    required this.child,
  });

  @override
  State<_AnimatedAnswerOption> createState() => _AnimatedAnswerOptionState();
}

class _AnimatedAnswerOptionState extends State<_AnimatedAnswerOption> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    Color backgroundColor;
    Color borderColor;

    if (widget.isTimeUp) {
      backgroundColor = widget.isSelected
          ? Colors.grey.shade300
          : Colors.grey.shade200;
      borderColor = widget.isSelected
          ? Colors.grey.shade500
          : Colors.grey.shade400;
    } else if (widget.isSelected) {
      backgroundColor = const Color(0xFFCD3551);
      borderColor = const Color(0xFFCD3551);
    } else {
      backgroundColor = Colors.white;
      borderColor = Colors.grey.shade300;
    }

    return GestureDetector(
      onTapDown: widget.isTimeUp
          ? null
          : (_) => setState(() => _isPressed = true),
      onTapUp: widget.isTimeUp
          ? null
          : (_) {
              setState(() => _isPressed = false);
              widget.onTap();
            },
      onTapCancel: () => setState(() => _isPressed = false),
      child: AnimatedScale(
        scale: _isPressed ? 0.98 : 1.0,
        duration: const Duration(milliseconds: 100),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: borderColor, width: 2),
            boxShadow: [
              BoxShadow(
                color: widget.isSelected && !widget.isTimeUp
                    ? const Color(0xFFCD3551).withValues(alpha: 0.3)
                    : Colors.black.withValues(alpha: 0.1),
                blurRadius: widget.isSelected ? 8 : 4,
                offset: Offset(0, _isPressed ? 1 : 2),
              ),
            ],
          ),
          child: widget.child,
        ),
      ),
    );
  }
}
