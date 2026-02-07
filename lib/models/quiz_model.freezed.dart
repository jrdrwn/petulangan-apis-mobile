// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$QuizModel {

 int get id;@JsonKey(name: 'topik_id') int get topikId; String get nama;@JsonKey(name: 'pilihan_ganda') Map<String, String> get pilihanGanda; String get jawaban; int get durasi;
/// Create a copy of QuizModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuizModelCopyWith<QuizModel> get copyWith => _$QuizModelCopyWithImpl<QuizModel>(this as QuizModel, _$identity);

  /// Serializes this QuizModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuizModel&&(identical(other.id, id) || other.id == id)&&(identical(other.topikId, topikId) || other.topikId == topikId)&&(identical(other.nama, nama) || other.nama == nama)&&const DeepCollectionEquality().equals(other.pilihanGanda, pilihanGanda)&&(identical(other.jawaban, jawaban) || other.jawaban == jawaban)&&(identical(other.durasi, durasi) || other.durasi == durasi));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,topikId,nama,const DeepCollectionEquality().hash(pilihanGanda),jawaban,durasi);

@override
String toString() {
  return 'QuizModel(id: $id, topikId: $topikId, nama: $nama, pilihanGanda: $pilihanGanda, jawaban: $jawaban, durasi: $durasi)';
}


}

