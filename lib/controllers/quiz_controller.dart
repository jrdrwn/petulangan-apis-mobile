import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../models/quiz_model.dart';
import '../services/api_service.dart';
import '../services/connectivity_service.dart';
import '../services/auth_service.dart';

class QuizController extends GetxController {
  final int topikId;
  final String videoUrl;
  final String materialTitle;
  final String chapterName;

  QuizController({
    required this.topikId,
    required this.videoUrl,
    required this.materialTitle,
    required this.chapterName,
  });

  // Services
  final ApiService _apiService = ApiService();
  final ConnectivityService _connectivityService = ConnectivityService();
  late final AuthService _authService;

  // Observable variables
  final isLoading = true.obs;
  final isSubmitting = false.obs;
  final currentQuestionIndex = 0.obs;
  final selectedAnswerId = ''.obs;
  final timeRemaining = 0.obs; // Will be set from API data
  final isTimeUp = false.obs; // Track if time is up for current question

  Timer? _timer;
  List<QuizModel> quizData = []; // Store API data
  late List<Question> questions;
  final List<String> userAnswers = []; // Store all user answers
  final List<int> questionTimers = []; // Store remaining time for each question
  final List<bool> timeUpFlags = []; // Track which questions have time up

  @override
  void onInit() {
    super.onInit();
    _authService = Get.find<AuthService>();
    _fetchQuizData();
  }

  Future<void> _fetchQuizData() async {
    try {
      isLoading.value = true;

      // Check authentication
      if (_authService.token.value == null) {
        Get.snackbar(
          'Error',
          'Anda belum login. Silakan login terlebih dahulu.',
          backgroundColor: Colors.red,
          colorText: Colors.white,
          snackPosition: SnackPosition.BOTTOM,
        );
        Get.offAllNamed('/login-student');
        return;
      }

      // Check internet connection
      final hasConnection = await _connectivityService.hasConnection();
      if (!hasConnection) {
        Get.snackbar(
          'Tidak Ada Koneksi',
          'Periksa koneksi internet Anda dan coba lagi.',
          backgroundColor: Colors.orange,
          colorText: Colors.white,
          snackPosition: SnackPosition.BOTTOM,
        );
        Get.back();
        return;
      }

      // Fetch quiz data from API
      quizData = await _apiService.getQuiz(topikId, _authService.token.value!);

      if (quizData.isEmpty) {
        Get.snackbar(
          'Tidak Ada Data',
          'Tidak ada soal quiz untuk materi ini.',
          backgroundColor: Colors.orange,
          colorText: Colors.white,
          snackPosition: SnackPosition.BOTTOM,
        );
        Get.back();
        return;
      }

      // Transform API data to UI models
      _initializeQuestions();
      _loadCurrentAnswer(); // Load answer if returning to this question
      _startTimer();
    } catch (e) {
      Get.snackbar(
        'Error',
        'Gagal memuat data quiz: ${e.toString()}',
        backgroundColor: Colors.red,
        colorText: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
      );
      Get.back();
    } finally {
      isLoading.value = false;
    }
  }

  void _initializeQuestions() {
    // Transform QuizModel (API) to Question (UI model)
    questions = quizData.map((quiz) {
      // Transform pilihan_ganda Map to List<Answer>
      final answers = quiz.pilihanGanda.entries.map((entry) {
        return Answer(id: entry.key, text: entry.value);
      }).toList();

      // Shuffle answers to randomize order
      answers.shuffle();

      return Question(
        id: quiz.id.toString(),
        question: quiz.nama,
        answers: answers,
        correctAnswerId: quiz.jawaban,
      );
    }).toList();

    // Initialize userAnswers list with empty strings
    userAnswers.clear();
    questionTimers.clear();
    timeUpFlags.clear();
    for (int i = 0; i < questions.length; i++) {
      userAnswers.add('');
      // Use durasi from API data for each question
      questionTimers.add(quizData[i].durasi);
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

  Future<void> _submitQuiz() async {
    try {
      isSubmitting.value = true;

      // Check authentication
      if (_authService.token.value == null) {
        Get.snackbar(
          'Error',
          'Anda belum login. Silakan login terlebih dahulu.',
          backgroundColor: Colors.red,
          colorText: Colors.white,
          snackPosition: SnackPosition.BOTTOM,
        );
        Get.offAllNamed('/login-student');
        return;
      }

      // Check internet connection
      final hasConnection = await _connectivityService.hasConnection();
      if (!hasConnection) {
        Get.snackbar(
          'Tidak Ada Koneksi',
          'Periksa koneksi internet Anda dan coba lagi.',
          backgroundColor: Colors.orange,
          colorText: Colors.white,
          snackPosition: SnackPosition.BOTTOM,
        );
        isSubmitting.value = false;
        return;
      }

      // Prepare quiz answers - use empty string for unanswered questions
      final hasilQuiz = <QuizAnswerItem>[];
      for (int i = 0; i < questions.length; i++) {
        hasilQuiz.add(
          QuizAnswerItem(
            quizId: int.parse(questions[i].id),
            jawaban: userAnswers[i].isEmpty ? '' : userAnswers[i],
          ),
        );
      }

      final request = QuizSubmitRequest(hasilQuiz: hasilQuiz);

      // Submit to API
      final response = await _apiService.submitQuiz(
        topikId,
        request,
        _authService.token.value!,
      );

      // Calculate results for UI
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

      // Success - navigate to result screen
      Get.offNamed(
        '/quiz-complete',
        arguments: {
          'result': result,
          'materialTitle': materialTitle,
          'chapterName': chapterName,
          'topikId': topikId,
          'videoUrl': videoUrl,
          'questions': questions,
          'userAnswers': userAnswers,
        },
      );
    } catch (e) {
      Get.snackbar(
        'Error',
        'Gagal submit quiz: ${e.toString()}',
        backgroundColor: Colors.red,
        colorText: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
      );
    } finally {
      isSubmitting.value = false;
    }
  }

  Question get currentQuestion => questions[currentQuestionIndex.value];

  int get totalQuestions => questions.length;

  @override
  void onClose() {
    _timer?.cancel();
    super.onClose();
  }
}
