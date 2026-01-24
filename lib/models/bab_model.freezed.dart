// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bab_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

TopikModel _$TopikModelFromJson(Map<String, dynamic> json) {
  return _TopikModel.fromJson(json);
}

/// @nodoc
mixin _$TopikModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'bab_id')
  int get babId => throw _privateConstructorUsedError;
  String get kode => throw _privateConstructorUsedError;
  String get judul => throw _privateConstructorUsedError;
  String get deskripsi => throw _privateConstructorUsedError;
  @JsonKey(name: 'topik_url')
  String get topikUrl => throw _privateConstructorUsedError;
  bool get unlocked => throw _privateConstructorUsedError;

  /// Serializes this TopikModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TopikModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TopikModelCopyWith<TopikModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopikModelCopyWith<$Res> {
  factory $TopikModelCopyWith(
    TopikModel value,
    $Res Function(TopikModel) then,
  ) = _$TopikModelCopyWithImpl<$Res, TopikModel>;
  @useResult
  $Res call({
    int id,
    @JsonKey(name: 'bab_id') int babId,
    String kode,
    String judul,
    String deskripsi,
    @JsonKey(name: 'topik_url') String topikUrl,
    bool unlocked,
  });
}

/// @nodoc
class _$TopikModelCopyWithImpl<$Res, $Val extends TopikModel>
    implements $TopikModelCopyWith<$Res> {
  _$TopikModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TopikModel
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
    Object? unlocked = null,
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
            unlocked: null == unlocked
                ? _value.unlocked
                : unlocked // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TopikModelImplCopyWith<$Res>
    implements $TopikModelCopyWith<$Res> {
  factory _$$TopikModelImplCopyWith(
    _$TopikModelImpl value,
    $Res Function(_$TopikModelImpl) then,
  ) = __$$TopikModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    @JsonKey(name: 'bab_id') int babId,
    String kode,
    String judul,
    String deskripsi,
    @JsonKey(name: 'topik_url') String topikUrl,
    bool unlocked,
  });
}

