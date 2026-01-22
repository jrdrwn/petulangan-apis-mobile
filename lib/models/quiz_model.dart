class Question {
  final String id;
  final String question;
  final List<Answer> answers;
  final String correctAnswerId;

  Question({
    required this.id,
    required this.question,
    required this.answers,
    required this.correctAnswerId,
  });
}

class Answer {
  final String id;
  final String text;

  Answer({required this.id, required this.text});
}

class QuizResult {
  final int totalQuestions;
  final int correctAnswers;
  final int wrongAnswers;
  final bool passed;
  final double percentage;

  QuizResult({
    required this.totalQuestions,
    required this.correctAnswers,
    required this.wrongAnswers,
    required this.passed,
    required this.percentage,
  });
}
