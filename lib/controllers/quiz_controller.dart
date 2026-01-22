import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../models/quiz_model.dart';

class QuizController extends GetxController {
  final String materialTitle;
  final String chapterName;

  QuizController({required this.materialTitle, required this.chapterName});

  // Observable variables
  final currentQuestionIndex = 0.obs;
  final selectedAnswerId = ''.obs;
  final timeRemaining = 45.obs; // 45 seconds per question
  final isTimeUp = false.obs; // Track if time is up for current question

  Timer? _timer;
  late List<Question> questions;
  final List<String> userAnswers = []; // Store all user answers
  final List<int> questionTimers = []; // Store remaining time for each question
  final List<bool> timeUpFlags = []; // Track which questions have time up

  @override
  void onInit() {
    super.onInit();
    _initializeQuestions();
    _loadCurrentAnswer(); // Load answer if returning to this question
    _startTimer();
  }

  void _initializeQuestions() {
    // Sample questions - you can replace with real data from API
    List<Question> allQuestions = [
      Question(
        id: '1',
        question:
            'Perubahan lingkungan tempat tinggal dari masa lalu hingga kini menunjukkan bahwa suatu daerah dapat berkembang. Faktor utama yang paling mempengaruhi perkembangan tersebut adalah',
        answers: [
          Answer(id: 'A', text: 'Legenda Daerah'),
          Answer(id: 'B', text: 'Bentuk Bangunan Kuno'),
          Answer(id: 'C', text: 'Jumlah Penduduk dan Aktivitas Manusia'),
          Answer(id: 'D', text: 'Cerita Rakyat Setempat'),
        ],
        correctAnswerId: 'C',
      ),
      Question(
        id: '2',
        question:
            'Mengapa cerita tentang peristiwa yang benar-benar terjadi di masa lalu hingga kini disebut sebagai sejarah?',
        answers: [
          Answer(id: 'A', text: 'Karena diwariskan secara lisan'),
          Answer(id: 'B', text: 'Karena mengandung nilai budaya'),
          Answer(id: 'C', text: 'Karena berkaitan dengan kerajaan'),
          Answer(id: 'D', text: 'Karena berdasarkan kejadian nyata'),
        ],
        correctAnswerId: 'D',
      ),
      Question(
        id: '3',
        question: 'Apa yang membedakan sejarah lokal dengan sejarah nasional?',
        answers: [
          Answer(id: 'A', text: 'Sejarah lokal hanya menceritakan legenda'),
          Answer(id: 'B', text: 'Sejarah lokal fokus pada daerah tertentu'),
          Answer(id: 'C', text: 'Sejarah lokal tidak memiliki bukti'),
          Answer(id: 'D', text: 'Sejarah lokal lebih penting'),
        ],
        correctAnswerId: 'B',
      ),
      Question(
        id: '4',
        question:
            'Mengapa mempelajari sejarah daerah tempat tinggal kita penting?',
        answers: [
          Answer(id: 'A', text: 'Untuk mendapat nilai bagus'),
          Answer(id: 'B', text: 'Untuk menjadi terkenal'),
          Answer(id: 'C', text: 'Untuk memahami identitas dan budaya lokal'),
          Answer(id: 'D', text: 'Untuk membuat cerita baru'),
        ],
        correctAnswerId: 'C',
      ),
      Question(
        id: '5',
        question:
            'Mengapa peninggalan sejarah daerah perlu dijaga dan dilestarikan?',
        answers: [
          Answer(id: 'A', text: 'Agar diganti dengan bangunan baru'),
          Answer(id: 'B', text: 'Agar terlihat lebih modern'),
          Answer(id: 'C', text: 'Supaya dapat dijual ke luar negeri'),
          Answer(
            id: 'D',
            text: 'Sebagai bukti kejayaan masa lalu dan identitas daerah',
          ),
        ],
        correctAnswerId: 'D',
      ),
    ];

    // Shuffle questions randomly
    allQuestions.shuffle(Random());
    questions = allQuestions;

    // Initialize userAnswers list with empty strings
    userAnswers.clear();
    questionTimers.clear();
    timeUpFlags.clear();
    for (int i = 0; i < questions.length; i++) {
      userAnswers.add('');
      questionTimers.add(45); // 45 seconds for each question
      timeUpFlags.add(false); // No time up initially
    }
  }

  void _loadCurrentAnswer() {
    // Load saved answer for current question
    if (currentQuestionIndex.value < userAnswers.length) {
      selectedAnswerId.value = userAnswers[currentQuestionIndex.value];
      // Load saved timer for this question
      timeRemaining.value = questionTimers[currentQuestionIndex.value];
      isTimeUp.value = timeUpFlags[currentQuestionIndex.value];
    }
  }

