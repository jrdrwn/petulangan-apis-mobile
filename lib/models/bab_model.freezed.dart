// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bab_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TopikModel {

 int get id;@JsonKey(name: 'bab_id') int get babId; String get kode; String get judul; String get deskripsi;@JsonKey(name: 'topik_url') String get topikUrl; bool get unlocked;
/// Create a copy of TopikModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TopikModelCopyWith<TopikModel> get copyWith => _$TopikModelCopyWithImpl<TopikModel>(this as TopikModel, _$identity);

  /// Serializes this TopikModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TopikModel&&(identical(other.id, id) || other.id == id)&&(identical(other.babId, babId) || other.babId == babId)&&(identical(other.kode, kode) || other.kode == kode)&&(identical(other.judul, judul) || other.judul == judul)&&(identical(other.deskripsi, deskripsi) || other.deskripsi == deskripsi)&&(identical(other.topikUrl, topikUrl) || other.topikUrl == topikUrl)&&(identical(other.unlocked, unlocked) || other.unlocked == unlocked));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,babId,kode,judul,deskripsi,topikUrl,unlocked);

@override
String toString() {
  return 'TopikModel(id: $id, babId: $babId, kode: $kode, judul: $judul, deskripsi: $deskripsi, topikUrl: $topikUrl, unlocked: $unlocked)';
}


}

