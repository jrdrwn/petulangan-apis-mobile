import 'package:freezed_annotation/freezed_annotation.dart';

part 'bab_model.freezed.dart';
part 'bab_model.g.dart';

@freezed
class TopikModel with _$TopikModel {
  const factory TopikModel({
    required int id,
    @JsonKey(name: 'bab_id') required int babId,
    required String kode,
    required String judul,
    required String deskripsi,
    @JsonKey(name: 'topik_url') required String topikUrl,
    required bool unlocked,
  }) = _TopikModel;

  factory TopikModel.fromJson(Map<String, dynamic> json) =>
      _$TopikModelFromJson(json);
}

@freezed
class BabModel with _$BabModel {
  const factory BabModel({
    required int id,
    required String nomor,
    required String judul,
    @JsonKey(name: 'kelas_id') required int kelasId,
    required String deskripsi,
    required List<TopikModel> topik,
  }) = _BabModel;

  factory BabModel.fromJson(Map<String, dynamic> json) =>
      _$BabModelFromJson(json);
}
