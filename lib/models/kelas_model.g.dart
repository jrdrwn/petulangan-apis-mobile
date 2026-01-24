// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kelas_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$KelasModelImpl _$$KelasModelImplFromJson(Map<String, dynamic> json) =>
    _$KelasModelImpl(
      id: (json['id'] as num).toInt(),
      nama: json['nama'] as String,
      sekolahId: (json['sekolah_id'] as num).toInt(),
    );

Map<String, dynamic> _$$KelasModelImplToJson(_$KelasModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nama': instance.nama,
      'sekolah_id': instance.sekolahId,
    };
