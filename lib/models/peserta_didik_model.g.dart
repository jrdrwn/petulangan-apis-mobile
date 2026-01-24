// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'peserta_didik_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PesertaDidikModelImpl _$$PesertaDidikModelImplFromJson(
  Map<String, dynamic> json,
) => _$PesertaDidikModelImpl(
  id: (json['id'] as num).toInt(),
  namaLengkap: json['nama_lengkap'] as String,
  nisn: json['nisn'] as String,
  kelasId: (json['kelas_id'] as num).toInt(),
);

Map<String, dynamic> _$$PesertaDidikModelImplToJson(
  _$PesertaDidikModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'nama_lengkap': instance.namaLengkap,
  'nisn': instance.nisn,
  'kelas_id': instance.kelasId,
};

_$RegisterPesertaDidikRequestImpl _$$RegisterPesertaDidikRequestImplFromJson(
  Map<String, dynamic> json,
) => _$RegisterPesertaDidikRequestImpl(
  nama: json['nama'] as String,
  nisn: json['nisn'] as String,
  kelasId: (json['kelas_id'] as num).toInt(),
);

Map<String, dynamic> _$$RegisterPesertaDidikRequestImplToJson(
  _$RegisterPesertaDidikRequestImpl instance,
) => <String, dynamic>{
  'nama': instance.nama,
  'nisn': instance.nisn,
  'kelas_id': instance.kelasId,
};
