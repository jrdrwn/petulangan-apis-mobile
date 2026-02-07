// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_QuizModel _$QuizModelFromJson(Map<String, dynamic> json) => _QuizModel(
  id: (json['id'] as num).toInt(),
  topikId: (json['topik_id'] as num).toInt(),
  nama: json['nama'] as String,
  pilihanGanda: Map<String, String>.from(json['pilihan_ganda'] as Map),
  jawaban: json['jawaban'] as String,
  durasi: (json['durasi'] as num).toInt(),
);

Map<String, dynamic> _$QuizModelToJson(_QuizModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'topik_id': instance.topikId,
      'nama': instance.nama,
      'pilihan_ganda': instance.pilihanGanda,
      'jawaban': instance.jawaban,
      'durasi': instance.durasi,
    };

_QuizAnswerItem _$QuizAnswerItemFromJson(Map<String, dynamic> json) =>
    _QuizAnswerItem(
      quizId: (json['quiz_id'] as num).toInt(),
      jawaban: json['jawaban'] as String,
    );

Map<String, dynamic> _$QuizAnswerItemToJson(_QuizAnswerItem instance) =>
    <String, dynamic>{'quiz_id': instance.quizId, 'jawaban': instance.jawaban};

_QuizSubmitRequest _$QuizSubmitRequestFromJson(Map<String, dynamic> json) =>
    _QuizSubmitRequest(
      hasilQuiz: (json['hasil_quiz'] as List<dynamic>)
          .map((e) => QuizAnswerItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$QuizSubmitRequestToJson(_QuizSubmitRequest instance) =>
    <String, dynamic>{'hasil_quiz': instance.hasilQuiz};

_QuizSubmitResponse _$QuizSubmitResponseFromJson(Map<String, dynamic> json) =>
    _QuizSubmitResponse(message: json['message'] as String);

Map<String, dynamic> _$QuizSubmitResponseToJson(_QuizSubmitResponse instance) =>
    <String, dynamic>{'message': instance.message};
