// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoginRequest {

 String get nisn;
/// Create a copy of LoginRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginRequestCopyWith<LoginRequest> get copyWith => _$LoginRequestCopyWithImpl<LoginRequest>(this as LoginRequest, _$identity);

  /// Serializes this LoginRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginRequest&&(identical(other.nisn, nisn) || other.nisn == nisn));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,nisn);

@override
String toString() {
  return 'LoginRequest(nisn: $nisn)';
}


}

/// @nodoc
abstract mixin class $LoginRequestCopyWith<$Res>  {
  factory $LoginRequestCopyWith(LoginRequest value, $Res Function(LoginRequest) _then) = _$LoginRequestCopyWithImpl;
@useResult
$Res call({
 String nisn
});




}
/// @nodoc
class _$LoginRequestCopyWithImpl<$Res>
    implements $LoginRequestCopyWith<$Res> {
  _$LoginRequestCopyWithImpl(this._self, this._then);

  final LoginRequest _self;
  final $Res Function(LoginRequest) _then;

/// Create a copy of LoginRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? nisn = null,}) {
  return _then(_self.copyWith(
nisn: null == nisn ? _self.nisn : nisn // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [LoginRequest].
extension LoginRequestPatterns on LoginRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoginRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoginRequest value)  $default,){
final _that = this;
switch (_that) {
case _LoginRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoginRequest value)?  $default,){
final _that = this;
switch (_that) {
case _LoginRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String nisn)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginRequest() when $default != null:
return $default(_that.nisn);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String nisn)  $default,) {final _that = this;
switch (_that) {
case _LoginRequest():
return $default(_that.nisn);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String nisn)?  $default,) {final _that = this;
switch (_that) {
case _LoginRequest() when $default != null:
return $default(_that.nisn);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LoginRequest implements LoginRequest {
  const _LoginRequest({required this.nisn});
  factory _LoginRequest.fromJson(Map<String, dynamic> json) => _$LoginRequestFromJson(json);

@override final  String nisn;

/// Create a copy of LoginRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginRequestCopyWith<_LoginRequest> get copyWith => __$LoginRequestCopyWithImpl<_LoginRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LoginRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginRequest&&(identical(other.nisn, nisn) || other.nisn == nisn));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,nisn);

@override
String toString() {
  return 'LoginRequest(nisn: $nisn)';
}


}

/// @nodoc
abstract mixin class _$LoginRequestCopyWith<$Res> implements $LoginRequestCopyWith<$Res> {
  factory _$LoginRequestCopyWith(_LoginRequest value, $Res Function(_LoginRequest) _then) = __$LoginRequestCopyWithImpl;
@override @useResult
$Res call({
 String nisn
});




}
/// @nodoc
class __$LoginRequestCopyWithImpl<$Res>
    implements _$LoginRequestCopyWith<$Res> {
  __$LoginRequestCopyWithImpl(this._self, this._then);

  final _LoginRequest _self;
  final $Res Function(_LoginRequest) _then;

/// Create a copy of LoginRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? nisn = null,}) {
  return _then(_LoginRequest(
nisn: null == nisn ? _self.nisn : nisn // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$LoginResponse {

 String get token;@JsonKey(name: 'peserta_didik') PesertaDidikData get pesertaDidik;
/// Create a copy of LoginResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginResponseCopyWith<LoginResponse> get copyWith => _$LoginResponseCopyWithImpl<LoginResponse>(this as LoginResponse, _$identity);

  /// Serializes this LoginResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginResponse&&(identical(other.token, token) || other.token == token)&&(identical(other.pesertaDidik, pesertaDidik) || other.pesertaDidik == pesertaDidik));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token,pesertaDidik);

@override
String toString() {
  return 'LoginResponse(token: $token, pesertaDidik: $pesertaDidik)';
}


}

/// @nodoc
abstract mixin class $LoginResponseCopyWith<$Res>  {
  factory $LoginResponseCopyWith(LoginResponse value, $Res Function(LoginResponse) _then) = _$LoginResponseCopyWithImpl;
@useResult
$Res call({
 String token,@JsonKey(name: 'peserta_didik') PesertaDidikData pesertaDidik
});


$PesertaDidikDataCopyWith<$Res> get pesertaDidik;

}
/// @nodoc
class _$LoginResponseCopyWithImpl<$Res>
    implements $LoginResponseCopyWith<$Res> {
  _$LoginResponseCopyWithImpl(this._self, this._then);

  final LoginResponse _self;
  final $Res Function(LoginResponse) _then;

/// Create a copy of LoginResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? token = null,Object? pesertaDidik = null,}) {
  return _then(_self.copyWith(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,pesertaDidik: null == pesertaDidik ? _self.pesertaDidik : pesertaDidik // ignore: cast_nullable_to_non_nullable
as PesertaDidikData,
  ));
}
/// Create a copy of LoginResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PesertaDidikDataCopyWith<$Res> get pesertaDidik {
  
  return $PesertaDidikDataCopyWith<$Res>(_self.pesertaDidik, (value) {
    return _then(_self.copyWith(pesertaDidik: value));
  });
}
}


/// Adds pattern-matching-related methods to [LoginResponse].
extension LoginResponsePatterns on LoginResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoginResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoginResponse value)  $default,){
final _that = this;
switch (_that) {
case _LoginResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoginResponse value)?  $default,){
final _that = this;
switch (_that) {
case _LoginResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String token, @JsonKey(name: 'peserta_didik')  PesertaDidikData pesertaDidik)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginResponse() when $default != null:
return $default(_that.token,_that.pesertaDidik);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String token, @JsonKey(name: 'peserta_didik')  PesertaDidikData pesertaDidik)  $default,) {final _that = this;
switch (_that) {
case _LoginResponse():
return $default(_that.token,_that.pesertaDidik);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String token, @JsonKey(name: 'peserta_didik')  PesertaDidikData pesertaDidik)?  $default,) {final _that = this;
switch (_that) {
case _LoginResponse() when $default != null:
return $default(_that.token,_that.pesertaDidik);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LoginResponse implements LoginResponse {
  const _LoginResponse({required this.token, @JsonKey(name: 'peserta_didik') required this.pesertaDidik});
  factory _LoginResponse.fromJson(Map<String, dynamic> json) => _$LoginResponseFromJson(json);

@override final  String token;
@override@JsonKey(name: 'peserta_didik') final  PesertaDidikData pesertaDidik;

/// Create a copy of LoginResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginResponseCopyWith<_LoginResponse> get copyWith => __$LoginResponseCopyWithImpl<_LoginResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LoginResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginResponse&&(identical(other.token, token) || other.token == token)&&(identical(other.pesertaDidik, pesertaDidik) || other.pesertaDidik == pesertaDidik));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token,pesertaDidik);

@override
String toString() {
  return 'LoginResponse(token: $token, pesertaDidik: $pesertaDidik)';
}


}

/// @nodoc
abstract mixin class _$LoginResponseCopyWith<$Res> implements $LoginResponseCopyWith<$Res> {
  factory _$LoginResponseCopyWith(_LoginResponse value, $Res Function(_LoginResponse) _then) = __$LoginResponseCopyWithImpl;
@override @useResult
$Res call({
 String token,@JsonKey(name: 'peserta_didik') PesertaDidikData pesertaDidik
});


@override $PesertaDidikDataCopyWith<$Res> get pesertaDidik;

}
/// @nodoc
class __$LoginResponseCopyWithImpl<$Res>
    implements _$LoginResponseCopyWith<$Res> {
  __$LoginResponseCopyWithImpl(this._self, this._then);

  final _LoginResponse _self;
  final $Res Function(_LoginResponse) _then;

/// Create a copy of LoginResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? token = null,Object? pesertaDidik = null,}) {
  return _then(_LoginResponse(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,pesertaDidik: null == pesertaDidik ? _self.pesertaDidik : pesertaDidik // ignore: cast_nullable_to_non_nullable
as PesertaDidikData,
  ));
}

/// Create a copy of LoginResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PesertaDidikDataCopyWith<$Res> get pesertaDidik {
  
  return $PesertaDidikDataCopyWith<$Res>(_self.pesertaDidik, (value) {
    return _then(_self.copyWith(pesertaDidik: value));
  });
}
}


