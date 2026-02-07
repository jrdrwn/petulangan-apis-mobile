// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kelas_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_KelasModel _$KelasModelFromJson(Map<String, dynamic> json) => _KelasModel(
  id: (json['id'] as num).toInt(),
  nama: json['nama'] as String,
  sekolahId: (json['sekolah_id'] as num).toInt(),
);

Map<String, dynamic> _$KelasModelToJson(_KelasModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nama': instance.nama,
      'sekolah_id': instance.sekolahId,
    };