/// @nodoc
class __$$TopikModelImplCopyWithImpl<$Res>
    extends _$TopikModelCopyWithImpl<$Res, _$TopikModelImpl>
    implements _$$TopikModelImplCopyWith<$Res> {
  __$$TopikModelImplCopyWithImpl(
    _$TopikModelImpl _value,
    $Res Function(_$TopikModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TopikModel
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
    Object? unlocked = null,
  }) {
    return _then(
      _$TopikModelImpl(
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
        unlocked: null == unlocked
            ? _value.unlocked
            : unlocked // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TopikModelImpl implements _TopikModel {
  const _$TopikModelImpl({
    required this.id,
    @JsonKey(name: 'bab_id') required this.babId,
    required this.kode,
    required this.judul,
    required this.deskripsi,
    @JsonKey(name: 'topik_url') required this.topikUrl,
    required this.unlocked,
  });

  factory _$TopikModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopikModelImplFromJson(json);

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
  final bool unlocked;

  @override
  String toString() {
    return 'TopikModel(id: $id, babId: $babId, kode: $kode, judul: $judul, deskripsi: $deskripsi, topikUrl: $topikUrl, unlocked: $unlocked)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopikModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.babId, babId) || other.babId == babId) &&
            (identical(other.kode, kode) || other.kode == kode) &&
            (identical(other.judul, judul) || other.judul == judul) &&
            (identical(other.deskripsi, deskripsi) ||
                other.deskripsi == deskripsi) &&
            (identical(other.topikUrl, topikUrl) ||
                other.topikUrl == topikUrl) &&
            (identical(other.unlocked, unlocked) ||
                other.unlocked == unlocked));
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
    unlocked,
  );

  /// Create a copy of TopikModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TopikModelImplCopyWith<_$TopikModelImpl> get copyWith =>
      __$$TopikModelImplCopyWithImpl<_$TopikModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopikModelImplToJson(this);
  }
}

abstract class _TopikModel implements TopikModel {
  const factory _TopikModel({
    required final int id,
    @JsonKey(name: 'bab_id') required final int babId,
    required final String kode,
    required final String judul,
    required final String deskripsi,
    @JsonKey(name: 'topik_url') required final String topikUrl,
    required final bool unlocked,
  }) = _$TopikModelImpl;

  factory _TopikModel.fromJson(Map<String, dynamic> json) =
      _$TopikModelImpl.fromJson;

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
  bool get unlocked;

  /// Create a copy of TopikModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TopikModelImplCopyWith<_$TopikModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BabModel _$BabModelFromJson(Map<String, dynamic> json) {
  return _BabModel.fromJson(json);
}

/// @nodoc
mixin _$BabModel {
  int get id => throw _privateConstructorUsedError;
  String get nomor => throw _privateConstructorUsedError;
  String get judul => throw _privateConstructorUsedError;
  @JsonKey(name: 'kelas_id')
  int get kelasId => throw _privateConstructorUsedError;
  String get deskripsi => throw _privateConstructorUsedError;
  List<TopikModel> get topik => throw _privateConstructorUsedError;

  /// Serializes this BabModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BabModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BabModelCopyWith<BabModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BabModelCopyWith<$Res> {
  factory $BabModelCopyWith(BabModel value, $Res Function(BabModel) then) =
      _$BabModelCopyWithImpl<$Res, BabModel>;
  @useResult
  $Res call({
    int id,
    String nomor,
    String judul,
    @JsonKey(name: 'kelas_id') int kelasId,
    String deskripsi,
    List<TopikModel> topik,
  });
}

/// @nodoc
class _$BabModelCopyWithImpl<$Res, $Val extends BabModel>
    implements $BabModelCopyWith<$Res> {
  _$BabModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BabModel
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
                      as List<TopikModel>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BabModelImplCopyWith<$Res>
    implements $BabModelCopyWith<$Res> {
  factory _$$BabModelImplCopyWith(
    _$BabModelImpl value,
    $Res Function(_$BabModelImpl) then,
  ) = __$$BabModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String nomor,
    String judul,
    @JsonKey(name: 'kelas_id') int kelasId,
    String deskripsi,
    List<TopikModel> topik,
  });
}

/// @nodoc
class __$$BabModelImplCopyWithImpl<$Res>
    extends _$BabModelCopyWithImpl<$Res, _$BabModelImpl>
    implements _$$BabModelImplCopyWith<$Res> {
  __$$BabModelImplCopyWithImpl(
    _$BabModelImpl _value,
    $Res Function(_$BabModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BabModel
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
      _$BabModelImpl(
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
                  as List<TopikModel>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BabModelImpl implements _BabModel {
  const _$BabModelImpl({
    required this.id,
    required this.nomor,
    required this.judul,
    @JsonKey(name: 'kelas_id') required this.kelasId,
    required this.deskripsi,
    required final List<TopikModel> topik,
  }) : _topik = topik;

  factory _$BabModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BabModelImplFromJson(json);

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
  final List<TopikModel> _topik;
  @override
  List<TopikModel> get topik {
    if (_topik is EqualUnmodifiableListView) return _topik;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topik);
  }

  @override
  String toString() {
    return 'BabModel(id: $id, nomor: $nomor, judul: $judul, kelasId: $kelasId, deskripsi: $deskripsi, topik: $topik)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BabModelImpl &&
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

  /// Create a copy of BabModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BabModelImplCopyWith<_$BabModelImpl> get copyWith =>
      __$$BabModelImplCopyWithImpl<_$BabModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BabModelImplToJson(this);
  }
}

abstract class _BabModel implements BabModel {
  const factory _BabModel({
    required final int id,
    required final String nomor,
    required final String judul,
    @JsonKey(name: 'kelas_id') required final int kelasId,
    required final String deskripsi,
    required final List<TopikModel> topik,
  }) = _$BabModelImpl;

  factory _BabModel.fromJson(Map<String, dynamic> json) =
      _$BabModelImpl.fromJson;

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
  List<TopikModel> get topik;

  /// Create a copy of BabModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BabModelImplCopyWith<_$BabModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
