// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'peserta_didik_guru_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PesertaDidikGuruModel _$PesertaDidikGuruModelFromJson(
  Map<String, dynamic> json,
) {
  return _PesertaDidikGuruModel.fromJson(json);
}

/// @nodoc
mixin _$PesertaDidikGuruModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'nama_lengkap')
  String get namaLengkap => throw _privateConstructorUsedError;
  String get nisn => throw _privateConstructorUsedError;
  @JsonKey(name: 'kelas_id')
  int get kelasId => throw _privateConstructorUsedError;

  /// Serializes this PesertaDidikGuruModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PesertaDidikGuruModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PesertaDidikGuruModelCopyWith<PesertaDidikGuruModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PesertaDidikGuruModelCopyWith<$Res> {
  factory $PesertaDidikGuruModelCopyWith(
    PesertaDidikGuruModel value,
    $Res Function(PesertaDidikGuruModel) then,
  ) = _$PesertaDidikGuruModelCopyWithImpl<$Res, PesertaDidikGuruModel>;
  @useResult
  $Res call({
    int id,
    @JsonKey(name: 'nama_lengkap') String namaLengkap,
    String nisn,
    @JsonKey(name: 'kelas_id') int kelasId,
  });
}

/// @nodoc
class _$PesertaDidikGuruModelCopyWithImpl<
  $Res,
  $Val extends PesertaDidikGuruModel
>
    implements $PesertaDidikGuruModelCopyWith<$Res> {
  _$PesertaDidikGuruModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PesertaDidikGuruModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? namaLengkap = null,
    Object? nisn = null,
    Object? kelasId = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            namaLengkap: null == namaLengkap
                ? _value.namaLengkap
                : namaLengkap // ignore: cast_nullable_to_non_nullable
                      as String,
            nisn: null == nisn
                ? _value.nisn
                : nisn // ignore: cast_nullable_to_non_nullable
                      as String,
            kelasId: null == kelasId
                ? _value.kelasId
                : kelasId // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PesertaDidikGuruModelImplCopyWith<$Res>
    implements $PesertaDidikGuruModelCopyWith<$Res> {
  factory _$$PesertaDidikGuruModelImplCopyWith(
    _$PesertaDidikGuruModelImpl value,
    $Res Function(_$PesertaDidikGuruModelImpl) then,
  ) = __$$PesertaDidikGuruModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    @JsonKey(name: 'nama_lengkap') String namaLengkap,
    String nisn,
    @JsonKey(name: 'kelas_id') int kelasId,
  });
}

/// @nodoc
class __$$PesertaDidikGuruModelImplCopyWithImpl<$Res>
    extends
        _$PesertaDidikGuruModelCopyWithImpl<$Res, _$PesertaDidikGuruModelImpl>
    implements _$$PesertaDidikGuruModelImplCopyWith<$Res> {
  __$$PesertaDidikGuruModelImplCopyWithImpl(
    _$PesertaDidikGuruModelImpl _value,
    $Res Function(_$PesertaDidikGuruModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PesertaDidikGuruModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? namaLengkap = null,
    Object? nisn = null,
    Object? kelasId = null,
  }) {
    return _then(
      _$PesertaDidikGuruModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        namaLengkap: null == namaLengkap
            ? _value.namaLengkap
            : namaLengkap // ignore: cast_nullable_to_non_nullable
                  as String,
        nisn: null == nisn
            ? _value.nisn
            : nisn // ignore: cast_nullable_to_non_nullable
                  as String,
        kelasId: null == kelasId
            ? _value.kelasId
            : kelasId // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PesertaDidikGuruModelImpl implements _PesertaDidikGuruModel {
  const _$PesertaDidikGuruModelImpl({
    required this.id,
    @JsonKey(name: 'nama_lengkap') required this.namaLengkap,
    required this.nisn,
    @JsonKey(name: 'kelas_id') required this.kelasId,
  });

  factory _$PesertaDidikGuruModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PesertaDidikGuruModelImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'nama_lengkap')
  final String namaLengkap;
  @override
  final String nisn;
  @override
  @JsonKey(name: 'kelas_id')
  final int kelasId;

  @override
  String toString() {
    return 'PesertaDidikGuruModel(id: $id, namaLengkap: $namaLengkap, nisn: $nisn, kelasId: $kelasId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PesertaDidikGuruModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.namaLengkap, namaLengkap) ||
                other.namaLengkap == namaLengkap) &&
            (identical(other.nisn, nisn) || other.nisn == nisn) &&
            (identical(other.kelasId, kelasId) || other.kelasId == kelasId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, namaLengkap, nisn, kelasId);

  /// Create a copy of PesertaDidikGuruModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PesertaDidikGuruModelImplCopyWith<_$PesertaDidikGuruModelImpl>
  get copyWith =>
      __$$PesertaDidikGuruModelImplCopyWithImpl<_$PesertaDidikGuruModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PesertaDidikGuruModelImplToJson(this);
  }
}

abstract class _PesertaDidikGuruModel implements PesertaDidikGuruModel {
  const factory _PesertaDidikGuruModel({
    required final int id,
    @JsonKey(name: 'nama_lengkap') required final String namaLengkap,
    required final String nisn,
    @JsonKey(name: 'kelas_id') required final int kelasId,
  }) = _$PesertaDidikGuruModelImpl;

  factory _PesertaDidikGuruModel.fromJson(Map<String, dynamic> json) =
      _$PesertaDidikGuruModelImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'nama_lengkap')
  String get namaLengkap;
  @override
  String get nisn;
  @override
  @JsonKey(name: 'kelas_id')
  int get kelasId;

  /// Create a copy of PesertaDidikGuruModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PesertaDidikGuruModelImplCopyWith<_$PesertaDidikGuruModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}
