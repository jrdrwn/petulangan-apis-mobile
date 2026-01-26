import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_model.freezed.dart';
part 'login_model.g.dart';

@freezed
class LoginRequest with _$LoginRequest {
  const factory LoginRequest({required String nisn}) = _LoginRequest;

  factory LoginRequest.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestFromJson(json);
}

@freezed
class LoginResponse with _$LoginResponse {
  const factory LoginResponse({
    required String token,
    @JsonKey(name: 'peserta_didik') required PesertaDidikData pesertaDidik,
  }) = _LoginResponse;

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}

@freezed
class PesertaDidikData with _$PesertaDidikData {
  const factory PesertaDidikData({
    required int id,
    @JsonKey(name: 'nama_lengkap') required String namaLengkap,
    required String nisn,
    @JsonKey(name: 'kelas_id') required int kelasId,
  }) = _PesertaDidikData;

  factory PesertaDidikData.fromJson(Map<String, dynamic> json) =>
      _$PesertaDidikDataFromJson(json);
}

@freezed
class LoginGuruRequest with _$LoginGuruRequest {
  const factory LoginGuruRequest({
    required String nip,
    required String password,
    @JsonKey(name: 'sekolah_id') required int sekolahId,
  }) = _LoginGuruRequest;

  factory LoginGuruRequest.fromJson(Map<String, dynamic> json) =>
      _$LoginGuruRequestFromJson(json);
}

@freezed
class LoginGuruResponse with _$LoginGuruResponse {
  const factory LoginGuruResponse({
    required String token,
    required GuruData guru,
  }) = _LoginGuruResponse;

  factory LoginGuruResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginGuruResponseFromJson(json);
}

@freezed
class GuruData with _$GuruData {
  const factory GuruData({
    required int id,
    @JsonKey(name: 'nama_lengkap') required String namaLengkap,
    required String email,
    required String nip,
    required String password,
    @JsonKey(name: 'no_telepon') required String noTelepon,
    @JsonKey(name: 'sekolah_id') required int sekolahId,
  }) = _GuruData;

  factory GuruData.fromJson(Map<String, dynamic> json) =>
      _$GuruDataFromJson(json);
}
