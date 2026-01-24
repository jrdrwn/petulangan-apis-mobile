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
    _$LoginResponseImpl(token: json['token'] as String);

Map<String, dynamic> _$$LoginResponseImplToJson(_$LoginResponseImpl instance) =>
    <String, dynamic>{'token': instance.token};

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
) => _$LoginGuruResponseImpl(token: json['token'] as String);

Map<String, dynamic> _$$LoginGuruResponseImplToJson(
  _$LoginGuruResponseImpl instance,
) => <String, dynamic>{'token': instance.token};
