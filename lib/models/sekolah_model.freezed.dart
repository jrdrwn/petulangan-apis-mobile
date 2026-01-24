// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sekolah_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SekolahModel _$SekolahModelFromJson(Map<String, dynamic> json) {
  return _SekolahModel.fromJson(json);
}

/// @nodoc
mixin _$SekolahModel {
  int get id => throw _privateConstructorUsedError;
  String get nama => throw _privateConstructorUsedError;
  String get alamat => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get semester => throw _privateConstructorUsedError;
  @JsonKey(name: 'tahun_ajaran')
  String get tahunAjaran => throw _privateConstructorUsedError;

  /// Serializes this SekolahModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SekolahModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SekolahModelCopyWith<SekolahModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SekolahModelCopyWith<$Res> {
  factory $SekolahModelCopyWith(
    SekolahModel value,
    $Res Function(SekolahModel) then,
  ) = _$SekolahModelCopyWithImpl<$Res, SekolahModel>;
  @useResult
  $Res call({
    int id,
    String nama,
    String alamat,
    String email,
    String semester,
    @JsonKey(name: 'tahun_ajaran') String tahunAjaran,
  });
}

/// @nodoc
class _$SekolahModelCopyWithImpl<$Res, $Val extends SekolahModel>
    implements $SekolahModelCopyWith<$Res> {
  _$SekolahModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SekolahModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nama = null,
    Object? alamat = null,
    Object? email = null,
    Object? semester = null,
    Object? tahunAjaran = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            nama: null == nama
                ? _value.nama
                : nama // ignore: cast_nullable_to_non_nullable
                      as String,
            alamat: null == alamat
                ? _value.alamat
                : alamat // ignore: cast_nullable_to_non_nullable
                      as String,
            email: null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                      as String,
            semester: null == semester
                ? _value.semester
                : semester // ignore: cast_nullable_to_non_nullable
                      as String,
            tahunAjaran: null == tahunAjaran
                ? _value.tahunAjaran
                : tahunAjaran // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SekolahModelImplCopyWith<$Res>
    implements $SekolahModelCopyWith<$Res> {
  factory _$$SekolahModelImplCopyWith(
    _$SekolahModelImpl value,
    $Res Function(_$SekolahModelImpl) then,
  ) = __$$SekolahModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String nama,
    String alamat,
    String email,
    String semester,
    @JsonKey(name: 'tahun_ajaran') String tahunAjaran,
  });
}

/// @nodoc
class __$$SekolahModelImplCopyWithImpl<$Res>
    extends _$SekolahModelCopyWithImpl<$Res, _$SekolahModelImpl>
    implements _$$SekolahModelImplCopyWith<$Res> {
  __$$SekolahModelImplCopyWithImpl(
    _$SekolahModelImpl _value,
    $Res Function(_$SekolahModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SekolahModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nama = null,
    Object? alamat = null,
    Object? email = null,
    Object? semester = null,
    Object? tahunAjaran = null,
  }) {
    return _then(
      _$SekolahModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        nama: null == nama
            ? _value.nama
            : nama // ignore: cast_nullable_to_non_nullable
                  as String,
        alamat: null == alamat
            ? _value.alamat
            : alamat // ignore: cast_nullable_to_non_nullable
                  as String,
        email: null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
        semester: null == semester
            ? _value.semester
            : semester // ignore: cast_nullable_to_non_nullable
                  as String,
        tahunAjaran: null == tahunAjaran
            ? _value.tahunAjaran
            : tahunAjaran // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SekolahModelImpl implements _SekolahModel {
  const _$SekolahModelImpl({
    required this.id,
    required this.nama,
    required this.alamat,
    required this.email,
    required this.semester,
    @JsonKey(name: 'tahun_ajaran') required this.tahunAjaran,
  });

  factory _$SekolahModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SekolahModelImplFromJson(json);

  @override
  final int id;
  @override
  final String nama;
  @override
  final String alamat;
  @override
  final String email;
  @override
  final String semester;
  @override
  @JsonKey(name: 'tahun_ajaran')
  final String tahunAjaran;

  @override
  String toString() {
    return 'SekolahModel(id: $id, nama: $nama, alamat: $alamat, email: $email, semester: $semester, tahunAjaran: $tahunAjaran)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SekolahModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nama, nama) || other.nama == nama) &&
            (identical(other.alamat, alamat) || other.alamat == alamat) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.semester, semester) ||
                other.semester == semester) &&
            (identical(other.tahunAjaran, tahunAjaran) ||
                other.tahunAjaran == tahunAjaran));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, nama, alamat, email, semester, tahunAjaran);

  /// Create a copy of SekolahModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SekolahModelImplCopyWith<_$SekolahModelImpl> get copyWith =>
      __$$SekolahModelImplCopyWithImpl<_$SekolahModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SekolahModelImplToJson(this);
  }
}

abstract class _SekolahModel implements SekolahModel {
  const factory _SekolahModel({
    required final int id,
    required final String nama,
    required final String alamat,
    required final String email,
    required final String semester,
    @JsonKey(name: 'tahun_ajaran') required final String tahunAjaran,
  }) = _$SekolahModelImpl;

  factory _SekolahModel.fromJson(Map<String, dynamic> json) =
      _$SekolahModelImpl.fromJson;

  @override
  int get id;
  @override
  String get nama;
  @override
  String get alamat;
  @override
  String get email;
  @override
  String get semester;
  @override
  @JsonKey(name: 'tahun_ajaran')
  String get tahunAjaran;

  /// Create a copy of SekolahModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SekolahModelImplCopyWith<_$SekolahModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