/// @nodoc
abstract mixin class $QuizModelCopyWith<$Res>  {
  factory $QuizModelCopyWith(QuizModel value, $Res Function(QuizModel) _then) = _$QuizModelCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'topik_id') int topikId, String nama,@JsonKey(name: 'pilihan_ganda') Map<String, String> pilihanGanda, String jawaban, int durasi
});




}
/// @nodoc
class _$QuizModelCopyWithImpl<$Res>
    implements $QuizModelCopyWith<$Res> {
  _$QuizModelCopyWithImpl(this._self, this._then);

  final QuizModel _self;
  final $Res Function(QuizModel) _then;

/// Create a copy of QuizModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? topikId = null,Object? nama = null,Object? pilihanGanda = null,Object? jawaban = null,Object? durasi = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,topikId: null == topikId ? _self.topikId : topikId // ignore: cast_nullable_to_non_nullable
as int,nama: null == nama ? _self.nama : nama // ignore: cast_nullable_to_non_nullable
as String,pilihanGanda: null == pilihanGanda ? _self.pilihanGanda : pilihanGanda // ignore: cast_nullable_to_non_nullable
as Map<String, String>,jawaban: null == jawaban ? _self.jawaban : jawaban // ignore: cast_nullable_to_non_nullable
as String,durasi: null == durasi ? _self.durasi : durasi // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [QuizModel].
extension QuizModelPatterns on QuizModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QuizModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QuizModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QuizModel value)  $default,){
final _that = this;
switch (_that) {
case _QuizModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QuizModel value)?  $default,){
final _that = this;
switch (_that) {
case _QuizModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'topik_id')  int topikId,  String nama, @JsonKey(name: 'pilihan_ganda')  Map<String, String> pilihanGanda,  String jawaban,  int durasi)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QuizModel() when $default != null:
return $default(_that.id,_that.topikId,_that.nama,_that.pilihanGanda,_that.jawaban,_that.durasi);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'topik_id')  int topikId,  String nama, @JsonKey(name: 'pilihan_ganda')  Map<String, String> pilihanGanda,  String jawaban,  int durasi)  $default,) {final _that = this;
switch (_that) {
case _QuizModel():
return $default(_that.id,_that.topikId,_that.nama,_that.pilihanGanda,_that.jawaban,_that.durasi);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'topik_id')  int topikId,  String nama, @JsonKey(name: 'pilihan_ganda')  Map<String, String> pilihanGanda,  String jawaban,  int durasi)?  $default,) {final _that = this;
switch (_that) {
case _QuizModel() when $default != null:
return $default(_that.id,_that.topikId,_that.nama,_that.pilihanGanda,_that.jawaban,_that.durasi);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _QuizModel implements QuizModel {
  const _QuizModel({required this.id, @JsonKey(name: 'topik_id') required this.topikId, required this.nama, @JsonKey(name: 'pilihan_ganda') required final  Map<String, String> pilihanGanda, required this.jawaban, required this.durasi}): _pilihanGanda = pilihanGanda;
  factory _QuizModel.fromJson(Map<String, dynamic> json) => _$QuizModelFromJson(json);

@override final  int id;
@override@JsonKey(name: 'topik_id') final  int topikId;
@override final  String nama;
 final  Map<String, String> _pilihanGanda;
@override@JsonKey(name: 'pilihan_ganda') Map<String, String> get pilihanGanda {
  if (_pilihanGanda is EqualUnmodifiableMapView) return _pilihanGanda;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_pilihanGanda);
}

@override final  String jawaban;
@override final  int durasi;

/// Create a copy of QuizModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuizModelCopyWith<_QuizModel> get copyWith => __$QuizModelCopyWithImpl<_QuizModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QuizModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QuizModel&&(identical(other.id, id) || other.id == id)&&(identical(other.topikId, topikId) || other.topikId == topikId)&&(identical(other.nama, nama) || other.nama == nama)&&const DeepCollectionEquality().equals(other._pilihanGanda, _pilihanGanda)&&(identical(other.jawaban, jawaban) || other.jawaban == jawaban)&&(identical(other.durasi, durasi) || other.durasi == durasi));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,topikId,nama,const DeepCollectionEquality().hash(_pilihanGanda),jawaban,durasi);

@override
String toString() {
  return 'QuizModel(id: $id, topikId: $topikId, nama: $nama, pilihanGanda: $pilihanGanda, jawaban: $jawaban, durasi: $durasi)';
}


}

/// @nodoc
abstract mixin class _$QuizModelCopyWith<$Res> implements $QuizModelCopyWith<$Res> {
  factory _$QuizModelCopyWith(_QuizModel value, $Res Function(_QuizModel) _then) = __$QuizModelCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'topik_id') int topikId, String nama,@JsonKey(name: 'pilihan_ganda') Map<String, String> pilihanGanda, String jawaban, int durasi
});




}
/// @nodoc
class __$QuizModelCopyWithImpl<$Res>
    implements _$QuizModelCopyWith<$Res> {
  __$QuizModelCopyWithImpl(this._self, this._then);

  final _QuizModel _self;
  final $Res Function(_QuizModel) _then;

/// Create a copy of QuizModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? topikId = null,Object? nama = null,Object? pilihanGanda = null,Object? jawaban = null,Object? durasi = null,}) {
  return _then(_QuizModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,topikId: null == topikId ? _self.topikId : topikId // ignore: cast_nullable_to_non_nullable
as int,nama: null == nama ? _self.nama : nama // ignore: cast_nullable_to_non_nullable
as String,pilihanGanda: null == pilihanGanda ? _self._pilihanGanda : pilihanGanda // ignore: cast_nullable_to_non_nullable
as Map<String, String>,jawaban: null == jawaban ? _self.jawaban : jawaban // ignore: cast_nullable_to_non_nullable
as String,durasi: null == durasi ? _self.durasi : durasi // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$QuizAnswerItem {

@JsonKey(name: 'quiz_id') int get quizId; String get jawaban;
/// Create a copy of QuizAnswerItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuizAnswerItemCopyWith<QuizAnswerItem> get copyWith => _$QuizAnswerItemCopyWithImpl<QuizAnswerItem>(this as QuizAnswerItem, _$identity);

  /// Serializes this QuizAnswerItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuizAnswerItem&&(identical(other.quizId, quizId) || other.quizId == quizId)&&(identical(other.jawaban, jawaban) || other.jawaban == jawaban));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,quizId,jawaban);

@override
String toString() {
  return 'QuizAnswerItem(quizId: $quizId, jawaban: $jawaban)';
}


}

/// @nodoc
abstract mixin class $QuizAnswerItemCopyWith<$Res>  {
  factory $QuizAnswerItemCopyWith(QuizAnswerItem value, $Res Function(QuizAnswerItem) _then) = _$QuizAnswerItemCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'quiz_id') int quizId, String jawaban
});




}
/// @nodoc
class _$QuizAnswerItemCopyWithImpl<$Res>
    implements $QuizAnswerItemCopyWith<$Res> {
  _$QuizAnswerItemCopyWithImpl(this._self, this._then);

  final QuizAnswerItem _self;
  final $Res Function(QuizAnswerItem) _then;

/// Create a copy of QuizAnswerItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? quizId = null,Object? jawaban = null,}) {
  return _then(_self.copyWith(
quizId: null == quizId ? _self.quizId : quizId // ignore: cast_nullable_to_non_nullable
as int,jawaban: null == jawaban ? _self.jawaban : jawaban // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [QuizAnswerItem].
extension QuizAnswerItemPatterns on QuizAnswerItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QuizAnswerItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QuizAnswerItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QuizAnswerItem value)  $default,){
final _that = this;
switch (_that) {
case _QuizAnswerItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QuizAnswerItem value)?  $default,){
final _that = this;
switch (_that) {
case _QuizAnswerItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'quiz_id')  int quizId,  String jawaban)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QuizAnswerItem() when $default != null:
return $default(_that.quizId,_that.jawaban);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'quiz_id')  int quizId,  String jawaban)  $default,) {final _that = this;
switch (_that) {
case _QuizAnswerItem():
return $default(_that.quizId,_that.jawaban);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'quiz_id')  int quizId,  String jawaban)?  $default,) {final _that = this;
switch (_that) {
case _QuizAnswerItem() when $default != null:
return $default(_that.quizId,_that.jawaban);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _QuizAnswerItem implements QuizAnswerItem {
  const _QuizAnswerItem({@JsonKey(name: 'quiz_id') required this.quizId, required this.jawaban});
  factory _QuizAnswerItem.fromJson(Map<String, dynamic> json) => _$QuizAnswerItemFromJson(json);

@override@JsonKey(name: 'quiz_id') final  int quizId;
@override final  String jawaban;

/// Create a copy of QuizAnswerItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuizAnswerItemCopyWith<_QuizAnswerItem> get copyWith => __$QuizAnswerItemCopyWithImpl<_QuizAnswerItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QuizAnswerItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QuizAnswerItem&&(identical(other.quizId, quizId) || other.quizId == quizId)&&(identical(other.jawaban, jawaban) || other.jawaban == jawaban));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,quizId,jawaban);

@override
String toString() {
  return 'QuizAnswerItem(quizId: $quizId, jawaban: $jawaban)';
}


}

/// @nodoc
abstract mixin class _$QuizAnswerItemCopyWith<$Res> implements $QuizAnswerItemCopyWith<$Res> {
  factory _$QuizAnswerItemCopyWith(_QuizAnswerItem value, $Res Function(_QuizAnswerItem) _then) = __$QuizAnswerItemCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'quiz_id') int quizId, String jawaban
});




}
/// @nodoc
class __$QuizAnswerItemCopyWithImpl<$Res>
    implements _$QuizAnswerItemCopyWith<$Res> {
  __$QuizAnswerItemCopyWithImpl(this._self, this._then);

  final _QuizAnswerItem _self;
  final $Res Function(_QuizAnswerItem) _then;

/// Create a copy of QuizAnswerItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? quizId = null,Object? jawaban = null,}) {
  return _then(_QuizAnswerItem(
quizId: null == quizId ? _self.quizId : quizId // ignore: cast_nullable_to_non_nullable
as int,jawaban: null == jawaban ? _self.jawaban : jawaban // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$QuizSubmitRequest {

@JsonKey(name: 'hasil_quiz') List<QuizAnswerItem> get hasilQuiz;
/// Create a copy of QuizSubmitRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuizSubmitRequestCopyWith<QuizSubmitRequest> get copyWith => _$QuizSubmitRequestCopyWithImpl<QuizSubmitRequest>(this as QuizSubmitRequest, _$identity);

  /// Serializes this QuizSubmitRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuizSubmitRequest&&const DeepCollectionEquality().equals(other.hasilQuiz, hasilQuiz));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(hasilQuiz));

@override
String toString() {
  return 'QuizSubmitRequest(hasilQuiz: $hasilQuiz)';
}


}

/// @nodoc
abstract mixin class $QuizSubmitRequestCopyWith<$Res>  {
  factory $QuizSubmitRequestCopyWith(QuizSubmitRequest value, $Res Function(QuizSubmitRequest) _then) = _$QuizSubmitRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'hasil_quiz') List<QuizAnswerItem> hasilQuiz
});




}
/// @nodoc
class _$QuizSubmitRequestCopyWithImpl<$Res>
    implements $QuizSubmitRequestCopyWith<$Res> {
  _$QuizSubmitRequestCopyWithImpl(this._self, this._then);

  final QuizSubmitRequest _self;
  final $Res Function(QuizSubmitRequest) _then;

/// Create a copy of QuizSubmitRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? hasilQuiz = null,}) {
  return _then(_self.copyWith(
hasilQuiz: null == hasilQuiz ? _self.hasilQuiz : hasilQuiz // ignore: cast_nullable_to_non_nullable
as List<QuizAnswerItem>,
  ));
}

}


