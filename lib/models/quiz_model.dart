import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz_model.freezed.dart';
part 'quiz_model.g.dart';

@freezed
class QuizModel with _$QuizModel {
  const factory QuizModel({
    required int id,
    @JsonKey(name: 'topik_id') required int topikId,
    required String nama,
    @JsonKey(name: 'pilihan_ganda') required Map<String, String> pilihanGanda,
    required String jawaban,
    required int durasi,
  }) = _QuizModel;

  factory QuizModel.fromJson(Map<String, dynamic> json) =>
      _$QuizModelFromJson(json);
}

@freezed
class QuizAnswerItem with _$QuizAnswerItem {
  const factory QuizAnswerItem({
    @JsonKey(name: 'quiz_id') required int quizId,
    required String jawaban,
  }) = _QuizAnswerItem;

  factory QuizAnswerItem.fromJson(Map<String, dynamic> json) =>
      _$QuizAnswerItemFromJson(json);
}

@freezed
class QuizSubmitRequest with _$QuizSubmitRequest {
  const factory QuizSubmitRequest({
    @JsonKey(name: 'hasil_quiz') required List<QuizAnswerItem> hasilQuiz,
  }) = _QuizSubmitRequest;

  factory QuizSubmitRequest.fromJson(Map<String, dynamic> json) =>
      _$QuizSubmitRequestFromJson(json);
}

@freezed
class QuizSubmitResponse with _$QuizSubmitResponse {
  const factory QuizSubmitResponse({required String message}) =
      _QuizSubmitResponse;

  factory QuizSubmitResponse.fromJson(Map<String, dynamic> json) =>
      _$QuizSubmitResponseFromJson(json);
}

// Keep old models for now (will be used for UI transformation)
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