/// @nodoc
mixin _$PesertaDidikData {

 int get id;@JsonKey(name: 'nama_lengkap') String get namaLengkap; String get nisn;@JsonKey(name: 'kelas_id') int get kelasId;
/// Create a copy of PesertaDidikData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PesertaDidikDataCopyWith<PesertaDidikData> get copyWith => _$PesertaDidikDataCopyWithImpl<PesertaDidikData>(this as PesertaDidikData, _$identity);

  /// Serializes this PesertaDidikData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PesertaDidikData&&(identical(other.id, id) || other.id == id)&&(identical(other.namaLengkap, namaLengkap) || other.namaLengkap == namaLengkap)&&(identical(other.nisn, nisn) || other.nisn == nisn)&&(identical(other.kelasId, kelasId) || other.kelasId == kelasId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,namaLengkap,nisn,kelasId);

@override
String toString() {
  return 'PesertaDidikData(id: $id, namaLengkap: $namaLengkap, nisn: $nisn, kelasId: $kelasId)';
}


}

/// @nodoc
abstract mixin class $PesertaDidikDataCopyWith<$Res>  {
  factory $PesertaDidikDataCopyWith(PesertaDidikData value, $Res Function(PesertaDidikData) _then) = _$PesertaDidikDataCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'nama_lengkap') String namaLengkap, String nisn,@JsonKey(name: 'kelas_id') int kelasId
});




}
/// @nodoc
class _$PesertaDidikDataCopyWithImpl<$Res>
    implements $PesertaDidikDataCopyWith<$Res> {
  _$PesertaDidikDataCopyWithImpl(this._self, this._then);

  final PesertaDidikData _self;
  final $Res Function(PesertaDidikData) _then;

/// Create a copy of PesertaDidikData
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


/// Adds pattern-matching-related methods to [PesertaDidikData].
extension PesertaDidikDataPatterns on PesertaDidikData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PesertaDidikData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PesertaDidikData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PesertaDidikData value)  $default,){
final _that = this;
switch (_that) {
case _PesertaDidikData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PesertaDidikData value)?  $default,){
final _that = this;
switch (_that) {
case _PesertaDidikData() when $default != null:
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
case _PesertaDidikData() when $default != null:
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
case _PesertaDidikData():
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
case _PesertaDidikData() when $default != null:
return $default(_that.id,_that.namaLengkap,_that.nisn,_that.kelasId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PesertaDidikData implements PesertaDidikData {
  const _PesertaDidikData({required this.id, @JsonKey(name: 'nama_lengkap') required this.namaLengkap, required this.nisn, @JsonKey(name: 'kelas_id') required this.kelasId});
  factory _PesertaDidikData.fromJson(Map<String, dynamic> json) => _$PesertaDidikDataFromJson(json);

@override final  int id;
@override@JsonKey(name: 'nama_lengkap') final  String namaLengkap;
@override final  String nisn;
@override@JsonKey(name: 'kelas_id') final  int kelasId;

/// Create a copy of PesertaDidikData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PesertaDidikDataCopyWith<_PesertaDidikData> get copyWith => __$PesertaDidikDataCopyWithImpl<_PesertaDidikData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PesertaDidikDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PesertaDidikData&&(identical(other.id, id) || other.id == id)&&(identical(other.namaLengkap, namaLengkap) || other.namaLengkap == namaLengkap)&&(identical(other.nisn, nisn) || other.nisn == nisn)&&(identical(other.kelasId, kelasId) || other.kelasId == kelasId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,namaLengkap,nisn,kelasId);

@override
String toString() {
  return 'PesertaDidikData(id: $id, namaLengkap: $namaLengkap, nisn: $nisn, kelasId: $kelasId)';
}


}

/// @nodoc
abstract mixin class _$PesertaDidikDataCopyWith<$Res> implements $PesertaDidikDataCopyWith<$Res> {
  factory _$PesertaDidikDataCopyWith(_PesertaDidikData value, $Res Function(_PesertaDidikData) _then) = __$PesertaDidikDataCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'nama_lengkap') String namaLengkap, String nisn,@JsonKey(name: 'kelas_id') int kelasId
});




}
/// @nodoc
class __$PesertaDidikDataCopyWithImpl<$Res>
    implements _$PesertaDidikDataCopyWith<$Res> {
  __$PesertaDidikDataCopyWithImpl(this._self, this._then);

  final _PesertaDidikData _self;
  final $Res Function(_PesertaDidikData) _then;

/// Create a copy of PesertaDidikData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? namaLengkap = null,Object? nisn = null,Object? kelasId = null,}) {
  return _then(_PesertaDidikData(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,namaLengkap: null == namaLengkap ? _self.namaLengkap : namaLengkap // ignore: cast_nullable_to_non_nullable
as String,nisn: null == nisn ? _self.nisn : nisn // ignore: cast_nullable_to_non_nullable
as String,kelasId: null == kelasId ? _self.kelasId : kelasId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$LoginGuruRequest {

 String get nip; String get password;@JsonKey(name: 'sekolah_id') int get sekolahId;
/// Create a copy of LoginGuruRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginGuruRequestCopyWith<LoginGuruRequest> get copyWith => _$LoginGuruRequestCopyWithImpl<LoginGuruRequest>(this as LoginGuruRequest, _$identity);

  /// Serializes this LoginGuruRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginGuruRequest&&(identical(other.nip, nip) || other.nip == nip)&&(identical(other.password, password) || other.password == password)&&(identical(other.sekolahId, sekolahId) || other.sekolahId == sekolahId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,nip,password,sekolahId);

@override
String toString() {
  return 'LoginGuruRequest(nip: $nip, password: $password, sekolahId: $sekolahId)';
}


}

/// @nodoc
abstract mixin class $LoginGuruRequestCopyWith<$Res>  {
  factory $LoginGuruRequestCopyWith(LoginGuruRequest value, $Res Function(LoginGuruRequest) _then) = _$LoginGuruRequestCopyWithImpl;
@useResult
$Res call({
 String nip, String password,@JsonKey(name: 'sekolah_id') int sekolahId
});




}
/// @nodoc
class _$LoginGuruRequestCopyWithImpl<$Res>
    implements $LoginGuruRequestCopyWith<$Res> {
  _$LoginGuruRequestCopyWithImpl(this._self, this._then);

  final LoginGuruRequest _self;
  final $Res Function(LoginGuruRequest) _then;

/// Create a copy of LoginGuruRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? nip = null,Object? password = null,Object? sekolahId = null,}) {
  return _then(_self.copyWith(
nip: null == nip ? _self.nip : nip // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,sekolahId: null == sekolahId ? _self.sekolahId : sekolahId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [LoginGuruRequest].
extension LoginGuruRequestPatterns on LoginGuruRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoginGuruRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginGuruRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoginGuruRequest value)  $default,){
final _that = this;
switch (_that) {
case _LoginGuruRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoginGuruRequest value)?  $default,){
final _that = this;
switch (_that) {
case _LoginGuruRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String nip,  String password, @JsonKey(name: 'sekolah_id')  int sekolahId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginGuruRequest() when $default != null:
return $default(_that.nip,_that.password,_that.sekolahId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String nip,  String password, @JsonKey(name: 'sekolah_id')  int sekolahId)  $default,) {final _that = this;
switch (_that) {
case _LoginGuruRequest():
return $default(_that.nip,_that.password,_that.sekolahId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String nip,  String password, @JsonKey(name: 'sekolah_id')  int sekolahId)?  $default,) {final _that = this;
switch (_that) {
case _LoginGuruRequest() when $default != null:
return $default(_that.nip,_that.password,_that.sekolahId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LoginGuruRequest implements LoginGuruRequest {
  const _LoginGuruRequest({required this.nip, required this.password, @JsonKey(name: 'sekolah_id') required this.sekolahId});
  factory _LoginGuruRequest.fromJson(Map<String, dynamic> json) => _$LoginGuruRequestFromJson(json);

@override final  String nip;
@override final  String password;
@override@JsonKey(name: 'sekolah_id') final  int sekolahId;

/// Create a copy of LoginGuruRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginGuruRequestCopyWith<_LoginGuruRequest> get copyWith => __$LoginGuruRequestCopyWithImpl<_LoginGuruRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LoginGuruRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginGuruRequest&&(identical(other.nip, nip) || other.nip == nip)&&(identical(other.password, password) || other.password == password)&&(identical(other.sekolahId, sekolahId) || other.sekolahId == sekolahId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,nip,password,sekolahId);

@override
String toString() {
  return 'LoginGuruRequest(nip: $nip, password: $password, sekolahId: $sekolahId)';
}


}

/// @nodoc
abstract mixin class _$LoginGuruRequestCopyWith<$Res> implements $LoginGuruRequestCopyWith<$Res> {
  factory _$LoginGuruRequestCopyWith(_LoginGuruRequest value, $Res Function(_LoginGuruRequest) _then) = __$LoginGuruRequestCopyWithImpl;
@override @useResult
$Res call({
 String nip, String password,@JsonKey(name: 'sekolah_id') int sekolahId
});




}
/// @nodoc
class __$LoginGuruRequestCopyWithImpl<$Res>
    implements _$LoginGuruRequestCopyWith<$Res> {
  __$LoginGuruRequestCopyWithImpl(this._self, this._then);

  final _LoginGuruRequest _self;
  final $Res Function(_LoginGuruRequest) _then;

/// Create a copy of LoginGuruRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? nip = null,Object? password = null,Object? sekolahId = null,}) {
  return _then(_LoginGuruRequest(
nip: null == nip ? _self.nip : nip // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,sekolahId: null == sekolahId ? _self.sekolahId : sekolahId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$LoginGuruResponse {

 String get token; GuruData get guru;
/// Create a copy of LoginGuruResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginGuruResponseCopyWith<LoginGuruResponse> get copyWith => _$LoginGuruResponseCopyWithImpl<LoginGuruResponse>(this as LoginGuruResponse, _$identity);

  /// Serializes this LoginGuruResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginGuruResponse&&(identical(other.token, token) || other.token == token)&&(identical(other.guru, guru) || other.guru == guru));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token,guru);

@override
String toString() {
  return 'LoginGuruResponse(token: $token, guru: $guru)';
}


}

/// @nodoc
abstract mixin class $LoginGuruResponseCopyWith<$Res>  {
  factory $LoginGuruResponseCopyWith(LoginGuruResponse value, $Res Function(LoginGuruResponse) _then) = _$LoginGuruResponseCopyWithImpl;
@useResult
$Res call({
 String token, GuruData guru
});


$GuruDataCopyWith<$Res> get guru;

}
/// @nodoc
class _$LoginGuruResponseCopyWithImpl<$Res>
    implements $LoginGuruResponseCopyWith<$Res> {
  _$LoginGuruResponseCopyWithImpl(this._self, this._then);

  final LoginGuruResponse _self;
  final $Res Function(LoginGuruResponse) _then;

/// Create a copy of LoginGuruResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? token = null,Object? guru = null,}) {
  return _then(_self.copyWith(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,guru: null == guru ? _self.guru : guru // ignore: cast_nullable_to_non_nullable
as GuruData,
  ));
}
/// Create a copy of LoginGuruResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GuruDataCopyWith<$Res> get guru {
  
  return $GuruDataCopyWith<$Res>(_self.guru, (value) {
    return _then(_self.copyWith(guru: value));
  });
}
}


/// Adds pattern-matching-related methods to [LoginGuruResponse].
extension LoginGuruResponsePatterns on LoginGuruResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoginGuruResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginGuruResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoginGuruResponse value)  $default,){
final _that = this;
switch (_that) {
case _LoginGuruResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoginGuruResponse value)?  $default,){
final _that = this;
switch (_that) {
case _LoginGuruResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String token,  GuruData guru)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginGuruResponse() when $default != null:
return $default(_that.token,_that.guru);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String token,  GuruData guru)  $default,) {final _that = this;
switch (_that) {
case _LoginGuruResponse():
return $default(_that.token,_that.guru);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String token,  GuruData guru)?  $default,) {final _that = this;
switch (_that) {
case _LoginGuruResponse() when $default != null:
return $default(_that.token,_that.guru);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LoginGuruResponse implements LoginGuruResponse {
  const _LoginGuruResponse({required this.token, required this.guru});
  factory _LoginGuruResponse.fromJson(Map<String, dynamic> json) => _$LoginGuruResponseFromJson(json);

@override final  String token;
@override final  GuruData guru;

/// Create a copy of LoginGuruResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginGuruResponseCopyWith<_LoginGuruResponse> get copyWith => __$LoginGuruResponseCopyWithImpl<_LoginGuruResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LoginGuruResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginGuruResponse&&(identical(other.token, token) || other.token == token)&&(identical(other.guru, guru) || other.guru == guru));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token,guru);

@override
String toString() {
  return 'LoginGuruResponse(token: $token, guru: $guru)';
}


}

/// @nodoc
abstract mixin class _$LoginGuruResponseCopyWith<$Res> implements $LoginGuruResponseCopyWith<$Res> {
  factory _$LoginGuruResponseCopyWith(_LoginGuruResponse value, $Res Function(_LoginGuruResponse) _then) = __$LoginGuruResponseCopyWithImpl;
@override @useResult
$Res call({
 String token, GuruData guru
});


@override $GuruDataCopyWith<$Res> get guru;

}
/// @nodoc
class __$LoginGuruResponseCopyWithImpl<$Res>
    implements _$LoginGuruResponseCopyWith<$Res> {
  __$LoginGuruResponseCopyWithImpl(this._self, this._then);

  final _LoginGuruResponse _self;
  final $Res Function(_LoginGuruResponse) _then;

/// Create a copy of LoginGuruResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? token = null,Object? guru = null,}) {
  return _then(_LoginGuruResponse(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,guru: null == guru ? _self.guru : guru // ignore: cast_nullable_to_non_nullable
as GuruData,
  ));
}

/// Create a copy of LoginGuruResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GuruDataCopyWith<$Res> get guru {
  
  return $GuruDataCopyWith<$Res>(_self.guru, (value) {
    return _then(_self.copyWith(guru: value));
  });
}
}


/// @nodoc
mixin _$GuruData {

 int get id;@JsonKey(name: 'nama_lengkap') String get namaLengkap; String? get email; String get nip; String? get password;@JsonKey(name: 'no_telepon') String? get noTelepon;@JsonKey(name: 'sekolah_id') int get sekolahId;
/// Create a copy of GuruData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GuruDataCopyWith<GuruData> get copyWith => _$GuruDataCopyWithImpl<GuruData>(this as GuruData, _$identity);

  /// Serializes this GuruData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GuruData&&(identical(other.id, id) || other.id == id)&&(identical(other.namaLengkap, namaLengkap) || other.namaLengkap == namaLengkap)&&(identical(other.email, email) || other.email == email)&&(identical(other.nip, nip) || other.nip == nip)&&(identical(other.password, password) || other.password == password)&&(identical(other.noTelepon, noTelepon) || other.noTelepon == noTelepon)&&(identical(other.sekolahId, sekolahId) || other.sekolahId == sekolahId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,namaLengkap,email,nip,password,noTelepon,sekolahId);

@override
String toString() {
  return 'GuruData(id: $id, namaLengkap: $namaLengkap, email: $email, nip: $nip, password: $password, noTelepon: $noTelepon, sekolahId: $sekolahId)';
}


}

/// @nodoc
abstract mixin class $GuruDataCopyWith<$Res>  {
  factory $GuruDataCopyWith(GuruData value, $Res Function(GuruData) _then) = _$GuruDataCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'nama_lengkap') String namaLengkap, String? email, String nip, String? password,@JsonKey(name: 'no_telepon') String? noTelepon,@JsonKey(name: 'sekolah_id') int sekolahId
});




}
/// @nodoc
class _$GuruDataCopyWithImpl<$Res>
    implements $GuruDataCopyWith<$Res> {
  _$GuruDataCopyWithImpl(this._self, this._then);

  final GuruData _self;
  final $Res Function(GuruData) _then;

/// Create a copy of GuruData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? namaLengkap = null,Object? email = freezed,Object? nip = null,Object? password = freezed,Object? noTelepon = freezed,Object? sekolahId = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,namaLengkap: null == namaLengkap ? _self.namaLengkap : namaLengkap // ignore: cast_nullable_to_non_nullable
as String,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,nip: null == nip ? _self.nip : nip // ignore: cast_nullable_to_non_nullable
as String,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,noTelepon: freezed == noTelepon ? _self.noTelepon : noTelepon // ignore: cast_nullable_to_non_nullable
as String?,sekolahId: null == sekolahId ? _self.sekolahId : sekolahId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [GuruData].
extension GuruDataPatterns on GuruData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GuruData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GuruData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GuruData value)  $default,){
final _that = this;
switch (_that) {
case _GuruData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GuruData value)?  $default,){
final _that = this;
switch (_that) {
case _GuruData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'nama_lengkap')  String namaLengkap,  String? email,  String nip,  String? password, @JsonKey(name: 'no_telepon')  String? noTelepon, @JsonKey(name: 'sekolah_id')  int sekolahId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GuruData() when $default != null:
return $default(_that.id,_that.namaLengkap,_that.email,_that.nip,_that.password,_that.noTelepon,_that.sekolahId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'nama_lengkap')  String namaLengkap,  String? email,  String nip,  String? password, @JsonKey(name: 'no_telepon')  String? noTelepon, @JsonKey(name: 'sekolah_id')  int sekolahId)  $default,) {final _that = this;
switch (_that) {
case _GuruData():
return $default(_that.id,_that.namaLengkap,_that.email,_that.nip,_that.password,_that.noTelepon,_that.sekolahId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'nama_lengkap')  String namaLengkap,  String? email,  String nip,  String? password, @JsonKey(name: 'no_telepon')  String? noTelepon, @JsonKey(name: 'sekolah_id')  int sekolahId)?  $default,) {final _that = this;
switch (_that) {
case _GuruData() when $default != null:
return $default(_that.id,_that.namaLengkap,_that.email,_that.nip,_that.password,_that.noTelepon,_that.sekolahId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GuruData implements GuruData {
  const _GuruData({required this.id, @JsonKey(name: 'nama_lengkap') required this.namaLengkap, this.email, required this.nip, this.password, @JsonKey(name: 'no_telepon') this.noTelepon, @JsonKey(name: 'sekolah_id') required this.sekolahId});
  factory _GuruData.fromJson(Map<String, dynamic> json) => _$GuruDataFromJson(json);

@override final  int id;
@override@JsonKey(name: 'nama_lengkap') final  String namaLengkap;
@override final  String? email;
@override final  String nip;
@override final  String? password;
@override@JsonKey(name: 'no_telepon') final  String? noTelepon;
@override@JsonKey(name: 'sekolah_id') final  int sekolahId;

/// Create a copy of GuruData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GuruDataCopyWith<_GuruData> get copyWith => __$GuruDataCopyWithImpl<_GuruData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GuruDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GuruData&&(identical(other.id, id) || other.id == id)&&(identical(other.namaLengkap, namaLengkap) || other.namaLengkap == namaLengkap)&&(identical(other.email, email) || other.email == email)&&(identical(other.nip, nip) || other.nip == nip)&&(identical(other.password, password) || other.password == password)&&(identical(other.noTelepon, noTelepon) || other.noTelepon == noTelepon)&&(identical(other.sekolahId, sekolahId) || other.sekolahId == sekolahId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,namaLengkap,email,nip,password,noTelepon,sekolahId);

@override
String toString() {
  return 'GuruData(id: $id, namaLengkap: $namaLengkap, email: $email, nip: $nip, password: $password, noTelepon: $noTelepon, sekolahId: $sekolahId)';
}


}

/// @nodoc
abstract mixin class _$GuruDataCopyWith<$Res> implements $GuruDataCopyWith<$Res> {
  factory _$GuruDataCopyWith(_GuruData value, $Res Function(_GuruData) _then) = __$GuruDataCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'nama_lengkap') String namaLengkap, String? email, String nip, String? password,@JsonKey(name: 'no_telepon') String? noTelepon,@JsonKey(name: 'sekolah_id') int sekolahId
});




}
/// @nodoc
class __$GuruDataCopyWithImpl<$Res>
    implements _$GuruDataCopyWith<$Res> {
  __$GuruDataCopyWithImpl(this._self, this._then);

  final _GuruData _self;
  final $Res Function(_GuruData) _then;

/// Create a copy of GuruData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? namaLengkap = null,Object? email = freezed,Object? nip = null,Object? password = freezed,Object? noTelepon = freezed,Object? sekolahId = null,}) {
  return _then(_GuruData(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,namaLengkap: null == namaLengkap ? _self.namaLengkap : namaLengkap // ignore: cast_nullable_to_non_nullable
as String,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,nip: null == nip ? _self.nip : nip // ignore: cast_nullable_to_non_nullable
as String,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,noTelepon: freezed == noTelepon ? _self.noTelepon : noTelepon // ignore: cast_nullable_to_non_nullable
as String?,sekolahId: null == sekolahId ? _self.sekolahId : sekolahId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
