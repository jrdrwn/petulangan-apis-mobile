// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nilai_peserta_didik_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

NilaiQuizModel _$NilaiQuizModelFromJson(Map<String, dynamic> json) {
  return _NilaiQuizModel.fromJson(json);
}

/// @nodoc
mixin _$NilaiQuizModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'peserta_didik_id')
  int get pesertaDidikId => throw _privateConstructorUsedError;
  @JsonKey(name: 'topik_id')
  int get topikId => throw _privateConstructorUsedError;
  @JsonKey(name: 'hasil_quiz')
  String get hasilQuiz => throw _privateConstructorUsedError;
  int get nilai => throw _privateConstructorUsedError;
  @JsonKey(name: 'jumlah_benar')
  int? get jumlahBenar => throw _privateConstructorUsedError;
  @JsonKey(name: 'jumlah_salah')
  int? get jumlahSalah => throw _privateConstructorUsedError;
  @JsonKey(name: 'waktu_pengerjaan')
  String? get waktuPengerjaan => throw _privateConstructorUsedError;
  @JsonKey(name: 'tanggal_selesai')
  String get tanggalSelesai => throw _privateConstructorUsedError;

  /// Serializes this NilaiQuizModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NilaiQuizModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NilaiQuizModelCopyWith<NilaiQuizModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NilaiQuizModelCopyWith<$Res> {
  factory $NilaiQuizModelCopyWith(
    NilaiQuizModel value,
    $Res Function(NilaiQuizModel) then,
  ) = _$NilaiQuizModelCopyWithImpl<$Res, NilaiQuizModel>;
  @useResult
  $Res call({
    int id,
    @JsonKey(name: 'peserta_didik_id') int pesertaDidikId,
    @JsonKey(name: 'topik_id') int topikId,
    @JsonKey(name: 'hasil_quiz') String hasilQuiz,
    int nilai,
    @JsonKey(name: 'jumlah_benar') int? jumlahBenar,
    @JsonKey(name: 'jumlah_salah') int? jumlahSalah,
    @JsonKey(name: 'waktu_pengerjaan') String? waktuPengerjaan,
    @JsonKey(name: 'tanggal_selesai') String tanggalSelesai,
  });
}

/// @nodoc
class _$NilaiQuizModelCopyWithImpl<$Res, $Val extends NilaiQuizModel>
    implements $NilaiQuizModelCopyWith<$Res> {
  _$NilaiQuizModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NilaiQuizModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? pesertaDidikId = null,
    Object? topikId = null,
    Object? hasilQuiz = null,
    Object? nilai = null,
    Object? jumlahBenar = freezed,
    Object? jumlahSalah = freezed,
    Object? waktuPengerjaan = freezed,
    Object? tanggalSelesai = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            pesertaDidikId: null == pesertaDidikId
                ? _value.pesertaDidikId
                : pesertaDidikId // ignore: cast_nullable_to_non_nullable
                      as int,
            topikId: null == topikId
                ? _value.topikId
                : topikId // ignore: cast_nullable_to_non_nullable
                      as int,
            hasilQuiz: null == hasilQuiz
                ? _value.hasilQuiz
                : hasilQuiz // ignore: cast_nullable_to_non_nullable
                      as String,
            nilai: null == nilai
                ? _value.nilai
                : nilai // ignore: cast_nullable_to_non_nullable
                      as int,
            jumlahBenar: freezed == jumlahBenar
                ? _value.jumlahBenar
                : jumlahBenar // ignore: cast_nullable_to_non_nullable
                      as int?,
            jumlahSalah: freezed == jumlahSalah
                ? _value.jumlahSalah
                : jumlahSalah // ignore: cast_nullable_to_non_nullable
                      as int?,
            waktuPengerjaan: freezed == waktuPengerjaan
                ? _value.waktuPengerjaan
                : waktuPengerjaan // ignore: cast_nullable_to_non_nullable
                      as String?,
            tanggalSelesai: null == tanggalSelesai
                ? _value.tanggalSelesai
                : tanggalSelesai // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$NilaiQuizModelImplCopyWith<$Res>
    implements $NilaiQuizModelCopyWith<$Res> {
  factory _$$NilaiQuizModelImplCopyWith(
    _$NilaiQuizModelImpl value,
    $Res Function(_$NilaiQuizModelImpl) then,
  ) = __$$NilaiQuizModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    @JsonKey(name: 'peserta_didik_id') int pesertaDidikId,
    @JsonKey(name: 'topik_id') int topikId,
    @JsonKey(name: 'hasil_quiz') String hasilQuiz,
    int nilai,
    @JsonKey(name: 'jumlah_benar') int? jumlahBenar,
    @JsonKey(name: 'jumlah_salah') int? jumlahSalah,
    @JsonKey(name: 'waktu_pengerjaan') String? waktuPengerjaan,
    @JsonKey(name: 'tanggal_selesai') String tanggalSelesai,
  });
}

