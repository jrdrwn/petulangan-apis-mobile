import 'package:freezed_annotation/freezed_annotation.dart';

part 'peserta_didik_model.freezed.dart';
part 'peserta_didik_model.g.dart';

@freezed
class PesertaDidikModel with _$PesertaDidikModel {
  const factory PesertaDidikModel({
    required int id,
    @JsonKey(name: 'nama_lengkap') required String namaLengkap,
    required String nisn,
    @JsonKey(name: 'kelas_id') required int kelasId,
  }) = _PesertaDidikModel;

  factory PesertaDidikModel.fromJson(Map<String, dynamic> json) =>
      _$PesertaDidikModelFromJson(json);
}

@freezed
class RegisterPesertaDidikRequest with _$RegisterPesertaDidikRequest {
  const factory RegisterPesertaDidikRequest({
    required String nama,
    required String nisn,
    @JsonKey(name: 'kelas_id') required int kelasId,
  }) = _RegisterPesertaDidikRequest;

  factory RegisterPesertaDidikRequest.fromJson(Map<String, dynamic> json) =>
      _$RegisterPesertaDidikRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => {
    'nama': nama,
    'nisn': nisn,
    'kelas_id': kelasId,
  };
}