/// Adds pattern-matching-related methods to [QuizSubmitRequest].
extension QuizSubmitRequestPatterns on QuizSubmitRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QuizSubmitRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QuizSubmitRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QuizSubmitRequest value)  $default,){
final _that = this;
switch (_that) {
case _QuizSubmitRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QuizSubmitRequest value)?  $default,){
final _that = this;
switch (_that) {
case _QuizSubmitRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'hasil_quiz')  List<QuizAnswerItem> hasilQuiz)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QuizSubmitRequest() when $default != null:
return $default(_that.hasilQuiz);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'hasil_quiz')  List<QuizAnswerItem> hasilQuiz)  $default,) {final _that = this;
switch (_that) {
case _QuizSubmitRequest():
return $default(_that.hasilQuiz);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'hasil_quiz')  List<QuizAnswerItem> hasilQuiz)?  $default,) {final _that = this;
switch (_that) {
case _QuizSubmitRequest() when $default != null:
return $default(_that.hasilQuiz);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _QuizSubmitRequest implements QuizSubmitRequest {
  const _QuizSubmitRequest({@JsonKey(name: 'hasil_quiz') required final  List<QuizAnswerItem> hasilQuiz}): _hasilQuiz = hasilQuiz;
  factory _QuizSubmitRequest.fromJson(Map<String, dynamic> json) => _$QuizSubmitRequestFromJson(json);

 final  List<QuizAnswerItem> _hasilQuiz;
@override@JsonKey(name: 'hasil_quiz') List<QuizAnswerItem> get hasilQuiz {
  if (_hasilQuiz is EqualUnmodifiableListView) return _hasilQuiz;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_hasilQuiz);
}


/// Create a copy of QuizSubmitRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuizSubmitRequestCopyWith<_QuizSubmitRequest> get copyWith => __$QuizSubmitRequestCopyWithImpl<_QuizSubmitRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QuizSubmitRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QuizSubmitRequest&&const DeepCollectionEquality().equals(other._hasilQuiz, _hasilQuiz));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_hasilQuiz));

@override
String toString() {
  return 'QuizSubmitRequest(hasilQuiz: $hasilQuiz)';
}


}

/// @nodoc
abstract mixin class _$QuizSubmitRequestCopyWith<$Res> implements $QuizSubmitRequestCopyWith<$Res> {
  factory _$QuizSubmitRequestCopyWith(_QuizSubmitRequest value, $Res Function(_QuizSubmitRequest) _then) = __$QuizSubmitRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'hasil_quiz') List<QuizAnswerItem> hasilQuiz
});




}
/// @nodoc
class __$QuizSubmitRequestCopyWithImpl<$Res>
    implements _$QuizSubmitRequestCopyWith<$Res> {
  __$QuizSubmitRequestCopyWithImpl(this._self, this._then);

  final _QuizSubmitRequest _self;
  final $Res Function(_QuizSubmitRequest) _then;

/// Create a copy of QuizSubmitRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? hasilQuiz = null,}) {
  return _then(_QuizSubmitRequest(
hasilQuiz: null == hasilQuiz ? _self._hasilQuiz : hasilQuiz // ignore: cast_nullable_to_non_nullable
as List<QuizAnswerItem>,
  ));
}


}


