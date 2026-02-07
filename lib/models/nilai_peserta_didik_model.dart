import 'package:freezed_annotation/freezed_annotation.dart';

part 'nilai_peserta_didik_model.freezed.dart';
part 'nilai_peserta_didik_model.g.dart';

@freezed
abstract class NilaiQuizModel with _$NilaiQuizModel {
  const factory NilaiQuizModel({
    required int id,
    @JsonKey(name: 'peserta_didik_id') required int pesertaDidikId,
    @JsonKey(name: 'topik_id') required int topikId,
    @JsonKey(name: 'hasil_quiz') required String hasilQuiz,
    required int nilai,
    @JsonKey(name: 'jumlah_benar') int? jumlahBenar,
    @JsonKey(name: 'jumlah_salah') int? jumlahSalah,
    @JsonKey(name: 'waktu_pengerjaan') String? waktuPengerjaan,
    @JsonKey(name: 'tanggal_selesai') required String tanggalSelesai,
  }) = _NilaiQuizModel;

  factory NilaiQuizModel.fromJson(Map<String, dynamic> json) =>
      _$NilaiQuizModelFromJson(json);
}

@freezed
abstract class TopikNilaiModel with _$TopikNilaiModel {
  const factory TopikNilaiModel({
    required int id,
    @JsonKey(name: 'bab_id') required int babId,
    required String kode,
    required String judul,
    required String deskripsi,
    @JsonKey(name: 'topik_url') required String topikUrl,
    @JsonKey(name: 'nilai_quiz') NilaiQuizModel? nilaiQuiz,
  }) = _TopikNilaiModel;

  factory TopikNilaiModel.fromJson(Map<String, dynamic> json) =>
      _$TopikNilaiModelFromJson(json);
}

@freezed
abstract class BabNilaiModel with _$BabNilaiModel {
  const factory BabNilaiModel({
    required int id,
    required String nomor,
    required String judul,
    @JsonKey(name: 'kelas_id') required int kelasId,
    required String deskripsi,
    required List<TopikNilaiModel> topik,
  }) = _BabNilaiModel;

  factory BabNilaiModel.fromJson(Map<String, dynamic> json) =>
      _$BabNilaiModelFromJson(json);
}