/// @nodoc
abstract mixin class $TopikModelCopyWith<$Res>  {
  factory $TopikModelCopyWith(TopikModel value, $Res Function(TopikModel) _then) = _$TopikModelCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'bab_id') int babId, String kode, String judul, String deskripsi,@JsonKey(name: 'topik_url') String topikUrl, bool unlocked
});




}
/// @nodoc
class _$TopikModelCopyWithImpl<$Res>
    implements $TopikModelCopyWith<$Res> {
  _$TopikModelCopyWithImpl(this._self, this._then);

  final TopikModel _self;
  final $Res Function(TopikModel) _then;

/// Create a copy of TopikModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? babId = null,Object? kode = null,Object? judul = null,Object? deskripsi = null,Object? topikUrl = null,Object? unlocked = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,babId: null == babId ? _self.babId : babId // ignore: cast_nullable_to_non_nullable
as int,kode: null == kode ? _self.kode : kode // ignore: cast_nullable_to_non_nullable
as String,judul: null == judul ? _self.judul : judul // ignore: cast_nullable_to_non_nullable
as String,deskripsi: null == deskripsi ? _self.deskripsi : deskripsi // ignore: cast_nullable_to_non_nullable
as String,topikUrl: null == topikUrl ? _self.topikUrl : topikUrl // ignore: cast_nullable_to_non_nullable
as String,unlocked: null == unlocked ? _self.unlocked : unlocked // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [TopikModel].
extension TopikModelPatterns on TopikModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TopikModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TopikModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TopikModel value)  $default,){
final _that = this;
switch (_that) {
case _TopikModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TopikModel value)?  $default,){
final _that = this;
switch (_that) {
case _TopikModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'bab_id')  int babId,  String kode,  String judul,  String deskripsi, @JsonKey(name: 'topik_url')  String topikUrl,  bool unlocked)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TopikModel() when $default != null:
return $default(_that.id,_that.babId,_that.kode,_that.judul,_that.deskripsi,_that.topikUrl,_that.unlocked);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'bab_id')  int babId,  String kode,  String judul,  String deskripsi, @JsonKey(name: 'topik_url')  String topikUrl,  bool unlocked)  $default,) {final _that = this;
switch (_that) {
case _TopikModel():
return $default(_that.id,_that.babId,_that.kode,_that.judul,_that.deskripsi,_that.topikUrl,_that.unlocked);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'bab_id')  int babId,  String kode,  String judul,  String deskripsi, @JsonKey(name: 'topik_url')  String topikUrl,  bool unlocked)?  $default,) {final _that = this;
switch (_that) {
case _TopikModel() when $default != null:
return $default(_that.id,_that.babId,_that.kode,_that.judul,_that.deskripsi,_that.topikUrl,_that.unlocked);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TopikModel implements TopikModel {
  const _TopikModel({required this.id, @JsonKey(name: 'bab_id') required this.babId, required this.kode, required this.judul, required this.deskripsi, @JsonKey(name: 'topik_url') required this.topikUrl, required this.unlocked});
  factory _TopikModel.fromJson(Map<String, dynamic> json) => _$TopikModelFromJson(json);

@override final  int id;
@override@JsonKey(name: 'bab_id') final  int babId;
@override final  String kode;
@override final  String judul;
@override final  String deskripsi;
@override@JsonKey(name: 'topik_url') final  String topikUrl;
@override final  bool unlocked;

/// Create a copy of TopikModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TopikModelCopyWith<_TopikModel> get copyWith => __$TopikModelCopyWithImpl<_TopikModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TopikModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TopikModel&&(identical(other.id, id) || other.id == id)&&(identical(other.babId, babId) || other.babId == babId)&&(identical(other.kode, kode) || other.kode == kode)&&(identical(other.judul, judul) || other.judul == judul)&&(identical(other.deskripsi, deskripsi) || other.deskripsi == deskripsi)&&(identical(other.topikUrl, topikUrl) || other.topikUrl == topikUrl)&&(identical(other.unlocked, unlocked) || other.unlocked == unlocked));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,babId,kode,judul,deskripsi,topikUrl,unlocked);

@override
String toString() {
  return 'TopikModel(id: $id, babId: $babId, kode: $kode, judul: $judul, deskripsi: $deskripsi, topikUrl: $topikUrl, unlocked: $unlocked)';
}


}

/// @nodoc
abstract mixin class _$TopikModelCopyWith<$Res> implements $TopikModelCopyWith<$Res> {
  factory _$TopikModelCopyWith(_TopikModel value, $Res Function(_TopikModel) _then) = __$TopikModelCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'bab_id') int babId, String kode, String judul, String deskripsi,@JsonKey(name: 'topik_url') String topikUrl, bool unlocked
});




}
/// @nodoc
class __$TopikModelCopyWithImpl<$Res>
    implements _$TopikModelCopyWith<$Res> {
  __$TopikModelCopyWithImpl(this._self, this._then);

  final _TopikModel _self;
  final $Res Function(_TopikModel) _then;

/// Create a copy of TopikModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? babId = null,Object? kode = null,Object? judul = null,Object? deskripsi = null,Object? topikUrl = null,Object? unlocked = null,}) {
  return _then(_TopikModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,babId: null == babId ? _self.babId : babId // ignore: cast_nullable_to_non_nullable
as int,kode: null == kode ? _self.kode : kode // ignore: cast_nullable_to_non_nullable
as String,judul: null == judul ? _self.judul : judul // ignore: cast_nullable_to_non_nullable
as String,deskripsi: null == deskripsi ? _self.deskripsi : deskripsi // ignore: cast_nullable_to_non_nullable
as String,topikUrl: null == topikUrl ? _self.topikUrl : topikUrl // ignore: cast_nullable_to_non_nullable
as String,unlocked: null == unlocked ? _self.unlocked : unlocked // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$BabModel {

 int get id; String get nomor; String get judul;@JsonKey(name: 'kelas_id') int get kelasId; String get deskripsi; List<TopikModel> get topik;
/// Create a copy of BabModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BabModelCopyWith<BabModel> get copyWith => _$BabModelCopyWithImpl<BabModel>(this as BabModel, _$identity);

  /// Serializes this BabModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BabModel&&(identical(other.id, id) || other.id == id)&&(identical(other.nomor, nomor) || other.nomor == nomor)&&(identical(other.judul, judul) || other.judul == judul)&&(identical(other.kelasId, kelasId) || other.kelasId == kelasId)&&(identical(other.deskripsi, deskripsi) || other.deskripsi == deskripsi)&&const DeepCollectionEquality().equals(other.topik, topik));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,nomor,judul,kelasId,deskripsi,const DeepCollectionEquality().hash(topik));

@override
String toString() {
  return 'BabModel(id: $id, nomor: $nomor, judul: $judul, kelasId: $kelasId, deskripsi: $deskripsi, topik: $topik)';
}


}

/// @nodoc
abstract mixin class $BabModelCopyWith<$Res>  {
  factory $BabModelCopyWith(BabModel value, $Res Function(BabModel) _then) = _$BabModelCopyWithImpl;
@useResult
$Res call({
 int id, String nomor, String judul,@JsonKey(name: 'kelas_id') int kelasId, String deskripsi, List<TopikModel> topik
});




}
/// @nodoc
class _$BabModelCopyWithImpl<$Res>
    implements $BabModelCopyWith<$Res> {
  _$BabModelCopyWithImpl(this._self, this._then);

  final BabModel _self;
  final $Res Function(BabModel) _then;

/// Create a copy of BabModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? nomor = null,Object? judul = null,Object? kelasId = null,Object? deskripsi = null,Object? topik = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,nomor: null == nomor ? _self.nomor : nomor // ignore: cast_nullable_to_non_nullable
as String,judul: null == judul ? _self.judul : judul // ignore: cast_nullable_to_non_nullable
as String,kelasId: null == kelasId ? _self.kelasId : kelasId // ignore: cast_nullable_to_non_nullable
as int,deskripsi: null == deskripsi ? _self.deskripsi : deskripsi // ignore: cast_nullable_to_non_nullable
as String,topik: null == topik ? _self.topik : topik // ignore: cast_nullable_to_non_nullable
as List<TopikModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [BabModel].
extension BabModelPatterns on BabModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BabModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BabModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BabModel value)  $default,){
final _that = this;
switch (_that) {
case _BabModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BabModel value)?  $default,){
final _that = this;
switch (_that) {
case _BabModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String nomor,  String judul, @JsonKey(name: 'kelas_id')  int kelasId,  String deskripsi,  List<TopikModel> topik)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BabModel() when $default != null:
return $default(_that.id,_that.nomor,_that.judul,_that.kelasId,_that.deskripsi,_that.topik);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String nomor,  String judul, @JsonKey(name: 'kelas_id')  int kelasId,  String deskripsi,  List<TopikModel> topik)  $default,) {final _that = this;
switch (_that) {
case _BabModel():
return $default(_that.id,_that.nomor,_that.judul,_that.kelasId,_that.deskripsi,_that.topik);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String nomor,  String judul, @JsonKey(name: 'kelas_id')  int kelasId,  String deskripsi,  List<TopikModel> topik)?  $default,) {final _that = this;
switch (_that) {
case _BabModel() when $default != null:
return $default(_that.id,_that.nomor,_that.judul,_that.kelasId,_that.deskripsi,_that.topik);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BabModel implements BabModel {
  const _BabModel({required this.id, required this.nomor, required this.judul, @JsonKey(name: 'kelas_id') required this.kelasId, required this.deskripsi, required final  List<TopikModel> topik}): _topik = topik;
  factory _BabModel.fromJson(Map<String, dynamic> json) => _$BabModelFromJson(json);

@override final  int id;
@override final  String nomor;
@override final  String judul;
@override@JsonKey(name: 'kelas_id') final  int kelasId;
@override final  String deskripsi;
 final  List<TopikModel> _topik;
@override List<TopikModel> get topik {
  if (_topik is EqualUnmodifiableListView) return _topik;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_topik);
}


/// Create a copy of BabModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BabModelCopyWith<_BabModel> get copyWith => __$BabModelCopyWithImpl<_BabModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BabModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BabModel&&(identical(other.id, id) || other.id == id)&&(identical(other.nomor, nomor) || other.nomor == nomor)&&(identical(other.judul, judul) || other.judul == judul)&&(identical(other.kelasId, kelasId) || other.kelasId == kelasId)&&(identical(other.deskripsi, deskripsi) || other.deskripsi == deskripsi)&&const DeepCollectionEquality().equals(other._topik, _topik));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,nomor,judul,kelasId,deskripsi,const DeepCollectionEquality().hash(_topik));

@override
String toString() {
  return 'BabModel(id: $id, nomor: $nomor, judul: $judul, kelasId: $kelasId, deskripsi: $deskripsi, topik: $topik)';
}


}

/// @nodoc
abstract mixin class _$BabModelCopyWith<$Res> implements $BabModelCopyWith<$Res> {
  factory _$BabModelCopyWith(_BabModel value, $Res Function(_BabModel) _then) = __$BabModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String nomor, String judul,@JsonKey(name: 'kelas_id') int kelasId, String deskripsi, List<TopikModel> topik
});




}
/// @nodoc
class __$BabModelCopyWithImpl<$Res>
    implements _$BabModelCopyWith<$Res> {
  __$BabModelCopyWithImpl(this._self, this._then);

  final _BabModel _self;
  final $Res Function(_BabModel) _then;

/// Create a copy of BabModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? nomor = null,Object? judul = null,Object? kelasId = null,Object? deskripsi = null,Object? topik = null,}) {
  return _then(_BabModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,nomor: null == nomor ? _self.nomor : nomor // ignore: cast_nullable_to_non_nullable
as String,judul: null == judul ? _self.judul : judul // ignore: cast_nullable_to_non_nullable
as String,kelasId: null == kelasId ? _self.kelasId : kelasId // ignore: cast_nullable_to_non_nullable
as int,deskripsi: null == deskripsi ? _self.deskripsi : deskripsi // ignore: cast_nullable_to_non_nullable
as String,topik: null == topik ? _self._topik : topik // ignore: cast_nullable_to_non_nullable
as List<TopikModel>,
  ));
}


}

// dart format on