/// @nodoc
class __$$NilaiQuizModelImplCopyWithImpl<$Res>
    extends _$NilaiQuizModelCopyWithImpl<$Res, _$NilaiQuizModelImpl>
    implements _$$NilaiQuizModelImplCopyWith<$Res> {
  __$$NilaiQuizModelImplCopyWithImpl(
    _$NilaiQuizModelImpl _value,
    $Res Function(_$NilaiQuizModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NilaiQuizModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? pesertaDidikId = null,
    Object? topikId = null,
    Object? hasilQuiz = null,
    Object? nilai = null,
    Object? jumlahBenar = freezed,
    Object? jumlahSalah = freezed,
    Object? waktuPengerjaan = freezed,
    Object? tanggalSelesai = null,
  }) {
    return _then(
      _$NilaiQuizModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        pesertaDidikId: null == pesertaDidikId
            ? _value.pesertaDidikId
            : pesertaDidikId // ignore: cast_nullable_to_non_nullable
                  as int,
        topikId: null == topikId
            ? _value.topikId
            : topikId // ignore: cast_nullable_to_non_nullable
                  as int,
        hasilQuiz: null == hasilQuiz
            ? _value.hasilQuiz
            : hasilQuiz // ignore: cast_nullable_to_non_nullable
                  as String,
        nilai: null == nilai
            ? _value.nilai
            : nilai // ignore: cast_nullable_to_non_nullable
                  as int,
        jumlahBenar: freezed == jumlahBenar
            ? _value.jumlahBenar
            : jumlahBenar // ignore: cast_nullable_to_non_nullable
                  as int?,
        jumlahSalah: freezed == jumlahSalah
            ? _value.jumlahSalah
            : jumlahSalah // ignore: cast_nullable_to_non_nullable
                  as int?,
        waktuPengerjaan: freezed == waktuPengerjaan
            ? _value.waktuPengerjaan
            : waktuPengerjaan // ignore: cast_nullable_to_non_nullable
                  as String?,
        tanggalSelesai: null == tanggalSelesai
            ? _value.tanggalSelesai
            : tanggalSelesai // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$NilaiQuizModelImpl implements _NilaiQuizModel {
  const _$NilaiQuizModelImpl({
    required this.id,
    @JsonKey(name: 'peserta_didik_id') required this.pesertaDidikId,
    @JsonKey(name: 'topik_id') required this.topikId,
    @JsonKey(name: 'hasil_quiz') required this.hasilQuiz,
    required this.nilai,
    @JsonKey(name: 'jumlah_benar') this.jumlahBenar,
    @JsonKey(name: 'jumlah_salah') this.jumlahSalah,
    @JsonKey(name: 'waktu_pengerjaan') this.waktuPengerjaan,
    @JsonKey(name: 'tanggal_selesai') required this.tanggalSelesai,
  });

  factory _$NilaiQuizModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NilaiQuizModelImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'peserta_didik_id')
  final int pesertaDidikId;
  @override
  @JsonKey(name: 'topik_id')
  final int topikId;
  @override
  @JsonKey(name: 'hasil_quiz')
  final String hasilQuiz;
  @override
  final int nilai;
  @override
  @JsonKey(name: 'jumlah_benar')
  final int? jumlahBenar;
  @override
  @JsonKey(name: 'jumlah_salah')
  final int? jumlahSalah;
  @override
  @JsonKey(name: 'waktu_pengerjaan')
  final String? waktuPengerjaan;
  @override
  @JsonKey(name: 'tanggal_selesai')
  final String tanggalSelesai;

  @override
  String toString() {
    return 'NilaiQuizModel(id: $id, pesertaDidikId: $pesertaDidikId, topikId: $topikId, hasilQuiz: $hasilQuiz, nilai: $nilai, jumlahBenar: $jumlahBenar, jumlahSalah: $jumlahSalah, waktuPengerjaan: $waktuPengerjaan, tanggalSelesai: $tanggalSelesai)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NilaiQuizModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.pesertaDidikId, pesertaDidikId) ||
                other.pesertaDidikId == pesertaDidikId) &&
            (identical(other.topikId, topikId) || other.topikId == topikId) &&
            (identical(other.hasilQuiz, hasilQuiz) ||
                other.hasilQuiz == hasilQuiz) &&
            (identical(other.nilai, nilai) || other.nilai == nilai) &&
            (identical(other.jumlahBenar, jumlahBenar) ||
                other.jumlahBenar == jumlahBenar) &&
            (identical(other.jumlahSalah, jumlahSalah) ||
                other.jumlahSalah == jumlahSalah) &&
            (identical(other.waktuPengerjaan, waktuPengerjaan) ||
                other.waktuPengerjaan == waktuPengerjaan) &&
            (identical(other.tanggalSelesai, tanggalSelesai) ||
                other.tanggalSelesai == tanggalSelesai));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    pesertaDidikId,
    topikId,
    hasilQuiz,
    nilai,
    jumlahBenar,
    jumlahSalah,
    waktuPengerjaan,
    tanggalSelesai,
  );

  /// Create a copy of NilaiQuizModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NilaiQuizModelImplCopyWith<_$NilaiQuizModelImpl> get copyWith =>
      __$$NilaiQuizModelImplCopyWithImpl<_$NilaiQuizModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$NilaiQuizModelImplToJson(this);
  }
}

