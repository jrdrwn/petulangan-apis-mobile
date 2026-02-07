// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'peserta_didik_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PesertaDidikModel {

 int get id;@JsonKey(name: 'nama_lengkap') String get namaLengkap; String get nisn;@JsonKey(name: 'kelas_id') int get kelasId;
/// Create a copy of PesertaDidikModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PesertaDidikModelCopyWith<PesertaDidikModel> get copyWith => _$PesertaDidikModelCopyWithImpl<PesertaDidikModel>(this as PesertaDidikModel, _$identity);

  /// Serializes this PesertaDidikModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PesertaDidikModel&&(identical(other.id, id) || other.id == id)&&(identical(other.namaLengkap, namaLengkap) || other.namaLengkap == namaLengkap)&&(identical(other.nisn, nisn) || other.nisn == nisn)&&(identical(other.kelasId, kelasId) || other.kelasId == kelasId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,namaLengkap,nisn,kelasId);

@override
String toString() {
  return 'PesertaDidikModel(id: $id, namaLengkap: $namaLengkap, nisn: $nisn, kelasId: $kelasId)';
}


}

/// @nodoc
abstract mixin class $PesertaDidikModelCopyWith<$Res>  {
  factory $PesertaDidikModelCopyWith(PesertaDidikModel value, $Res Function(PesertaDidikModel) _then) = _$PesertaDidikModelCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'nama_lengkap') String namaLengkap, String nisn,@JsonKey(name: 'kelas_id') int kelasId
});




}
/// @nodoc
class _$PesertaDidikModelCopyWithImpl<$Res>
    implements $PesertaDidikModelCopyWith<$Res> {
  _$PesertaDidikModelCopyWithImpl(this._self, this._then);

  final PesertaDidikModel _self;
  final $Res Function(PesertaDidikModel) _then;

/// Create a copy of PesertaDidikModel
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


/// Adds pattern-matching-related methods to [PesertaDidikModel].
extension PesertaDidikModelPatterns on PesertaDidikModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PesertaDidikModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PesertaDidikModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PesertaDidikModel value)  $default,){
final _that = this;
switch (_that) {
case _PesertaDidikModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PesertaDidikModel value)?  $default,){
final _that = this;
switch (_that) {
case _PesertaDidikModel() when $default != null:
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
case _PesertaDidikModel() when $default != null:
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
case _PesertaDidikModel():
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
case _PesertaDidikModel() when $default != null:
return $default(_that.id,_that.namaLengkap,_that.nisn,_that.kelasId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PesertaDidikModel implements PesertaDidikModel {
  const _PesertaDidikModel({required this.id, @JsonKey(name: 'nama_lengkap') required this.namaLengkap, required this.nisn, @JsonKey(name: 'kelas_id') required this.kelasId});
  factory _PesertaDidikModel.fromJson(Map<String, dynamic> json) => _$PesertaDidikModelFromJson(json);

@override final  int id;
@override@JsonKey(name: 'nama_lengkap') final  String namaLengkap;
@override final  String nisn;
@override@JsonKey(name: 'kelas_id') final  int kelasId;

/// Create a copy of PesertaDidikModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PesertaDidikModelCopyWith<_PesertaDidikModel> get copyWith => __$PesertaDidikModelCopyWithImpl<_PesertaDidikModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PesertaDidikModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PesertaDidikModel&&(identical(other.id, id) || other.id == id)&&(identical(other.namaLengkap, namaLengkap) || other.namaLengkap == namaLengkap)&&(identical(other.nisn, nisn) || other.nisn == nisn)&&(identical(other.kelasId, kelasId) || other.kelasId == kelasId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,namaLengkap,nisn,kelasId);

@override
String toString() {
  return 'PesertaDidikModel(id: $id, namaLengkap: $namaLengkap, nisn: $nisn, kelasId: $kelasId)';
}


}

/// @nodoc
abstract mixin class _$PesertaDidikModelCopyWith<$Res> implements $PesertaDidikModelCopyWith<$Res> {
  factory _$PesertaDidikModelCopyWith(_PesertaDidikModel value, $Res Function(_PesertaDidikModel) _then) = __$PesertaDidikModelCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'nama_lengkap') String namaLengkap, String nisn,@JsonKey(name: 'kelas_id') int kelasId
});




}
/// @nodoc
class __$PesertaDidikModelCopyWithImpl<$Res>
    implements _$PesertaDidikModelCopyWith<$Res> {
  __$PesertaDidikModelCopyWithImpl(this._self, this._then);

  final _PesertaDidikModel _self;
  final $Res Function(_PesertaDidikModel) _then;

/// Create a copy of PesertaDidikModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? namaLengkap = null,Object? nisn = null,Object? kelasId = null,}) {
  return _then(_PesertaDidikModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,namaLengkap: null == namaLengkap ? _self.namaLengkap : namaLengkap // ignore: cast_nullable_to_non_nullable
as String,nisn: null == nisn ? _self.nisn : nisn // ignore: cast_nullable_to_non_nullable
as String,kelasId: null == kelasId ? _self.kelasId : kelasId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$RegisterPesertaDidikRequest {

 String get nama; String get nisn;@JsonKey(name: 'kelas_id') int get kelasId;
/// Create a copy of RegisterPesertaDidikRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegisterPesertaDidikRequestCopyWith<RegisterPesertaDidikRequest> get copyWith => _$RegisterPesertaDidikRequestCopyWithImpl<RegisterPesertaDidikRequest>(this as RegisterPesertaDidikRequest, _$identity);

  /// Serializes this RegisterPesertaDidikRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterPesertaDidikRequest&&(identical(other.nama, nama) || other.nama == nama)&&(identical(other.nisn, nisn) || other.nisn == nisn)&&(identical(other.kelasId, kelasId) || other.kelasId == kelasId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,nama,nisn,kelasId);

@override
String toString() {
  return 'RegisterPesertaDidikRequest(nama: $nama, nisn: $nisn, kelasId: $kelasId)';
}


}

/// @nodoc
abstract mixin class $RegisterPesertaDidikRequestCopyWith<$Res>  {
  factory $RegisterPesertaDidikRequestCopyWith(RegisterPesertaDidikRequest value, $Res Function(RegisterPesertaDidikRequest) _then) = _$RegisterPesertaDidikRequestCopyWithImpl;
@useResult
$Res call({
 String nama, String nisn,@JsonKey(name: 'kelas_id') int kelasId
});




}
/// @nodoc
class _$RegisterPesertaDidikRequestCopyWithImpl<$Res>
    implements $RegisterPesertaDidikRequestCopyWith<$Res> {
  _$RegisterPesertaDidikRequestCopyWithImpl(this._self, this._then);

  final RegisterPesertaDidikRequest _self;
  final $Res Function(RegisterPesertaDidikRequest) _then;

/// Create a copy of RegisterPesertaDidikRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? nama = null,Object? nisn = null,Object? kelasId = null,}) {
  return _then(_self.copyWith(
nama: null == nama ? _self.nama : nama // ignore: cast_nullable_to_non_nullable
as String,nisn: null == nisn ? _self.nisn : nisn // ignore: cast_nullable_to_non_nullable
as String,kelasId: null == kelasId ? _self.kelasId : kelasId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [RegisterPesertaDidikRequest].
extension RegisterPesertaDidikRequestPatterns on RegisterPesertaDidikRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RegisterPesertaDidikRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RegisterPesertaDidikRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RegisterPesertaDidikRequest value)  $default,){
final _that = this;
switch (_that) {
case _RegisterPesertaDidikRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RegisterPesertaDidikRequest value)?  $default,){
final _that = this;
switch (_that) {
case _RegisterPesertaDidikRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String nama,  String nisn, @JsonKey(name: 'kelas_id')  int kelasId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RegisterPesertaDidikRequest() when $default != null:
return $default(_that.nama,_that.nisn,_that.kelasId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String nama,  String nisn, @JsonKey(name: 'kelas_id')  int kelasId)  $default,) {final _that = this;
switch (_that) {
case _RegisterPesertaDidikRequest():
return $default(_that.nama,_that.nisn,_that.kelasId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String nama,  String nisn, @JsonKey(name: 'kelas_id')  int kelasId)?  $default,) {final _that = this;
switch (_that) {
case _RegisterPesertaDidikRequest() when $default != null:
return $default(_that.nama,_that.nisn,_that.kelasId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RegisterPesertaDidikRequest implements RegisterPesertaDidikRequest {
  const _RegisterPesertaDidikRequest({required this.nama, required this.nisn, @JsonKey(name: 'kelas_id') required this.kelasId});
  factory _RegisterPesertaDidikRequest.fromJson(Map<String, dynamic> json) => _$RegisterPesertaDidikRequestFromJson(json);

@override final  String nama;
@override final  String nisn;
@override@JsonKey(name: 'kelas_id') final  int kelasId;

/// Create a copy of RegisterPesertaDidikRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegisterPesertaDidikRequestCopyWith<_RegisterPesertaDidikRequest> get copyWith => __$RegisterPesertaDidikRequestCopyWithImpl<_RegisterPesertaDidikRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RegisterPesertaDidikRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegisterPesertaDidikRequest&&(identical(other.nama, nama) || other.nama == nama)&&(identical(other.nisn, nisn) || other.nisn == nisn)&&(identical(other.kelasId, kelasId) || other.kelasId == kelasId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,nama,nisn,kelasId);

@override
String toString() {
  return 'RegisterPesertaDidikRequest(nama: $nama, nisn: $nisn, kelasId: $kelasId)';
}


}

/// @nodoc
abstract mixin class _$RegisterPesertaDidikRequestCopyWith<$Res> implements $RegisterPesertaDidikRequestCopyWith<$Res> {
  factory _$RegisterPesertaDidikRequestCopyWith(_RegisterPesertaDidikRequest value, $Res Function(_RegisterPesertaDidikRequest) _then) = __$RegisterPesertaDidikRequestCopyWithImpl;
@override @useResult
$Res call({
 String nama, String nisn,@JsonKey(name: 'kelas_id') int kelasId
});




}
/// @nodoc
class __$RegisterPesertaDidikRequestCopyWithImpl<$Res>
    implements _$RegisterPesertaDidikRequestCopyWith<$Res> {
  __$RegisterPesertaDidikRequestCopyWithImpl(this._self, this._then);

  final _RegisterPesertaDidikRequest _self;
  final $Res Function(_RegisterPesertaDidikRequest) _then;

/// Create a copy of RegisterPesertaDidikRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? nama = null,Object? nisn = null,Object? kelasId = null,}) {
  return _then(_RegisterPesertaDidikRequest(
nama: null == nama ? _self.nama : nama // ignore: cast_nullable_to_non_nullable
as String,nisn: null == nisn ? _self.nisn : nisn // ignore: cast_nullable_to_non_nullable
as String,kelasId: null == kelasId ? _self.kelasId : kelasId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
