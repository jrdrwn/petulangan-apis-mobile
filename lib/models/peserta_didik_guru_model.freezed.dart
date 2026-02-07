// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'peserta_didik_guru_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PesertaDidikGuruModel {

 int get id;@JsonKey(name: 'nama_lengkap') String get namaLengkap; String get nisn;@JsonKey(name: 'kelas_id') int get kelasId;
/// Create a copy of PesertaDidikGuruModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PesertaDidikGuruModelCopyWith<PesertaDidikGuruModel> get copyWith => _$PesertaDidikGuruModelCopyWithImpl<PesertaDidikGuruModel>(this as PesertaDidikGuruModel, _$identity);

  /// Serializes this PesertaDidikGuruModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PesertaDidikGuruModel&&(identical(other.id, id) || other.id == id)&&(identical(other.namaLengkap, namaLengkap) || other.namaLengkap == namaLengkap)&&(identical(other.nisn, nisn) || other.nisn == nisn)&&(identical(other.kelasId, kelasId) || other.kelasId == kelasId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,namaLengkap,nisn,kelasId);

@override
String toString() {
  return 'PesertaDidikGuruModel(id: $id, namaLengkap: $namaLengkap, nisn: $nisn, kelasId: $kelasId)';
}


}

/// @nodoc
abstract mixin class $PesertaDidikGuruModelCopyWith<$Res>  {
  factory $PesertaDidikGuruModelCopyWith(PesertaDidikGuruModel value, $Res Function(PesertaDidikGuruModel) _then) = _$PesertaDidikGuruModelCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'nama_lengkap') String namaLengkap, String nisn,@JsonKey(name: 'kelas_id') int kelasId
});




}
/// @nodoc
class _$PesertaDidikGuruModelCopyWithImpl<$Res>
    implements $PesertaDidikGuruModelCopyWith<$Res> {
  _$PesertaDidikGuruModelCopyWithImpl(this._self, this._then);

  final PesertaDidikGuruModel _self;
  final $Res Function(PesertaDidikGuruModel) _then;

/// Create a copy of PesertaDidikGuruModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? namaLengkap = null,Object? nisn = null,Object? kelasId = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,namaLengkap: null == namaLengkap ? _self.namaLengkap : namaLengkap // ignore: cast_nullable_to_non_nullable
as String,nisn: null == nisn ? _self.nisn : nisn // ignore: cast_nullable_to_non_nullable
as String,kelasId: null == kelasId ? _self.kelasId : kelasId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [PesertaDidikGuruModel].
extension PesertaDidikGuruModelPatterns on PesertaDidikGuruModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PesertaDidikGuruModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PesertaDidikGuruModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PesertaDidikGuruModel value)  $default,){
final _that = this;
switch (_that) {
case _PesertaDidikGuruModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PesertaDidikGuruModel value)?  $default,){
final _that = this;
switch (_that) {
case _PesertaDidikGuruModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'nama_lengkap')  String namaLengkap,  String nisn, @JsonKey(name: 'kelas_id')  int kelasId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PesertaDidikGuruModel() when $default != null:
return $default(_that.id,_that.namaLengkap,_that.nisn,_that.kelasId);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'nama_lengkap')  String namaLengkap,  String nisn, @JsonKey(name: 'kelas_id')  int kelasId)  $default,) {final _that = this;
switch (_that) {
case _PesertaDidikGuruModel():
return $default(_that.id,_that.namaLengkap,_that.nisn,_that.kelasId);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'nama_lengkap')  String namaLengkap,  String nisn, @JsonKey(name: 'kelas_id')  int kelasId)?  $default,) {final _that = this;
switch (_that) {
case _PesertaDidikGuruModel() when $default != null:
return $default(_that.id,_that.namaLengkap,_that.nisn,_that.kelasId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PesertaDidikGuruModel implements PesertaDidikGuruModel {
  const _PesertaDidikGuruModel({required this.id, @JsonKey(name: 'nama_lengkap') required this.namaLengkap, required this.nisn, @JsonKey(name: 'kelas_id') required this.kelasId});
  factory _PesertaDidikGuruModel.fromJson(Map<String, dynamic> json) => _$PesertaDidikGuruModelFromJson(json);

@override final  int id;
@override@JsonKey(name: 'nama_lengkap') final  String namaLengkap;
@override final  String nisn;
@override@JsonKey(name: 'kelas_id') final  int kelasId;

/// Create a copy of PesertaDidikGuruModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PesertaDidikGuruModelCopyWith<_PesertaDidikGuruModel> get copyWith => __$PesertaDidikGuruModelCopyWithImpl<_PesertaDidikGuruModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PesertaDidikGuruModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PesertaDidikGuruModel&&(identical(other.id, id) || other.id == id)&&(identical(other.namaLengkap, namaLengkap) || other.namaLengkap == namaLengkap)&&(identical(other.nisn, nisn) || other.nisn == nisn)&&(identical(other.kelasId, kelasId) || other.kelasId == kelasId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,namaLengkap,nisn,kelasId);

@override
String toString() {
  return 'PesertaDidikGuruModel(id: $id, namaLengkap: $namaLengkap, nisn: $nisn, kelasId: $kelasId)';
}


}

/// @nodoc
abstract mixin class _$PesertaDidikGuruModelCopyWith<$Res> implements $PesertaDidikGuruModelCopyWith<$Res> {
  factory _$PesertaDidikGuruModelCopyWith(_PesertaDidikGuruModel value, $Res Function(_PesertaDidikGuruModel) _then) = __$PesertaDidikGuruModelCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'nama_lengkap') String namaLengkap, String nisn,@JsonKey(name: 'kelas_id') int kelasId
});




}
/// @nodoc
class __$PesertaDidikGuruModelCopyWithImpl<$Res>
    implements _$PesertaDidikGuruModelCopyWith<$Res> {
  __$PesertaDidikGuruModelCopyWithImpl(this._self, this._then);

  final _PesertaDidikGuruModel _self;
  final $Res Function(_PesertaDidikGuruModel) _then;

/// Create a copy of PesertaDidikGuruModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? namaLengkap = null,Object? nisn = null,Object? kelasId = null,}) {
  return _then(_PesertaDidikGuruModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,namaLengkap: null == namaLengkap ? _self.namaLengkap : namaLengkap // ignore: cast_nullable_to_non_nullable
as String,nisn: null == nisn ? _self.nisn : nisn // ignore: cast_nullable_to_non_nullable
as String,kelasId: null == kelasId ? _self.kelasId : kelasId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
