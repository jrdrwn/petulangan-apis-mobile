// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'peserta_didik_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PesertaDidikModel _$PesertaDidikModelFromJson(Map<String, dynamic> json) {
  return _PesertaDidikModel.fromJson(json);
}

/// @nodoc
mixin _$PesertaDidikModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'nama_lengkap')
  String get namaLengkap => throw _privateConstructorUsedError;
  String get nisn => throw _privateConstructorUsedError;
  @JsonKey(name: 'kelas_id')
  int get kelasId => throw _privateConstructorUsedError;

  /// Serializes this PesertaDidikModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PesertaDidikModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PesertaDidikModelCopyWith<PesertaDidikModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PesertaDidikModelCopyWith<$Res> {
  factory $PesertaDidikModelCopyWith(
    PesertaDidikModel value,
    $Res Function(PesertaDidikModel) then,
  ) = _$PesertaDidikModelCopyWithImpl<$Res, PesertaDidikModel>;
  @useResult
  $Res call({
    int id,
    @JsonKey(name: 'nama_lengkap') String namaLengkap,
    String nisn,
    @JsonKey(name: 'kelas_id') int kelasId,
  });
}

/// @nodoc
class _$PesertaDidikModelCopyWithImpl<$Res, $Val extends PesertaDidikModel>
    implements $PesertaDidikModelCopyWith<$Res> {
  _$PesertaDidikModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PesertaDidikModel
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
abstract class _$$PesertaDidikModelImplCopyWith<$Res>
    implements $PesertaDidikModelCopyWith<$Res> {
  factory _$$PesertaDidikModelImplCopyWith(
    _$PesertaDidikModelImpl value,
    $Res Function(_$PesertaDidikModelImpl) then,
  ) = __$$PesertaDidikModelImplCopyWithImpl<$Res>;
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
class __$$PesertaDidikModelImplCopyWithImpl<$Res>
    extends _$PesertaDidikModelCopyWithImpl<$Res, _$PesertaDidikModelImpl>
    implements _$$PesertaDidikModelImplCopyWith<$Res> {
  __$$PesertaDidikModelImplCopyWithImpl(
    _$PesertaDidikModelImpl _value,
    $Res Function(_$PesertaDidikModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PesertaDidikModel
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
      _$PesertaDidikModelImpl(
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
class _$PesertaDidikModelImpl implements _PesertaDidikModel {
  const _$PesertaDidikModelImpl({
    required this.id,
    @JsonKey(name: 'nama_lengkap') required this.namaLengkap,
    required this.nisn,
    @JsonKey(name: 'kelas_id') required this.kelasId,
  });

  factory _$PesertaDidikModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PesertaDidikModelImplFromJson(json);

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
    return 'PesertaDidikModel(id: $id, namaLengkap: $namaLengkap, nisn: $nisn, kelasId: $kelasId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PesertaDidikModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.namaLengkap, namaLengkap) ||
                other.namaLengkap == namaLengkap) &&
            (identical(other.nisn, nisn) || other.nisn == nisn) &&
            (identical(other.kelasId, kelasId) || other.kelasId == kelasId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, namaLengkap, nisn, kelasId);

  /// Create a copy of PesertaDidikModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PesertaDidikModelImplCopyWith<_$PesertaDidikModelImpl> get copyWith =>
      __$$PesertaDidikModelImplCopyWithImpl<_$PesertaDidikModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PesertaDidikModelImplToJson(this);
  }
}

abstract class _PesertaDidikModel implements PesertaDidikModel {
  const factory _PesertaDidikModel({
    required final int id,
    @JsonKey(name: 'nama_lengkap') required final String namaLengkap,
    required final String nisn,
    @JsonKey(name: 'kelas_id') required final int kelasId,
  }) = _$PesertaDidikModelImpl;

  factory _PesertaDidikModel.fromJson(Map<String, dynamic> json) =
      _$PesertaDidikModelImpl.fromJson;

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

  /// Create a copy of PesertaDidikModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PesertaDidikModelImplCopyWith<_$PesertaDidikModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RegisterPesertaDidikRequest _$RegisterPesertaDidikRequestFromJson(
  Map<String, dynamic> json,
) {
  return _RegisterPesertaDidikRequest.fromJson(json);
}

/// @nodoc
mixin _$RegisterPesertaDidikRequest {
  String get nama => throw _privateConstructorUsedError;
  String get nisn => throw _privateConstructorUsedError;
  @JsonKey(name: 'kelas_id')
  int get kelasId => throw _privateConstructorUsedError;

  /// Serializes this RegisterPesertaDidikRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RegisterPesertaDidikRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegisterPesertaDidikRequestCopyWith<RegisterPesertaDidikRequest>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterPesertaDidikRequestCopyWith<$Res> {
  factory $RegisterPesertaDidikRequestCopyWith(
    RegisterPesertaDidikRequest value,
    $Res Function(RegisterPesertaDidikRequest) then,
  ) =
      _$RegisterPesertaDidikRequestCopyWithImpl<
        $Res,
        RegisterPesertaDidikRequest
      >;
  @useResult
  $Res call({String nama, String nisn, @JsonKey(name: 'kelas_id') int kelasId});
}

/// @nodoc
class _$RegisterPesertaDidikRequestCopyWithImpl<
  $Res,
  $Val extends RegisterPesertaDidikRequest
>
    implements $RegisterPesertaDidikRequestCopyWith<$Res> {
  _$RegisterPesertaDidikRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegisterPesertaDidikRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nama = null,
    Object? nisn = null,
    Object? kelasId = null,
  }) {
    return _then(
      _value.copyWith(
            nama: null == nama
                ? _value.nama
                : nama // ignore: cast_nullable_to_non_nullable
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
abstract class _$$RegisterPesertaDidikRequestImplCopyWith<$Res>
    implements $RegisterPesertaDidikRequestCopyWith<$Res> {
  factory _$$RegisterPesertaDidikRequestImplCopyWith(
    _$RegisterPesertaDidikRequestImpl value,
    $Res Function(_$RegisterPesertaDidikRequestImpl) then,
  ) = __$$RegisterPesertaDidikRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String nama, String nisn, @JsonKey(name: 'kelas_id') int kelasId});
}

/// @nodoc
class __$$RegisterPesertaDidikRequestImplCopyWithImpl<$Res>
    extends
        _$RegisterPesertaDidikRequestCopyWithImpl<
          $Res,
          _$RegisterPesertaDidikRequestImpl
        >
    implements _$$RegisterPesertaDidikRequestImplCopyWith<$Res> {
  __$$RegisterPesertaDidikRequestImplCopyWithImpl(
    _$RegisterPesertaDidikRequestImpl _value,
    $Res Function(_$RegisterPesertaDidikRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RegisterPesertaDidikRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nama = null,
    Object? nisn = null,
    Object? kelasId = null,
  }) {
    return _then(
      _$RegisterPesertaDidikRequestImpl(
        nama: null == nama
            ? _value.nama
            : nama // ignore: cast_nullable_to_non_nullable
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
class _$RegisterPesertaDidikRequestImpl
    implements _RegisterPesertaDidikRequest {
  const _$RegisterPesertaDidikRequestImpl({
    required this.nama,
    required this.nisn,
    @JsonKey(name: 'kelas_id') required this.kelasId,
  });

  factory _$RegisterPesertaDidikRequestImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$RegisterPesertaDidikRequestImplFromJson(json);

  @override
  final String nama;
  @override
  final String nisn;
  @override
  @JsonKey(name: 'kelas_id')
  final int kelasId;

  @override
  String toString() {
    return 'RegisterPesertaDidikRequest(nama: $nama, nisn: $nisn, kelasId: $kelasId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterPesertaDidikRequestImpl &&
            (identical(other.nama, nama) || other.nama == nama) &&
            (identical(other.nisn, nisn) || other.nisn == nisn) &&
            (identical(other.kelasId, kelasId) || other.kelasId == kelasId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, nama, nisn, kelasId);

  /// Create a copy of RegisterPesertaDidikRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterPesertaDidikRequestImplCopyWith<_$RegisterPesertaDidikRequestImpl>
  get copyWith =>
      __$$RegisterPesertaDidikRequestImplCopyWithImpl<
        _$RegisterPesertaDidikRequestImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegisterPesertaDidikRequestImplToJson(this);
  }
}

abstract class _RegisterPesertaDidikRequest
    implements RegisterPesertaDidikRequest {
  const factory _RegisterPesertaDidikRequest({
    required final String nama,
    required final String nisn,
    @JsonKey(name: 'kelas_id') required final int kelasId,
  }) = _$RegisterPesertaDidikRequestImpl;

  factory _RegisterPesertaDidikRequest.fromJson(Map<String, dynamic> json) =
      _$RegisterPesertaDidikRequestImpl.fromJson;

  @override
  String get nama;
  @override
  String get nisn;
  @override
  @JsonKey(name: 'kelas_id')
  int get kelasId;

  /// Create a copy of RegisterPesertaDidikRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterPesertaDidikRequestImplCopyWith<_$RegisterPesertaDidikRequestImpl>
  get copyWith => throw _privateConstructorUsedError;
}