abstract class _NilaiQuizModel implements NilaiQuizModel {
  const factory _NilaiQuizModel({
    required final int id,
    @JsonKey(name: 'peserta_didik_id') required final int pesertaDidikId,
    @JsonKey(name: 'topik_id') required final int topikId,
    @JsonKey(name: 'hasil_quiz') required final String hasilQuiz,
    required final int nilai,
    @JsonKey(name: 'jumlah_benar') final int? jumlahBenar,
    @JsonKey(name: 'jumlah_salah') final int? jumlahSalah,
    @JsonKey(name: 'waktu_pengerjaan') final String? waktuPengerjaan,
    @JsonKey(name: 'tanggal_selesai') required final String tanggalSelesai,
  }) = _$NilaiQuizModelImpl;

  factory _NilaiQuizModel.fromJson(Map<String, dynamic> json) =
      _$NilaiQuizModelImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'peserta_didik_id')
  int get pesertaDidikId;
  @override
  @JsonKey(name: 'topik_id')
  int get topikId;
  @override
  @JsonKey(name: 'hasil_quiz')
  String get hasilQuiz;
  @override
  int get nilai;
  @override
  @JsonKey(name: 'jumlah_benar')
  int? get jumlahBenar;
  @override
  @JsonKey(name: 'jumlah_salah')
  int? get jumlahSalah;
  @override
  @JsonKey(name: 'waktu_pengerjaan')
  String? get waktuPengerjaan;
  @override
  @JsonKey(name: 'tanggal_selesai')
  String get tanggalSelesai;

  /// Create a copy of NilaiQuizModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NilaiQuizModelImplCopyWith<_$NilaiQuizModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TopikNilaiModel _$TopikNilaiModelFromJson(Map<String, dynamic> json) {
  return _TopikNilaiModel.fromJson(json);
}

/// @nodoc
mixin _$TopikNilaiModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'bab_id')
  int get babId => throw _privateConstructorUsedError;
  String get kode => throw _privateConstructorUsedError;
  String get judul => throw _privateConstructorUsedError;
  String get deskripsi => throw _privateConstructorUsedError;
  @JsonKey(name: 'topik_url')
  String get topikUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'nilai_quiz')
  NilaiQuizModel? get nilaiQuiz => throw _privateConstructorUsedError;

  /// Serializes this TopikNilaiModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TopikNilaiModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TopikNilaiModelCopyWith<TopikNilaiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopikNilaiModelCopyWith<$Res> {
  factory $TopikNilaiModelCopyWith(
    TopikNilaiModel value,
    $Res Function(TopikNilaiModel) then,
  ) = _$TopikNilaiModelCopyWithImpl<$Res, TopikNilaiModel>;
  @useResult
  $Res call({
    int id,
    @JsonKey(name: 'bab_id') int babId,
    String kode,
    String judul,
    String deskripsi,
    @JsonKey(name: 'topik_url') String topikUrl,
    @JsonKey(name: 'nilai_quiz') NilaiQuizModel? nilaiQuiz,
  });

  $NilaiQuizModelCopyWith<$Res>? get nilaiQuiz;
}

