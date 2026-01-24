import 'package:freezed_annotation/freezed_annotation.dart';

part 'sekolah_model.freezed.dart';
part 'sekolah_model.g.dart';

@freezed
class SekolahModel with _$SekolahModel {
  const factory SekolahModel({
    required int id,
    required String nama,
    required String alamat,
    required String email,
    required String semester,
    @JsonKey(name: 'tahun_ajaran') required String tahunAjaran,
  }) = _SekolahModel;

  factory SekolahModel.fromJson(Map<String, dynamic> json) =>
      _$SekolahModelFromJson(json);
}
