import 'package:freezed_annotation/freezed_annotation.dart';

part 'peserta_didik_guru_model.freezed.dart';
part 'peserta_didik_guru_model.g.dart';

@freezed
abstract class PesertaDidikGuruModel with _$PesertaDidikGuruModel {
  const factory PesertaDidikGuruModel({
    required int id,
    @JsonKey(name: 'nama_lengkap') required String namaLengkap,
    required String nisn,
    @JsonKey(name: 'kelas_id') required int kelasId,
  }) = _PesertaDidikGuruModel;

  factory PesertaDidikGuruModel.fromJson(Map<String, dynamic> json) =>
      _$PesertaDidikGuruModelFromJson(json);
}
