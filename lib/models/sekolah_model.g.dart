// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sekolah_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SekolahModel _$SekolahModelFromJson(Map<String, dynamic> json) =>
    _SekolahModel(
      id: (json['id'] as num).toInt(),
      nama: json['nama'] as String,
      alamat: json['alamat'] as String,
      email: json['email'] as String,
      semester: json['semester'] as String,
      tahunAjaran: json['tahun_ajaran'] as String,
    );

Map<String, dynamic> _$SekolahModelToJson(_SekolahModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nama': instance.nama,
      'alamat': instance.alamat,
      'email': instance.email,
      'semester': instance.semester,
      'tahun_ajaran': instance.tahunAjaran,
    };
