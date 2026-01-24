// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sekolah_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SekolahModelImpl _$$SekolahModelImplFromJson(Map<String, dynamic> json) =>
    _$SekolahModelImpl(
      id: (json['id'] as num).toInt(),
      nama: json['nama'] as String,
      alamat: json['alamat'] as String,
      email: json['email'] as String,
      semester: json['semester'] as String,
      tahunAjaran: json['tahun_ajaran'] as String,
    );

Map<String, dynamic> _$$SekolahModelImplToJson(_$SekolahModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nama': instance.nama,
      'alamat': instance.alamat,
      'email': instance.email,
      'semester': instance.semester,
      'tahun_ajaran': instance.tahunAjaran,
    };