  void _startTimer() {
    _timer?.cancel();

    // Don't start timer if time is already up for this question
    if (isTimeUp.value) {
      return;
    }

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (timeRemaining.value > 0) {
        timeRemaining.value--;
        // Save current timer value
        questionTimers[currentQuestionIndex.value] = timeRemaining.value;
      } else {
        // Time's up, auto submit as wrong answer
        _autoSubmitAnswer();
      }
    });
  }

  void selectAnswer(String answerId) {
    // Don't allow answer selection if time is up
    if (isTimeUp.value) {
      Get.snackbar(
        'Waktu Habis',
        'Waktu untuk soal ini sudah habis. Anda hanya bisa melihat soal.',
        backgroundColor: Colors.red,
        colorText: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
        duration: const Duration(seconds: 2),
      );
      return;
    }

    selectedAnswerId.value = answerId;
    // Save answer to userAnswers list
    userAnswers[currentQuestionIndex.value] = answerId;
  }

  void _autoSubmitAnswer() {
    // Time's up, mark this question as time up
    isTimeUp.value = true;
    timeUpFlags[currentQuestionIndex.value] = true;
    _timer?.cancel();

    Get.snackbar(
      'Waktu Habis!',
      'Waktu untuk soal ini telah habis. Soal hanya bisa dilihat.',
      backgroundColor: Colors.red,
      colorText: Colors.white,
      snackPosition: SnackPosition.BOTTOM,
      duration: const Duration(seconds: 2),
    );
  }

  void nextQuestion() {
    // Check if current question is answered and time is not up
    if (selectedAnswerId.value.isEmpty && !isTimeUp.value) {
      Get.defaultDialog(
        title: 'Soal Belum Dijawab',
        middleText:
            'Anda belum menjawab soal ini.\nApakah Anda ingin skip soal ini?',
        textConfirm: 'Ya, Skip',
        textCancel: 'Batal',
        confirmTextColor: Colors.white,
        buttonColor: const Color(0xFFCD3551),
        cancelTextColor: Colors.grey.shade700,
        onConfirm: () {
          Get.back(); // Close dialog
          _moveToNextQuestion();
        },
      );
      return;
    }

    // Save current timer before moving
    questionTimers[currentQuestionIndex.value] = timeRemaining.value;

    // Save current answer before moving (if answered)
    if (selectedAnswerId.value.isNotEmpty) {
      userAnswers[currentQuestionIndex.value] = selectedAnswerId.value;
    }
    _moveToNextQuestion();
  }

  void _moveToNextQuestion() {
    _timer?.cancel();
    if (currentQuestionIndex.value < questions.length - 1) {
      currentQuestionIndex.value++;
      _loadCurrentAnswer(); // Load answer for next question
      _startTimer();
    } else {
      finishQuiz();
    }
  }

  void previousQuestion() {
    // Save current timer before moving
    questionTimers[currentQuestionIndex.value] = timeRemaining.value;

    // Save current answer before moving
    if (selectedAnswerId.value.isNotEmpty) {
      userAnswers[currentQuestionIndex.value] = selectedAnswerId.value;
    }

    if (currentQuestionIndex.value > 0) {
      _timer?.cancel();
      currentQuestionIndex.value--;
      _loadCurrentAnswer(); // Load answer for previous question
      _startTimer();
    }
  }

  void finishQuiz() {
    _timer?.cancel();

    // Check if there are unanswered questions
    List<int> unansweredQuestions = [];
    for (int i = 0; i < questions.length; i++) {
      if (userAnswers[i].isEmpty) {
        unansweredQuestions.add(i + 1); // Add 1 for human-readable numbering
      }
    }

    if (unansweredQuestions.isNotEmpty) {
      Get.defaultDialog(
        title: 'Ada Soal yang Belum Dijawab',
        middleText:
            'Anda belum menjawab ${unansweredQuestions.length} soal:\n'
            'Nomor: ${unansweredQuestions.join(", ")}\n\n'
            'Apakah Anda yakin ingin menyelesaikan quiz?',
        textConfirm: 'Ya, Selesai',
        textCancel: 'Cek Lagi',
        confirmTextColor: Colors.white,
        onConfirm: () {
          Get.back(); // Close dialog
          _submitQuiz();
        },
        onCancel: () {
          // Restart timer when going back
          _startTimer();
        },
      );
      return;
    }

    _submitQuiz();
  }

  void _submitQuiz() {
    // Calculate results
    int correctCount = 0;
    int wrongCount = 0;

    for (int i = 0; i < questions.length; i++) {
      if (userAnswers[i].isEmpty) {
        wrongCount++;
      } else if (userAnswers[i] == questions[i].correctAnswerId) {
        correctCount++;
      } else {
        wrongCount++;
      }
    }

    final result = QuizResult(
      totalQuestions: questions.length,
      correctAnswers: correctCount,
      wrongAnswers: wrongCount,
      passed: correctCount >= (questions.length * 0.6), // 60% to pass
      percentage: (correctCount / questions.length) * 100,
    );

    Get.offNamed(
      '/quiz-complete',
      arguments: {
        'result': result,
        'materialTitle': materialTitle,
        'chapterName': chapterName,
      },
    );
  }

  Question get currentQuestion => questions[currentQuestionIndex.value];

  int get totalQuestions => questions.length;

  @override
  void onClose() {
    _timer?.cancel();
    super.onClose();
  }
}
