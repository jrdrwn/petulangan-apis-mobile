// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuizModelImpl _$$QuizModelImplFromJson(Map<String, dynamic> json) =>
    _$QuizModelImpl(
      id: (json['id'] as num).toInt(),
      topikId: (json['topik_id'] as num).toInt(),
      nama: json['nama'] as String,
      pilihanGanda: Map<String, String>.from(json['pilihan_ganda'] as Map),
      jawaban: json['jawaban'] as String,
      durasi: (json['durasi'] as num).toInt(),
    );

Map<String, dynamic> _$$QuizModelImplToJson(_$QuizModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'topik_id': instance.topikId,
      'nama': instance.nama,
      'pilihan_ganda': instance.pilihanGanda,
      'jawaban': instance.jawaban,
      'durasi': instance.durasi,
    };

_$QuizAnswerItemImpl _$$QuizAnswerItemImplFromJson(Map<String, dynamic> json) =>
    _$QuizAnswerItemImpl(
      quizId: (json['quiz_id'] as num).toInt(),
      jawaban: json['jawaban'] as String,
    );

Map<String, dynamic> _$$QuizAnswerItemImplToJson(
  _$QuizAnswerItemImpl instance,
) => <String, dynamic>{'quiz_id': instance.quizId, 'jawaban': instance.jawaban};

_$QuizSubmitRequestImpl _$$QuizSubmitRequestImplFromJson(
  Map<String, dynamic> json,
) => _$QuizSubmitRequestImpl(
  hasilQuiz: (json['hasil_quiz'] as List<dynamic>)
      .map((e) => QuizAnswerItem.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$QuizSubmitRequestImplToJson(
  _$QuizSubmitRequestImpl instance,
) => <String, dynamic>{'hasil_quiz': instance.hasilQuiz};

_$QuizSubmitResponseImpl _$$QuizSubmitResponseImplFromJson(
  Map<String, dynamic> json,
) => _$QuizSubmitResponseImpl(message: json['message'] as String);

Map<String, dynamic> _$$QuizSubmitResponseImplToJson(
  _$QuizSubmitResponseImpl instance,
) => <String, dynamic>{'message': instance.message};
