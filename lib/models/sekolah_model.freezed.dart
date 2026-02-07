// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sekolah_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SekolahModel {

 int get id; String get nama; String get alamat; String get email; String get semester;@JsonKey(name: 'tahun_ajaran') String get tahunAjaran;
/// Create a copy of SekolahModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SekolahModelCopyWith<SekolahModel> get copyWith => _$SekolahModelCopyWithImpl<SekolahModel>(this as SekolahModel, _$identity);

  /// Serializes this SekolahModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SekolahModel&&(identical(other.id, id) || other.id == id)&&(identical(other.nama, nama) || other.nama == nama)&&(identical(other.alamat, alamat) || other.alamat == alamat)&&(identical(other.email, email) || other.email == email)&&(identical(other.semester, semester) || other.semester == semester)&&(identical(other.tahunAjaran, tahunAjaran) || other.tahunAjaran == tahunAjaran));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,nama,alamat,email,semester,tahunAjaran);

@override
String toString() {
  return 'SekolahModel(id: $id, nama: $nama, alamat: $alamat, email: $email, semester: $semester, tahunAjaran: $tahunAjaran)';
}


}

/// @nodoc
abstract mixin class $SekolahModelCopyWith<$Res>  {
  factory $SekolahModelCopyWith(SekolahModel value, $Res Function(SekolahModel) _then) = _$SekolahModelCopyWithImpl;
@useResult
$Res call({
 int id, String nama, String alamat, String email, String semester,@JsonKey(name: 'tahun_ajaran') String tahunAjaran
});




}
/// @nodoc
class _$SekolahModelCopyWithImpl<$Res>
    implements $SekolahModelCopyWith<$Res> {
  _$SekolahModelCopyWithImpl(this._self, this._then);

  final SekolahModel _self;
  final $Res Function(SekolahModel) _then;

/// Create a copy of SekolahModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? nama = null,Object? alamat = null,Object? email = null,Object? semester = null,Object? tahunAjaran = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,nama: null == nama ? _self.nama : nama // ignore: cast_nullable_to_non_nullable
as String,alamat: null == alamat ? _self.alamat : alamat // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,semester: null == semester ? _self.semester : semester // ignore: cast_nullable_to_non_nullable
as String,tahunAjaran: null == tahunAjaran ? _self.tahunAjaran : tahunAjaran // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SekolahModel].
extension SekolahModelPatterns on SekolahModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SekolahModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SekolahModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SekolahModel value)  $default,){
final _that = this;
switch (_that) {
case _SekolahModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SekolahModel value)?  $default,){
final _that = this;
switch (_that) {
case _SekolahModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String nama,  String alamat,  String email,  String semester, @JsonKey(name: 'tahun_ajaran')  String tahunAjaran)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SekolahModel() when $default != null:
return $default(_that.id,_that.nama,_that.alamat,_that.email,_that.semester,_that.tahunAjaran);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String nama,  String alamat,  String email,  String semester, @JsonKey(name: 'tahun_ajaran')  String tahunAjaran)  $default,) {final _that = this;
switch (_that) {
case _SekolahModel():
return $default(_that.id,_that.nama,_that.alamat,_that.email,_that.semester,_that.tahunAjaran);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String nama,  String alamat,  String email,  String semester, @JsonKey(name: 'tahun_ajaran')  String tahunAjaran)?  $default,) {final _that = this;
switch (_that) {
case _SekolahModel() when $default != null:
return $default(_that.id,_that.nama,_that.alamat,_that.email,_that.semester,_that.tahunAjaran);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SekolahModel implements SekolahModel {
  const _SekolahModel({required this.id, required this.nama, required this.alamat, required this.email, required this.semester, @JsonKey(name: 'tahun_ajaran') required this.tahunAjaran});
  factory _SekolahModel.fromJson(Map<String, dynamic> json) => _$SekolahModelFromJson(json);

@override final  int id;
@override final  String nama;
@override final  String alamat;
@override final  String email;
@override final  String semester;
@override@JsonKey(name: 'tahun_ajaran') final  String tahunAjaran;

/// Create a copy of SekolahModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SekolahModelCopyWith<_SekolahModel> get copyWith => __$SekolahModelCopyWithImpl<_SekolahModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SekolahModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SekolahModel&&(identical(other.id, id) || other.id == id)&&(identical(other.nama, nama) || other.nama == nama)&&(identical(other.alamat, alamat) || other.alamat == alamat)&&(identical(other.email, email) || other.email == email)&&(identical(other.semester, semester) || other.semester == semester)&&(identical(other.tahunAjaran, tahunAjaran) || other.tahunAjaran == tahunAjaran));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,nama,alamat,email,semester,tahunAjaran);

@override
String toString() {
  return 'SekolahModel(id: $id, nama: $nama, alamat: $alamat, email: $email, semester: $semester, tahunAjaran: $tahunAjaran)';
}


}

/// @nodoc
abstract mixin class _$SekolahModelCopyWith<$Res> implements $SekolahModelCopyWith<$Res> {
  factory _$SekolahModelCopyWith(_SekolahModel value, $Res Function(_SekolahModel) _then) = __$SekolahModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String nama, String alamat, String email, String semester,@JsonKey(name: 'tahun_ajaran') String tahunAjaran
});




}
/// @nodoc
class __$SekolahModelCopyWithImpl<$Res>
    implements _$SekolahModelCopyWith<$Res> {
  __$SekolahModelCopyWithImpl(this._self, this._then);

  final _SekolahModel _self;
  final $Res Function(_SekolahModel) _then;

/// Create a copy of SekolahModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? nama = null,Object? alamat = null,Object? email = null,Object? semester = null,Object? tahunAjaran = null,}) {
  return _then(_SekolahModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,nama: null == nama ? _self.nama : nama // ignore: cast_nullable_to_non_nullable
as String,alamat: null == alamat ? _self.alamat : alamat // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,semester: null == semester ? _self.semester : semester // ignore: cast_nullable_to_non_nullable
as String,tahunAjaran: null == tahunAjaran ? _self.tahunAjaran : tahunAjaran // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
