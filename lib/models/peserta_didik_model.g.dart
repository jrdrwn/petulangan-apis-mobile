// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'peserta_didik_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PesertaDidikModel _$PesertaDidikModelFromJson(Map<String, dynamic> json) =>
    _PesertaDidikModel(
      id: (json['id'] as num).toInt(),
      namaLengkap: json['nama_lengkap'] as String,
      nisn: json['nisn'] as String,
      kelasId: (json['kelas_id'] as num).toInt(),
    );

Map<String, dynamic> _$PesertaDidikModelToJson(_PesertaDidikModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nama_lengkap': instance.namaLengkap,
      'nisn': instance.nisn,
      'kelas_id': instance.kelasId,
    };

_RegisterPesertaDidikRequest _$RegisterPesertaDidikRequestFromJson(
  Map<String, dynamic> json,
) => _RegisterPesertaDidikRequest(
  nama: json['nama'] as String,
  nisn: json['nisn'] as String,
  kelasId: (json['kelas_id'] as num).toInt(),
);

Map<String, dynamic> _$RegisterPesertaDidikRequestToJson(
  _RegisterPesertaDidikRequest instance,
) => <String, dynamic>{
  'nama': instance.nama,
  'nisn': instance.nisn,
  'kelas_id': instance.kelasId,
};