/// @nodoc
class _$TopikNilaiModelCopyWithImpl<$Res, $Val extends TopikNilaiModel>
    implements $TopikNilaiModelCopyWith<$Res> {
  _$TopikNilaiModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TopikNilaiModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? babId = null,
    Object? kode = null,
    Object? judul = null,
    Object? deskripsi = null,
    Object? topikUrl = null,
    Object? nilaiQuiz = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            babId: null == babId
                ? _value.babId
                : babId // ignore: cast_nullable_to_non_nullable
                      as int,
            kode: null == kode
                ? _value.kode
                : kode // ignore: cast_nullable_to_non_nullable
                      as String,
            judul: null == judul
                ? _value.judul
                : judul // ignore: cast_nullable_to_non_nullable
                      as String,
            deskripsi: null == deskripsi
                ? _value.deskripsi
                : deskripsi // ignore: cast_nullable_to_non_nullable
                      as String,
            topikUrl: null == topikUrl
                ? _value.topikUrl
                : topikUrl // ignore: cast_nullable_to_non_nullable
                      as String,
            nilaiQuiz: freezed == nilaiQuiz
                ? _value.nilaiQuiz
                : nilaiQuiz // ignore: cast_nullable_to_non_nullable
                      as NilaiQuizModel?,
          )
          as $Val,
    );
  }

  /// Create a copy of TopikNilaiModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NilaiQuizModelCopyWith<$Res>? get nilaiQuiz {
    if (_value.nilaiQuiz == null) {
      return null;
    }

    return $NilaiQuizModelCopyWith<$Res>(_value.nilaiQuiz!, (value) {
      return _then(_value.copyWith(nilaiQuiz: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TopikNilaiModelImplCopyWith<$Res>
    implements $TopikNilaiModelCopyWith<$Res> {
  factory _$$TopikNilaiModelImplCopyWith(
    _$TopikNilaiModelImpl value,
    $Res Function(_$TopikNilaiModelImpl) then,
  ) = __$$TopikNilaiModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    @JsonKey(name: 'bab_id') int babId,
    String kode,
    String judul,
    String deskripsi,
    @JsonKey(name: 'topik_url') String topikUrl,
    @JsonKey(name: 'nilai_quiz') NilaiQuizModel? nilaiQuiz,
  });

  @override
  $NilaiQuizModelCopyWith<$Res>? get nilaiQuiz;
}

/// @nodoc
class __$$TopikNilaiModelImplCopyWithImpl<$Res>
    extends _$TopikNilaiModelCopyWithImpl<$Res, _$TopikNilaiModelImpl>
    implements _$$TopikNilaiModelImplCopyWith<$Res> {
  __$$TopikNilaiModelImplCopyWithImpl(
    _$TopikNilaiModelImpl _value,
    $Res Function(_$TopikNilaiModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TopikNilaiModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? babId = null,
    Object? kode = null,
    Object? judul = null,
    Object? deskripsi = null,
    Object? topikUrl = null,
    Object? nilaiQuiz = freezed,
  }) {
    return _then(
      _$TopikNilaiModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        babId: null == babId
            ? _value.babId
            : babId // ignore: cast_nullable_to_non_nullable
                  as int,
        kode: null == kode
            ? _value.kode
            : kode // ignore: cast_nullable_to_non_nullable
                  as String,
        judul: null == judul
            ? _value.judul
            : judul // ignore: cast_nullable_to_non_nullable
                  as String,
        deskripsi: null == deskripsi
            ? _value.deskripsi
            : deskripsi // ignore: cast_nullable_to_non_nullable
                  as String,
        topikUrl: null == topikUrl
            ? _value.topikUrl
            : topikUrl // ignore: cast_nullable_to_non_nullable
                  as String,
        nilaiQuiz: freezed == nilaiQuiz
            ? _value.nilaiQuiz
            : nilaiQuiz // ignore: cast_nullable_to_non_nullable
                  as NilaiQuizModel?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TopikNilaiModelImpl implements _TopikNilaiModel {
  const _$TopikNilaiModelImpl({
    required this.id,
    @JsonKey(name: 'bab_id') required this.babId,
    required this.kode,
    required this.judul,
    required this.deskripsi,
    @JsonKey(name: 'topik_url') required this.topikUrl,
    @JsonKey(name: 'nilai_quiz') this.nilaiQuiz,
  });

  factory _$TopikNilaiModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopikNilaiModelImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'bab_id')
  final int babId;
  @override
  final String kode;
  @override
  final String judul;
  @override
  final String deskripsi;
  @override
  @JsonKey(name: 'topik_url')
  final String topikUrl;
  @override
  @JsonKey(name: 'nilai_quiz')
  final NilaiQuizModel? nilaiQuiz;

  @override
  String toString() {
    return 'TopikNilaiModel(id: $id, babId: $babId, kode: $kode, judul: $judul, deskripsi: $deskripsi, topikUrl: $topikUrl, nilaiQuiz: $nilaiQuiz)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopikNilaiModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.babId, babId) || other.babId == babId) &&
            (identical(other.kode, kode) || other.kode == kode) &&
            (identical(other.judul, judul) || other.judul == judul) &&
            (identical(other.deskripsi, deskripsi) ||
                other.deskripsi == deskripsi) &&
            (identical(other.topikUrl, topikUrl) ||
                other.topikUrl == topikUrl) &&
            (identical(other.nilaiQuiz, nilaiQuiz) ||
                other.nilaiQuiz == nilaiQuiz));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    babId,
    kode,
    judul,
    deskripsi,
    topikUrl,
    nilaiQuiz,
  );

  /// Create a copy of TopikNilaiModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TopikNilaiModelImplCopyWith<_$TopikNilaiModelImpl> get copyWith =>
      __$$TopikNilaiModelImplCopyWithImpl<_$TopikNilaiModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$TopikNilaiModelImplToJson(this);
  }
}

abstract class _TopikNilaiModel implements TopikNilaiModel {
  const factory _TopikNilaiModel({
    required final int id,
    @JsonKey(name: 'bab_id') required final int babId,
    required final String kode,
    required final String judul,
    required final String deskripsi,
    @JsonKey(name: 'topik_url') required final String topikUrl,
    @JsonKey(name: 'nilai_quiz') final NilaiQuizModel? nilaiQuiz,
  }) = _$TopikNilaiModelImpl;

  factory _TopikNilaiModel.fromJson(Map<String, dynamic> json) =
      _$TopikNilaiModelImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'bab_id')
  int get babId;
  @override
  String get kode;
  @override
  String get judul;
  @override
  String get deskripsi;
  @override
  @JsonKey(name: 'topik_url')
  String get topikUrl;
  @override
  @JsonKey(name: 'nilai_quiz')
  NilaiQuizModel? get nilaiQuiz;

  /// Create a copy of TopikNilaiModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TopikNilaiModelImplCopyWith<_$TopikNilaiModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BabNilaiModel _$BabNilaiModelFromJson(Map<String, dynamic> json) {
  return _BabNilaiModel.fromJson(json);
}

/// @nodoc
mixin _$BabNilaiModel {
  int get id => throw _privateConstructorUsedError;
  String get nomor => throw _privateConstructorUsedError;
  String get judul => throw _privateConstructorUsedError;
  @JsonKey(name: 'kelas_id')
  int get kelasId => throw _privateConstructorUsedError;
  String get deskripsi => throw _privateConstructorUsedError;
  List<TopikNilaiModel> get topik => throw _privateConstructorUsedError;

  /// Serializes this BabNilaiModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BabNilaiModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BabNilaiModelCopyWith<BabNilaiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BabNilaiModelCopyWith<$Res> {
  factory $BabNilaiModelCopyWith(
    BabNilaiModel value,
    $Res Function(BabNilaiModel) then,
  ) = _$BabNilaiModelCopyWithImpl<$Res, BabNilaiModel>;
  @useResult
  $Res call({
    int id,
    String nomor,
    String judul,
    @JsonKey(name: 'kelas_id') int kelasId,
    String deskripsi,
    List<TopikNilaiModel> topik,
  });
}

/// @nodoc
class _$BabNilaiModelCopyWithImpl<$Res, $Val extends BabNilaiModel>
    implements $BabNilaiModelCopyWith<$Res> {
  _$BabNilaiModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BabNilaiModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nomor = null,
    Object? judul = null,
    Object? kelasId = null,
    Object? deskripsi = null,
    Object? topik = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            nomor: null == nomor
                ? _value.nomor
                : nomor // ignore: cast_nullable_to_non_nullable
                      as String,
            judul: null == judul
                ? _value.judul
                : judul // ignore: cast_nullable_to_non_nullable
                      as String,
            kelasId: null == kelasId
                ? _value.kelasId
                : kelasId // ignore: cast_nullable_to_non_nullable
                      as int,
            deskripsi: null == deskripsi
                ? _value.deskripsi
                : deskripsi // ignore: cast_nullable_to_non_nullable
                      as String,
            topik: null == topik
                ? _value.topik
                : topik // ignore: cast_nullable_to_non_nullable
                      as List<TopikNilaiModel>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BabNilaiModelImplCopyWith<$Res>
    implements $BabNilaiModelCopyWith<$Res> {
  factory _$$BabNilaiModelImplCopyWith(
    _$BabNilaiModelImpl value,
    $Res Function(_$BabNilaiModelImpl) then,
  ) = __$$BabNilaiModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String nomor,
    String judul,
    @JsonKey(name: 'kelas_id') int kelasId,
    String deskripsi,
    List<TopikNilaiModel> topik,
  });
}

