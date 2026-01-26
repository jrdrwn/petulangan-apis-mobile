// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginRequestImpl _$$LoginRequestImplFromJson(Map<String, dynamic> json) =>
    _$LoginRequestImpl(nisn: json['nisn'] as String);

Map<String, dynamic> _$$LoginRequestImplToJson(_$LoginRequestImpl instance) =>
    <String, dynamic>{'nisn': instance.nisn};

_$LoginResponseImpl _$$LoginResponseImplFromJson(Map<String, dynamic> json) =>
    _$LoginResponseImpl(
      token: json['token'] as String,
      pesertaDidik: PesertaDidikData.fromJson(
        json['peserta_didik'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$$LoginResponseImplToJson(_$LoginResponseImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
      'peserta_didik': instance.pesertaDidik,
    };

_$PesertaDidikDataImpl _$$PesertaDidikDataImplFromJson(
  Map<String, dynamic> json,
) => _$PesertaDidikDataImpl(
  id: (json['id'] as num).toInt(),
  namaLengkap: json['nama_lengkap'] as String,
  nisn: json['nisn'] as String,
  kelasId: (json['kelas_id'] as num).toInt(),
);

Map<String, dynamic> _$$PesertaDidikDataImplToJson(
  _$PesertaDidikDataImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'nama_lengkap': instance.namaLengkap,
  'nisn': instance.nisn,
  'kelas_id': instance.kelasId,
};

_$LoginGuruRequestImpl _$$LoginGuruRequestImplFromJson(
  Map<String, dynamic> json,
) => _$LoginGuruRequestImpl(
  nip: json['nip'] as String,
  password: json['password'] as String,
  sekolahId: (json['sekolah_id'] as num).toInt(),
);

Map<String, dynamic> _$$LoginGuruRequestImplToJson(
  _$LoginGuruRequestImpl instance,
) => <String, dynamic>{
  'nip': instance.nip,
  'password': instance.password,
  'sekolah_id': instance.sekolahId,
};

_$LoginGuruResponseImpl _$$LoginGuruResponseImplFromJson(
  Map<String, dynamic> json,
) => _$LoginGuruResponseImpl(
  token: json['token'] as String,
  guru: GuruData.fromJson(json['guru'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$LoginGuruResponseImplToJson(
  _$LoginGuruResponseImpl instance,
) => <String, dynamic>{'token': instance.token, 'guru': instance.guru};

_$GuruDataImpl _$$GuruDataImplFromJson(Map<String, dynamic> json) =>
    _$GuruDataImpl(
      id: (json['id'] as num).toInt(),
      namaLengkap: json['nama_lengkap'] as String,
      email: json['email'] as String,
      nip: json['nip'] as String,
      password: json['password'] as String,
      noTelepon: json['no_telepon'] as String,
      sekolahId: (json['sekolah_id'] as num).toInt(),
    );

Map<String, dynamic> _$$GuruDataImplToJson(_$GuruDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nama_lengkap': instance.namaLengkap,
      'email': instance.email,
      'nip': instance.nip,
      'password': instance.password,
      'no_telepon': instance.noTelepon,
      'sekolah_id': instance.sekolahId,
    };
