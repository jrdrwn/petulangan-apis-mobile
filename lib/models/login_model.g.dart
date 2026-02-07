// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LoginRequest _$LoginRequestFromJson(Map<String, dynamic> json) =>
    _LoginRequest(nisn: json['nisn'] as String);

Map<String, dynamic> _$LoginRequestToJson(_LoginRequest instance) =>
    <String, dynamic>{'nisn': instance.nisn};

_LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) =>
    _LoginResponse(
      token: json['token'] as String,
      pesertaDidik: PesertaDidikData.fromJson(
        json['peserta_didik'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$LoginResponseToJson(_LoginResponse instance) =>
    <String, dynamic>{
      'token': instance.token,
      'peserta_didik': instance.pesertaDidik,
    };

_PesertaDidikData _$PesertaDidikDataFromJson(Map<String, dynamic> json) =>
    _PesertaDidikData(
      id: (json['id'] as num).toInt(),
      namaLengkap: json['nama_lengkap'] as String,
      nisn: json['nisn'] as String,
      kelasId: (json['kelas_id'] as num).toInt(),
    );

Map<String, dynamic> _$PesertaDidikDataToJson(_PesertaDidikData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nama_lengkap': instance.namaLengkap,
      'nisn': instance.nisn,
      'kelas_id': instance.kelasId,
    };

_LoginGuruRequest _$LoginGuruRequestFromJson(Map<String, dynamic> json) =>
    _LoginGuruRequest(
      nip: json['nip'] as String,
      password: json['password'] as String,
      sekolahId: (json['sekolah_id'] as num).toInt(),
    );

Map<String, dynamic> _$LoginGuruRequestToJson(_LoginGuruRequest instance) =>
    <String, dynamic>{
      'nip': instance.nip,
      'password': instance.password,
      'sekolah_id': instance.sekolahId,
    };

_LoginGuruResponse _$LoginGuruResponseFromJson(Map<String, dynamic> json) =>
    _LoginGuruResponse(
      token: json['token'] as String,
      guru: GuruData.fromJson(json['guru'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoginGuruResponseToJson(_LoginGuruResponse instance) =>
    <String, dynamic>{'token': instance.token, 'guru': instance.guru};

_GuruData _$GuruDataFromJson(Map<String, dynamic> json) => _GuruData(
  id: (json['id'] as num).toInt(),
  namaLengkap: json['nama_lengkap'] as String,
  email: json['email'] as String?,
  nip: json['nip'] as String,
  password: json['password'] as String?,
  noTelepon: json['no_telepon'] as String?,
  sekolahId: (json['sekolah_id'] as num).toInt(),
);

Map<String, dynamic> _$GuruDataToJson(_GuruData instance) => <String, dynamic>{
  'id': instance.id,
  'nama_lengkap': instance.namaLengkap,
  'email': instance.email,
  'nip': instance.nip,
  'password': instance.password,
  'no_telepon': instance.noTelepon,
  'sekolah_id': instance.sekolahId,
};