/// @nodoc
class __$$BabNilaiModelImplCopyWithImpl<$Res>
    extends _$BabNilaiModelCopyWithImpl<$Res, _$BabNilaiModelImpl>
    implements _$$BabNilaiModelImplCopyWith<$Res> {
  __$$BabNilaiModelImplCopyWithImpl(
    _$BabNilaiModelImpl _value,
    $Res Function(_$BabNilaiModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BabNilaiModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nomor = null,
    Object? judul = null,
    Object? kelasId = null,
    Object? deskripsi = null,
    Object? topik = null,
  }) {
    return _then(
      _$BabNilaiModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        nomor: null == nomor
            ? _value.nomor
            : nomor // ignore: cast_nullable_to_non_nullable
                  as String,
        judul: null == judul
            ? _value.judul
            : judul // ignore: cast_nullable_to_non_nullable
                  as String,
        kelasId: null == kelasId
            ? _value.kelasId
            : kelasId // ignore: cast_nullable_to_non_nullable
                  as int,
        deskripsi: null == deskripsi
            ? _value.deskripsi
            : deskripsi // ignore: cast_nullable_to_non_nullable
                  as String,
        topik: null == topik
            ? _value._topik
            : topik // ignore: cast_nullable_to_non_nullable
                  as List<TopikNilaiModel>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BabNilaiModelImpl implements _BabNilaiModel {
  const _$BabNilaiModelImpl({
    required this.id,
    required this.nomor,
    required this.judul,
    @JsonKey(name: 'kelas_id') required this.kelasId,
    required this.deskripsi,
    required final List<TopikNilaiModel> topik,
  }) : _topik = topik;

  factory _$BabNilaiModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BabNilaiModelImplFromJson(json);

  @override
  final int id;
  @override
  final String nomor;
  @override
  final String judul;
  @override
  @JsonKey(name: 'kelas_id')
  final int kelasId;
  @override
  final String deskripsi;
  final List<TopikNilaiModel> _topik;
  @override
  List<TopikNilaiModel> get topik {
    if (_topik is EqualUnmodifiableListView) return _topik;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topik);
  }

  @override
  String toString() {
    return 'BabNilaiModel(id: $id, nomor: $nomor, judul: $judul, kelasId: $kelasId, deskripsi: $deskripsi, topik: $topik)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BabNilaiModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nomor, nomor) || other.nomor == nomor) &&
            (identical(other.judul, judul) || other.judul == judul) &&
            (identical(other.kelasId, kelasId) || other.kelasId == kelasId) &&
            (identical(other.deskripsi, deskripsi) ||
                other.deskripsi == deskripsi) &&
            const DeepCollectionEquality().equals(other._topik, _topik));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    nomor,
    judul,
    kelasId,
    deskripsi,
    const DeepCollectionEquality().hash(_topik),
  );

  /// Create a copy of BabNilaiModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BabNilaiModelImplCopyWith<_$BabNilaiModelImpl> get copyWith =>
      __$$BabNilaiModelImplCopyWithImpl<_$BabNilaiModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BabNilaiModelImplToJson(this);
  }
}

abstract class _BabNilaiModel implements BabNilaiModel {
  const factory _BabNilaiModel({
    required final int id,
    required final String nomor,
    required final String judul,
    @JsonKey(name: 'kelas_id') required final int kelasId,
    required final String deskripsi,
    required final List<TopikNilaiModel> topik,
  }) = _$BabNilaiModelImpl;

  factory _BabNilaiModel.fromJson(Map<String, dynamic> json) =
      _$BabNilaiModelImpl.fromJson;

  @override
  int get id;
  @override
  String get nomor;
  @override
  String get judul;
  @override
  @JsonKey(name: 'kelas_id')
  int get kelasId;
  @override
  String get deskripsi;
  @override
  List<TopikNilaiModel> get topik;

  /// Create a copy of BabNilaiModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BabNilaiModelImplCopyWith<_$BabNilaiModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
