// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bab_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TopikModel _$TopikModelFromJson(Map<String, dynamic> json) => _TopikModel(
  id: (json['id'] as num).toInt(),
  babId: (json['bab_id'] as num).toInt(),
  kode: json['kode'] as String,
  judul: json['judul'] as String,
  deskripsi: json['deskripsi'] as String,
  topikUrl: json['topik_url'] as String,
  unlocked: json['unlocked'] as bool,
);

Map<String, dynamic> _$TopikModelToJson(_TopikModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'bab_id': instance.babId,
      'kode': instance.kode,
      'judul': instance.judul,
      'deskripsi': instance.deskripsi,
      'topik_url': instance.topikUrl,
      'unlocked': instance.unlocked,
    };

_BabModel _$BabModelFromJson(Map<String, dynamic> json) => _BabModel(
  id: (json['id'] as num).toInt(),
  nomor: json['nomor'] as String,
  judul: json['judul'] as String,
  kelasId: (json['kelas_id'] as num).toInt(),
  deskripsi: json['deskripsi'] as String,
  topik: (json['topik'] as List<dynamic>)
      .map((e) => TopikModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$BabModelToJson(_BabModel instance) => <String, dynamic>{
  'id': instance.id,
  'nomor': instance.nomor,
  'judul': instance.judul,
  'kelas_id': instance.kelasId,
  'deskripsi': instance.deskripsi,
  'topik': instance.topik,
};
