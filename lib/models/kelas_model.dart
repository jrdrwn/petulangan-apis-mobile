import 'package:freezed_annotation/freezed_annotation.dart';

part 'kelas_model.freezed.dart';
part 'kelas_model.g.dart';

@freezed
abstract class KelasModel with _$KelasModel {
  const factory KelasModel({
    required int id,
    required String nama,
    @JsonKey(name: 'sekolah_id') required int sekolahId,
  }) = _KelasModel;

  factory KelasModel.fromJson(Map<String, dynamic> json) =>
      _$KelasModelFromJson(json);
}