/// @nodoc
mixin _$QuizSubmitResponse {

 String get message;
/// Create a copy of QuizSubmitResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuizSubmitResponseCopyWith<QuizSubmitResponse> get copyWith => _$QuizSubmitResponseCopyWithImpl<QuizSubmitResponse>(this as QuizSubmitResponse, _$identity);

  /// Serializes this QuizSubmitResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuizSubmitResponse&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'QuizSubmitResponse(message: $message)';
}


}

/// @nodoc
abstract mixin class $QuizSubmitResponseCopyWith<$Res>  {
  factory $QuizSubmitResponseCopyWith(QuizSubmitResponse value, $Res Function(QuizSubmitResponse) _then) = _$QuizSubmitResponseCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$QuizSubmitResponseCopyWithImpl<$Res>
    implements $QuizSubmitResponseCopyWith<$Res> {
  _$QuizSubmitResponseCopyWithImpl(this._self, this._then);

  final QuizSubmitResponse _self;
  final $Res Function(QuizSubmitResponse) _then;

/// Create a copy of QuizSubmitResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [QuizSubmitResponse].
extension QuizSubmitResponsePatterns on QuizSubmitResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QuizSubmitResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QuizSubmitResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QuizSubmitResponse value)  $default,){
final _that = this;
switch (_that) {
case _QuizSubmitResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QuizSubmitResponse value)?  $default,){
final _that = this;
switch (_that) {
case _QuizSubmitResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QuizSubmitResponse() when $default != null:
return $default(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String message)  $default,) {final _that = this;
switch (_that) {
case _QuizSubmitResponse():
return $default(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String message)?  $default,) {final _that = this;
switch (_that) {
case _QuizSubmitResponse() when $default != null:
return $default(_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _QuizSubmitResponse implements QuizSubmitResponse {
  const _QuizSubmitResponse({required this.message});
  factory _QuizSubmitResponse.fromJson(Map<String, dynamic> json) => _$QuizSubmitResponseFromJson(json);

@override final  String message;

/// Create a copy of QuizSubmitResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuizSubmitResponseCopyWith<_QuizSubmitResponse> get copyWith => __$QuizSubmitResponseCopyWithImpl<_QuizSubmitResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QuizSubmitResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QuizSubmitResponse&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'QuizSubmitResponse(message: $message)';
}


}

/// @nodoc
abstract mixin class _$QuizSubmitResponseCopyWith<$Res> implements $QuizSubmitResponseCopyWith<$Res> {
  factory _$QuizSubmitResponseCopyWith(_QuizSubmitResponse value, $Res Function(_QuizSubmitResponse) _then) = __$QuizSubmitResponseCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class __$QuizSubmitResponseCopyWithImpl<$Res>
    implements _$QuizSubmitResponseCopyWith<$Res> {
  __$QuizSubmitResponseCopyWithImpl(this._self, this._then);

  final _QuizSubmitResponse _self;
  final $Res Function(_QuizSubmitResponse) _then;

/// Create a copy of QuizSubmitResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_QuizSubmitResponse(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
