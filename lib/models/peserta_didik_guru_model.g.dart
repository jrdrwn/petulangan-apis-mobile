// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'peserta_didik_guru_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PesertaDidikGuruModelImpl _$$PesertaDidikGuruModelImplFromJson(
  Map<String, dynamic> json,
) => _$PesertaDidikGuruModelImpl(
  id: (json['id'] as num).toInt(),
  namaLengkap: json['nama_lengkap'] as String,
  nisn: json['nisn'] as String,
  kelasId: (json['kelas_id'] as num).toInt(),
);

Map<String, dynamic> _$$PesertaDidikGuruModelImplToJson(
  _$PesertaDidikGuruModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'nama_lengkap': instance.namaLengkap,
  'nisn': instance.nisn,
  'kelas_id': instance.kelasId,
};
