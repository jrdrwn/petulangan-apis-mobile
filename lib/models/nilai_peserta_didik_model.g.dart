// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nilai_peserta_didik_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NilaiQuizModelImpl _$$NilaiQuizModelImplFromJson(Map<String, dynamic> json) =>
    _$NilaiQuizModelImpl(
      id: (json['id'] as num).toInt(),
      pesertaDidikId: (json['peserta_didik_id'] as num).toInt(),
      topikId: (json['topik_id'] as num).toInt(),
      hasilQuiz: json['hasil_quiz'] as String,
      nilai: (json['nilai'] as num).toInt(),
      jumlahBenar: (json['jumlah_benar'] as num?)?.toInt(),
      jumlahSalah: (json['jumlah_salah'] as num?)?.toInt(),
      waktuPengerjaan: json['waktu_pengerjaan'] as String?,
      tanggalSelesai: json['tanggal_selesai'] as String,
    );

Map<String, dynamic> _$$NilaiQuizModelImplToJson(
  _$NilaiQuizModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'peserta_didik_id': instance.pesertaDidikId,
  'topik_id': instance.topikId,
  'hasil_quiz': instance.hasilQuiz,
  'nilai': instance.nilai,
  'jumlah_benar': instance.jumlahBenar,
  'jumlah_salah': instance.jumlahSalah,
  'waktu_pengerjaan': instance.waktuPengerjaan,
  'tanggal_selesai': instance.tanggalSelesai,
};

_$TopikNilaiModelImpl _$$TopikNilaiModelImplFromJson(
  Map<String, dynamic> json,
) => _$TopikNilaiModelImpl(
  id: (json['id'] as num).toInt(),
  babId: (json['bab_id'] as num).toInt(),
  kode: json['kode'] as String,
  judul: json['judul'] as String,
  deskripsi: json['deskripsi'] as String,
  topikUrl: json['topik_url'] as String,
  nilaiQuiz: json['nilai_quiz'] == null
      ? null
      : NilaiQuizModel.fromJson(json['nilai_quiz'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$TopikNilaiModelImplToJson(
  _$TopikNilaiModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'bab_id': instance.babId,
  'kode': instance.kode,
  'judul': instance.judul,
  'deskripsi': instance.deskripsi,
  'topik_url': instance.topikUrl,
  'nilai_quiz': instance.nilaiQuiz,
};

_$BabNilaiModelImpl _$$BabNilaiModelImplFromJson(Map<String, dynamic> json) =>
    _$BabNilaiModelImpl(
      id: (json['id'] as num).toInt(),
      nomor: json['nomor'] as String,
      judul: json['judul'] as String,
      kelasId: (json['kelas_id'] as num).toInt(),
      deskripsi: json['deskripsi'] as String,
      topik: (json['topik'] as List<dynamic>)
          .map((e) => TopikNilaiModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BabNilaiModelImplToJson(_$BabNilaiModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nomor': instance.nomor,
      'judul': instance.judul,
      'kelas_id': instance.kelasId,
      'deskripsi': instance.deskripsi,
      'topik': instance.topik,
    };
