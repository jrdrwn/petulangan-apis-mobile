// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kelas_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

KelasModel _$KelasModelFromJson(Map<String, dynamic> json) {
  return _KelasModel.fromJson(json);
}

/// @nodoc
mixin _$KelasModel {
  int get id => throw _privateConstructorUsedError;
  String get nama => throw _privateConstructorUsedError;
  @JsonKey(name: 'sekolah_id')
  int get sekolahId => throw _privateConstructorUsedError;

  /// Serializes this KelasModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of KelasModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $KelasModelCopyWith<KelasModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KelasModelCopyWith<$Res> {
  factory $KelasModelCopyWith(
    KelasModel value,
    $Res Function(KelasModel) then,
  ) = _$KelasModelCopyWithImpl<$Res, KelasModel>;
  @useResult
  $Res call({int id, String nama, @JsonKey(name: 'sekolah_id') int sekolahId});
}

/// @nodoc
class _$KelasModelCopyWithImpl<$Res, $Val extends KelasModel>
    implements $KelasModelCopyWith<$Res> {
  _$KelasModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of KelasModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nama = null,
    Object? sekolahId = null,
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
            sekolahId: null == sekolahId
                ? _value.sekolahId
                : sekolahId // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$KelasModelImplCopyWith<$Res>
    implements $KelasModelCopyWith<$Res> {
  factory _$$KelasModelImplCopyWith(
    _$KelasModelImpl value,
    $Res Function(_$KelasModelImpl) then,
  ) = __$$KelasModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String nama, @JsonKey(name: 'sekolah_id') int sekolahId});
}

/// @nodoc
class __$$KelasModelImplCopyWithImpl<$Res>
    extends _$KelasModelCopyWithImpl<$Res, _$KelasModelImpl>
    implements _$$KelasModelImplCopyWith<$Res> {
  __$$KelasModelImplCopyWithImpl(
    _$KelasModelImpl _value,
    $Res Function(_$KelasModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of KelasModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nama = null,
    Object? sekolahId = null,
  }) {
    return _then(
      _$KelasModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        nama: null == nama
            ? _value.nama
            : nama // ignore: cast_nullable_to_non_nullable
                  as String,
        sekolahId: null == sekolahId
            ? _value.sekolahId
            : sekolahId // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$KelasModelImpl implements _KelasModel {
  const _$KelasModelImpl({
    required this.id,
    required this.nama,
    @JsonKey(name: 'sekolah_id') required this.sekolahId,
  });

  factory _$KelasModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$KelasModelImplFromJson(json);

  @override
  final int id;
  @override
  final String nama;
  @override
  @JsonKey(name: 'sekolah_id')
  final int sekolahId;

  @override
  String toString() {
    return 'KelasModel(id: $id, nama: $nama, sekolahId: $sekolahId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KelasModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nama, nama) || other.nama == nama) &&
            (identical(other.sekolahId, sekolahId) ||
                other.sekolahId == sekolahId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, nama, sekolahId);

  /// Create a copy of KelasModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$KelasModelImplCopyWith<_$KelasModelImpl> get copyWith =>
      __$$KelasModelImplCopyWithImpl<_$KelasModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KelasModelImplToJson(this);
  }
}

abstract class _KelasModel implements KelasModel {
  const factory _KelasModel({
    required final int id,
    required final String nama,
    @JsonKey(name: 'sekolah_id') required final int sekolahId,
  }) = _$KelasModelImpl;

  factory _KelasModel.fromJson(Map<String, dynamic> json) =
      _$KelasModelImpl.fromJson;

  @override
  int get id;
  @override
  String get nama;
  @override
  @JsonKey(name: 'sekolah_id')
  int get sekolahId;

  /// Create a copy of KelasModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$KelasModelImplCopyWith<_$KelasModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
