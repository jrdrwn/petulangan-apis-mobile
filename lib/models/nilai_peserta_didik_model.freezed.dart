// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nilai_peserta_didik_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NilaiQuizModel {

 int get id;@JsonKey(name: 'peserta_didik_id') int get pesertaDidikId;@JsonKey(name: 'topik_id') int get topikId;@JsonKey(name: 'hasil_quiz') String get hasilQuiz; int get nilai;@JsonKey(name: 'jumlah_benar') int? get jumlahBenar;@JsonKey(name: 'jumlah_salah') int? get jumlahSalah;@JsonKey(name: 'waktu_pengerjaan') String? get waktuPengerjaan;@JsonKey(name: 'tanggal_selesai') String get tanggalSelesai;
/// Create a copy of NilaiQuizModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NilaiQuizModelCopyWith<NilaiQuizModel> get copyWith => _$NilaiQuizModelCopyWithImpl<NilaiQuizModel>(this as NilaiQuizModel, _$identity);

  /// Serializes this NilaiQuizModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NilaiQuizModel&&(identical(other.id, id) || other.id == id)&&(identical(other.pesertaDidikId, pesertaDidikId) || other.pesertaDidikId == pesertaDidikId)&&(identical(other.topikId, topikId) || other.topikId == topikId)&&(identical(other.hasilQuiz, hasilQuiz) || other.hasilQuiz == hasilQuiz)&&(identical(other.nilai, nilai) || other.nilai == nilai)&&(identical(other.jumlahBenar, jumlahBenar) || other.jumlahBenar == jumlahBenar)&&(identical(other.jumlahSalah, jumlahSalah) || other.jumlahSalah == jumlahSalah)&&(identical(other.waktuPengerjaan, waktuPengerjaan) || other.waktuPengerjaan == waktuPengerjaan)&&(identical(other.tanggalSelesai, tanggalSelesai) || other.tanggalSelesai == tanggalSelesai));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,pesertaDidikId,topikId,hasilQuiz,nilai,jumlahBenar,jumlahSalah,waktuPengerjaan,tanggalSelesai);

@override
String toString() {
  return 'NilaiQuizModel(id: $id, pesertaDidikId: $pesertaDidikId, topikId: $topikId, hasilQuiz: $hasilQuiz, nilai: $nilai, jumlahBenar: $jumlahBenar, jumlahSalah: $jumlahSalah, waktuPengerjaan: $waktuPengerjaan, tanggalSelesai: $tanggalSelesai)';
}


}

/// @nodoc
abstract mixin class $NilaiQuizModelCopyWith<$Res>  {
  factory $NilaiQuizModelCopyWith(NilaiQuizModel value, $Res Function(NilaiQuizModel) _then) = _$NilaiQuizModelCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'peserta_didik_id') int pesertaDidikId,@JsonKey(name: 'topik_id') int topikId,@JsonKey(name: 'hasil_quiz') String hasilQuiz, int nilai,@JsonKey(name: 'jumlah_benar') int? jumlahBenar,@JsonKey(name: 'jumlah_salah') int? jumlahSalah,@JsonKey(name: 'waktu_pengerjaan') String? waktuPengerjaan,@JsonKey(name: 'tanggal_selesai') String tanggalSelesai
});




}
/// @nodoc
class _$NilaiQuizModelCopyWithImpl<$Res>
    implements $NilaiQuizModelCopyWith<$Res> {
  _$NilaiQuizModelCopyWithImpl(this._self, this._then);

  final NilaiQuizModel _self;
  final $Res Function(NilaiQuizModel) _then;

/// Create a copy of NilaiQuizModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? pesertaDidikId = null,Object? topikId = null,Object? hasilQuiz = null,Object? nilai = null,Object? jumlahBenar = freezed,Object? jumlahSalah = freezed,Object? waktuPengerjaan = freezed,Object? tanggalSelesai = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,pesertaDidikId: null == pesertaDidikId ? _self.pesertaDidikId : pesertaDidikId // ignore: cast_nullable_to_non_nullable
as int,topikId: null == topikId ? _self.topikId : topikId // ignore: cast_nullable_to_non_nullable
as int,hasilQuiz: null == hasilQuiz ? _self.hasilQuiz : hasilQuiz // ignore: cast_nullable_to_non_nullable
as String,nilai: null == nilai ? _self.nilai : nilai // ignore: cast_nullable_to_non_nullable
as int,jumlahBenar: freezed == jumlahBenar ? _self.jumlahBenar : jumlahBenar // ignore: cast_nullable_to_non_nullable
as int?,jumlahSalah: freezed == jumlahSalah ? _self.jumlahSalah : jumlahSalah // ignore: cast_nullable_to_non_nullable
as int?,waktuPengerjaan: freezed == waktuPengerjaan ? _self.waktuPengerjaan : waktuPengerjaan // ignore: cast_nullable_to_non_nullable
as String?,tanggalSelesai: null == tanggalSelesai ? _self.tanggalSelesai : tanggalSelesai // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [NilaiQuizModel].
extension NilaiQuizModelPatterns on NilaiQuizModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NilaiQuizModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NilaiQuizModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NilaiQuizModel value)  $default,){
final _that = this;
switch (_that) {
case _NilaiQuizModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NilaiQuizModel value)?  $default,){
final _that = this;
switch (_that) {
case _NilaiQuizModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'peserta_didik_id')  int pesertaDidikId, @JsonKey(name: 'topik_id')  int topikId, @JsonKey(name: 'hasil_quiz')  String hasilQuiz,  int nilai, @JsonKey(name: 'jumlah_benar')  int? jumlahBenar, @JsonKey(name: 'jumlah_salah')  int? jumlahSalah, @JsonKey(name: 'waktu_pengerjaan')  String? waktuPengerjaan, @JsonKey(name: 'tanggal_selesai')  String tanggalSelesai)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NilaiQuizModel() when $default != null:
return $default(_that.id,_that.pesertaDidikId,_that.topikId,_that.hasilQuiz,_that.nilai,_that.jumlahBenar,_that.jumlahSalah,_that.waktuPengerjaan,_that.tanggalSelesai);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'peserta_didik_id')  int pesertaDidikId, @JsonKey(name: 'topik_id')  int topikId, @JsonKey(name: 'hasil_quiz')  String hasilQuiz,  int nilai, @JsonKey(name: 'jumlah_benar')  int? jumlahBenar, @JsonKey(name: 'jumlah_salah')  int? jumlahSalah, @JsonKey(name: 'waktu_pengerjaan')  String? waktuPengerjaan, @JsonKey(name: 'tanggal_selesai')  String tanggalSelesai)  $default,) {final _that = this;
switch (_that) {
case _NilaiQuizModel():
return $default(_that.id,_that.pesertaDidikId,_that.topikId,_that.hasilQuiz,_that.nilai,_that.jumlahBenar,_that.jumlahSalah,_that.waktuPengerjaan,_that.tanggalSelesai);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'peserta_didik_id')  int pesertaDidikId, @JsonKey(name: 'topik_id')  int topikId, @JsonKey(name: 'hasil_quiz')  String hasilQuiz,  int nilai, @JsonKey(name: 'jumlah_benar')  int? jumlahBenar, @JsonKey(name: 'jumlah_salah')  int? jumlahSalah, @JsonKey(name: 'waktu_pengerjaan')  String? waktuPengerjaan, @JsonKey(name: 'tanggal_selesai')  String tanggalSelesai)?  $default,) {final _that = this;
switch (_that) {
case _NilaiQuizModel() when $default != null:
return $default(_that.id,_that.pesertaDidikId,_that.topikId,_that.hasilQuiz,_that.nilai,_that.jumlahBenar,_that.jumlahSalah,_that.waktuPengerjaan,_that.tanggalSelesai);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NilaiQuizModel implements NilaiQuizModel {
  const _NilaiQuizModel({required this.id, @JsonKey(name: 'peserta_didik_id') required this.pesertaDidikId, @JsonKey(name: 'topik_id') required this.topikId, @JsonKey(name: 'hasil_quiz') required this.hasilQuiz, required this.nilai, @JsonKey(name: 'jumlah_benar') this.jumlahBenar, @JsonKey(name: 'jumlah_salah') this.jumlahSalah, @JsonKey(name: 'waktu_pengerjaan') this.waktuPengerjaan, @JsonKey(name: 'tanggal_selesai') required this.tanggalSelesai});
  factory _NilaiQuizModel.fromJson(Map<String, dynamic> json) => _$NilaiQuizModelFromJson(json);

@override final  int id;
@override@JsonKey(name: 'peserta_didik_id') final  int pesertaDidikId;
@override@JsonKey(name: 'topik_id') final  int topikId;
@override@JsonKey(name: 'hasil_quiz') final  String hasilQuiz;
@override final  int nilai;
@override@JsonKey(name: 'jumlah_benar') final  int? jumlahBenar;
@override@JsonKey(name: 'jumlah_salah') final  int? jumlahSalah;
@override@JsonKey(name: 'waktu_pengerjaan') final  String? waktuPengerjaan;
@override@JsonKey(name: 'tanggal_selesai') final  String tanggalSelesai;

/// Create a copy of NilaiQuizModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NilaiQuizModelCopyWith<_NilaiQuizModel> get copyWith => __$NilaiQuizModelCopyWithImpl<_NilaiQuizModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NilaiQuizModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NilaiQuizModel&&(identical(other.id, id) || other.id == id)&&(identical(other.pesertaDidikId, pesertaDidikId) || other.pesertaDidikId == pesertaDidikId)&&(identical(other.topikId, topikId) || other.topikId == topikId)&&(identical(other.hasilQuiz, hasilQuiz) || other.hasilQuiz == hasilQuiz)&&(identical(other.nilai, nilai) || other.nilai == nilai)&&(identical(other.jumlahBenar, jumlahBenar) || other.jumlahBenar == jumlahBenar)&&(identical(other.jumlahSalah, jumlahSalah) || other.jumlahSalah == jumlahSalah)&&(identical(other.waktuPengerjaan, waktuPengerjaan) || other.waktuPengerjaan == waktuPengerjaan)&&(identical(other.tanggalSelesai, tanggalSelesai) || other.tanggalSelesai == tanggalSelesai));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,pesertaDidikId,topikId,hasilQuiz,nilai,jumlahBenar,jumlahSalah,waktuPengerjaan,tanggalSelesai);

@override
String toString() {
  return 'NilaiQuizModel(id: $id, pesertaDidikId: $pesertaDidikId, topikId: $topikId, hasilQuiz: $hasilQuiz, nilai: $nilai, jumlahBenar: $jumlahBenar, jumlahSalah: $jumlahSalah, waktuPengerjaan: $waktuPengerjaan, tanggalSelesai: $tanggalSelesai)';
}


}

/// @nodoc
abstract mixin class _$NilaiQuizModelCopyWith<$Res> implements $NilaiQuizModelCopyWith<$Res> {
  factory _$NilaiQuizModelCopyWith(_NilaiQuizModel value, $Res Function(_NilaiQuizModel) _then) = __$NilaiQuizModelCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'peserta_didik_id') int pesertaDidikId,@JsonKey(name: 'topik_id') int topikId,@JsonKey(name: 'hasil_quiz') String hasilQuiz, int nilai,@JsonKey(name: 'jumlah_benar') int? jumlahBenar,@JsonKey(name: 'jumlah_salah') int? jumlahSalah,@JsonKey(name: 'waktu_pengerjaan') String? waktuPengerjaan,@JsonKey(name: 'tanggal_selesai') String tanggalSelesai
});




}
/// @nodoc
class __$NilaiQuizModelCopyWithImpl<$Res>
    implements _$NilaiQuizModelCopyWith<$Res> {
  __$NilaiQuizModelCopyWithImpl(this._self, this._then);

  final _NilaiQuizModel _self;
  final $Res Function(_NilaiQuizModel) _then;

/// Create a copy of NilaiQuizModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? pesertaDidikId = null,Object? topikId = null,Object? hasilQuiz = null,Object? nilai = null,Object? jumlahBenar = freezed,Object? jumlahSalah = freezed,Object? waktuPengerjaan = freezed,Object? tanggalSelesai = null,}) {
  return _then(_NilaiQuizModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,pesertaDidikId: null == pesertaDidikId ? _self.pesertaDidikId : pesertaDidikId // ignore: cast_nullable_to_non_nullable
as int,topikId: null == topikId ? _self.topikId : topikId // ignore: cast_nullable_to_non_nullable
as int,hasilQuiz: null == hasilQuiz ? _self.hasilQuiz : hasilQuiz // ignore: cast_nullable_to_non_nullable
as String,nilai: null == nilai ? _self.nilai : nilai // ignore: cast_nullable_to_non_nullable
as int,jumlahBenar: freezed == jumlahBenar ? _self.jumlahBenar : jumlahBenar // ignore: cast_nullable_to_non_nullable
as int?,jumlahSalah: freezed == jumlahSalah ? _self.jumlahSalah : jumlahSalah // ignore: cast_nullable_to_non_nullable
as int?,waktuPengerjaan: freezed == waktuPengerjaan ? _self.waktuPengerjaan : waktuPengerjaan // ignore: cast_nullable_to_non_nullable
as String?,tanggalSelesai: null == tanggalSelesai ? _self.tanggalSelesai : tanggalSelesai // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$TopikNilaiModel {

 int get id;@JsonKey(name: 'bab_id') int get babId; String get kode; String get judul; String get deskripsi;@JsonKey(name: 'topik_url') String get topikUrl;@JsonKey(name: 'nilai_quiz') NilaiQuizModel? get nilaiQuiz;
/// Create a copy of TopikNilaiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TopikNilaiModelCopyWith<TopikNilaiModel> get copyWith => _$TopikNilaiModelCopyWithImpl<TopikNilaiModel>(this as TopikNilaiModel, _$identity);

  /// Serializes this TopikNilaiModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TopikNilaiModel&&(identical(other.id, id) || other.id == id)&&(identical(other.babId, babId) || other.babId == babId)&&(identical(other.kode, kode) || other.kode == kode)&&(identical(other.judul, judul) || other.judul == judul)&&(identical(other.deskripsi, deskripsi) || other.deskripsi == deskripsi)&&(identical(other.topikUrl, topikUrl) || other.topikUrl == topikUrl)&&(identical(other.nilaiQuiz, nilaiQuiz) || other.nilaiQuiz == nilaiQuiz));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,babId,kode,judul,deskripsi,topikUrl,nilaiQuiz);

@override
String toString() {
  return 'TopikNilaiModel(id: $id, babId: $babId, kode: $kode, judul: $judul, deskripsi: $deskripsi, topikUrl: $topikUrl, nilaiQuiz: $nilaiQuiz)';
}


}

/// @nodoc
abstract mixin class $TopikNilaiModelCopyWith<$Res>  {
  factory $TopikNilaiModelCopyWith(TopikNilaiModel value, $Res Function(TopikNilaiModel) _then) = _$TopikNilaiModelCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'bab_id') int babId, String kode, String judul, String deskripsi,@JsonKey(name: 'topik_url') String topikUrl,@JsonKey(name: 'nilai_quiz') NilaiQuizModel? nilaiQuiz
});


$NilaiQuizModelCopyWith<$Res>? get nilaiQuiz;

}
/// @nodoc
class _$TopikNilaiModelCopyWithImpl<$Res>
    implements $TopikNilaiModelCopyWith<$Res> {
  _$TopikNilaiModelCopyWithImpl(this._self, this._then);

  final TopikNilaiModel _self;
  final $Res Function(TopikNilaiModel) _then;

/// Create a copy of TopikNilaiModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? babId = null,Object? kode = null,Object? judul = null,Object? deskripsi = null,Object? topikUrl = null,Object? nilaiQuiz = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,babId: null == babId ? _self.babId : babId // ignore: cast_nullable_to_non_nullable
as int,kode: null == kode ? _self.kode : kode // ignore: cast_nullable_to_non_nullable
as String,judul: null == judul ? _self.judul : judul // ignore: cast_nullable_to_non_nullable
as String,deskripsi: null == deskripsi ? _self.deskripsi : deskripsi // ignore: cast_nullable_to_non_nullable
as String,topikUrl: null == topikUrl ? _self.topikUrl : topikUrl // ignore: cast_nullable_to_non_nullable
as String,nilaiQuiz: freezed == nilaiQuiz ? _self.nilaiQuiz : nilaiQuiz // ignore: cast_nullable_to_non_nullable
as NilaiQuizModel?,
  ));
}
/// Create a copy of TopikNilaiModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NilaiQuizModelCopyWith<$Res>? get nilaiQuiz {
    if (_self.nilaiQuiz == null) {
    return null;
  }

  return $NilaiQuizModelCopyWith<$Res>(_self.nilaiQuiz!, (value) {
    return _then(_self.copyWith(nilaiQuiz: value));
  });
}
}


/// Adds pattern-matching-related methods to [TopikNilaiModel].
extension TopikNilaiModelPatterns on TopikNilaiModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TopikNilaiModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TopikNilaiModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TopikNilaiModel value)  $default,){
final _that = this;
switch (_that) {
case _TopikNilaiModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TopikNilaiModel value)?  $default,){
final _that = this;
switch (_that) {
case _TopikNilaiModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'bab_id')  int babId,  String kode,  String judul,  String deskripsi, @JsonKey(name: 'topik_url')  String topikUrl, @JsonKey(name: 'nilai_quiz')  NilaiQuizModel? nilaiQuiz)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TopikNilaiModel() when $default != null:
return $default(_that.id,_that.babId,_that.kode,_that.judul,_that.deskripsi,_that.topikUrl,_that.nilaiQuiz);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'bab_id')  int babId,  String kode,  String judul,  String deskripsi, @JsonKey(name: 'topik_url')  String topikUrl, @JsonKey(name: 'nilai_quiz')  NilaiQuizModel? nilaiQuiz)  $default,) {final _that = this;
switch (_that) {
case _TopikNilaiModel():
return $default(_that.id,_that.babId,_that.kode,_that.judul,_that.deskripsi,_that.topikUrl,_that.nilaiQuiz);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'bab_id')  int babId,  String kode,  String judul,  String deskripsi, @JsonKey(name: 'topik_url')  String topikUrl, @JsonKey(name: 'nilai_quiz')  NilaiQuizModel? nilaiQuiz)?  $default,) {final _that = this;
switch (_that) {
case _TopikNilaiModel() when $default != null:
return $default(_that.id,_that.babId,_that.kode,_that.judul,_that.deskripsi,_that.topikUrl,_that.nilaiQuiz);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TopikNilaiModel implements TopikNilaiModel {
  const _TopikNilaiModel({required this.id, @JsonKey(name: 'bab_id') required this.babId, required this.kode, required this.judul, required this.deskripsi, @JsonKey(name: 'topik_url') required this.topikUrl, @JsonKey(name: 'nilai_quiz') this.nilaiQuiz});
  factory _TopikNilaiModel.fromJson(Map<String, dynamic> json) => _$TopikNilaiModelFromJson(json);

@override final  int id;
@override@JsonKey(name: 'bab_id') final  int babId;
@override final  String kode;
@override final  String judul;
@override final  String deskripsi;
@override@JsonKey(name: 'topik_url') final  String topikUrl;
@override@JsonKey(name: 'nilai_quiz') final  NilaiQuizModel? nilaiQuiz;

/// Create a copy of TopikNilaiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TopikNilaiModelCopyWith<_TopikNilaiModel> get copyWith => __$TopikNilaiModelCopyWithImpl<_TopikNilaiModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TopikNilaiModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TopikNilaiModel&&(identical(other.id, id) || other.id == id)&&(identical(other.babId, babId) || other.babId == babId)&&(identical(other.kode, kode) || other.kode == kode)&&(identical(other.judul, judul) || other.judul == judul)&&(identical(other.deskripsi, deskripsi) || other.deskripsi == deskripsi)&&(identical(other.topikUrl, topikUrl) || other.topikUrl == topikUrl)&&(identical(other.nilaiQuiz, nilaiQuiz) || other.nilaiQuiz == nilaiQuiz));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,babId,kode,judul,deskripsi,topikUrl,nilaiQuiz);

@override
String toString() {
  return 'TopikNilaiModel(id: $id, babId: $babId, kode: $kode, judul: $judul, deskripsi: $deskripsi, topikUrl: $topikUrl, nilaiQuiz: $nilaiQuiz)';
}


}

/// @nodoc
abstract mixin class _$TopikNilaiModelCopyWith<$Res> implements $TopikNilaiModelCopyWith<$Res> {
  factory _$TopikNilaiModelCopyWith(_TopikNilaiModel value, $Res Function(_TopikNilaiModel) _then) = __$TopikNilaiModelCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'bab_id') int babId, String kode, String judul, String deskripsi,@JsonKey(name: 'topik_url') String topikUrl,@JsonKey(name: 'nilai_quiz') NilaiQuizModel? nilaiQuiz
});


@override $NilaiQuizModelCopyWith<$Res>? get nilaiQuiz;

}
/// @nodoc
class __$TopikNilaiModelCopyWithImpl<$Res>
    implements _$TopikNilaiModelCopyWith<$Res> {
  __$TopikNilaiModelCopyWithImpl(this._self, this._then);

  final _TopikNilaiModel _self;
  final $Res Function(_TopikNilaiModel) _then;

/// Create a copy of TopikNilaiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? babId = null,Object? kode = null,Object? judul = null,Object? deskripsi = null,Object? topikUrl = null,Object? nilaiQuiz = freezed,}) {
  return _then(_TopikNilaiModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,babId: null == babId ? _self.babId : babId // ignore: cast_nullable_to_non_nullable
as int,kode: null == kode ? _self.kode : kode // ignore: cast_nullable_to_non_nullable
as String,judul: null == judul ? _self.judul : judul // ignore: cast_nullable_to_non_nullable
as String,deskripsi: null == deskripsi ? _self.deskripsi : deskripsi // ignore: cast_nullable_to_non_nullable
as String,topikUrl: null == topikUrl ? _self.topikUrl : topikUrl // ignore: cast_nullable_to_non_nullable
as String,nilaiQuiz: freezed == nilaiQuiz ? _self.nilaiQuiz : nilaiQuiz // ignore: cast_nullable_to_non_nullable
as NilaiQuizModel?,
  ));
}

/// Create a copy of TopikNilaiModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NilaiQuizModelCopyWith<$Res>? get nilaiQuiz {
    if (_self.nilaiQuiz == null) {
    return null;
  }

  return $NilaiQuizModelCopyWith<$Res>(_self.nilaiQuiz!, (value) {
    return _then(_self.copyWith(nilaiQuiz: value));
  });
}
}


/// @nodoc
mixin _$BabNilaiModel {

 int get id; String get nomor; String get judul;@JsonKey(name: 'kelas_id') int get kelasId; String get deskripsi; List<TopikNilaiModel> get topik;
/// Create a copy of BabNilaiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BabNilaiModelCopyWith<BabNilaiModel> get copyWith => _$BabNilaiModelCopyWithImpl<BabNilaiModel>(this as BabNilaiModel, _$identity);

  /// Serializes this BabNilaiModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BabNilaiModel&&(identical(other.id, id) || other.id == id)&&(identical(other.nomor, nomor) || other.nomor == nomor)&&(identical(other.judul, judul) || other.judul == judul)&&(identical(other.kelasId, kelasId) || other.kelasId == kelasId)&&(identical(other.deskripsi, deskripsi) || other.deskripsi == deskripsi)&&const DeepCollectionEquality().equals(other.topik, topik));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,nomor,judul,kelasId,deskripsi,const DeepCollectionEquality().hash(topik));

@override
String toString() {
  return 'BabNilaiModel(id: $id, nomor: $nomor, judul: $judul, kelasId: $kelasId, deskripsi: $deskripsi, topik: $topik)';
}


}

/// @nodoc
abstract mixin class $BabNilaiModelCopyWith<$Res>  {
  factory $BabNilaiModelCopyWith(BabNilaiModel value, $Res Function(BabNilaiModel) _then) = _$BabNilaiModelCopyWithImpl;
@useResult
$Res call({
 int id, String nomor, String judul,@JsonKey(name: 'kelas_id') int kelasId, String deskripsi, List<TopikNilaiModel> topik
});




}
/// @nodoc
class _$BabNilaiModelCopyWithImpl<$Res>
    implements $BabNilaiModelCopyWith<$Res> {
  _$BabNilaiModelCopyWithImpl(this._self, this._then);

  final BabNilaiModel _self;
  final $Res Function(BabNilaiModel) _then;

/// Create a copy of BabNilaiModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? nomor = null,Object? judul = null,Object? kelasId = null,Object? deskripsi = null,Object? topik = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,nomor: null == nomor ? _self.nomor : nomor // ignore: cast_nullable_to_non_nullable
as String,judul: null == judul ? _self.judul : judul // ignore: cast_nullable_to_non_nullable
as String,kelasId: null == kelasId ? _self.kelasId : kelasId // ignore: cast_nullable_to_non_nullable
as int,deskripsi: null == deskripsi ? _self.deskripsi : deskripsi // ignore: cast_nullable_to_non_nullable
as String,topik: null == topik ? _self.topik : topik // ignore: cast_nullable_to_non_nullable
as List<TopikNilaiModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [BabNilaiModel].
extension BabNilaiModelPatterns on BabNilaiModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BabNilaiModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BabNilaiModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BabNilaiModel value)  $default,){
final _that = this;
switch (_that) {
case _BabNilaiModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BabNilaiModel value)?  $default,){
final _that = this;
switch (_that) {
case _BabNilaiModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String nomor,  String judul, @JsonKey(name: 'kelas_id')  int kelasId,  String deskripsi,  List<TopikNilaiModel> topik)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BabNilaiModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String nomor,  String judul, @JsonKey(name: 'kelas_id')  int kelasId,  String deskripsi,  List<TopikNilaiModel> topik)  $default,) {final _that = this;
switch (_that) {
case _BabNilaiModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String nomor,  String judul, @JsonKey(name: 'kelas_id')  int kelasId,  String deskripsi,  List<TopikNilaiModel> topik)?  $default,) {final _that = this;
switch (_that) {
case _BabNilaiModel() when $default != null:
return $default(_that.id,_that.nomor,_that.judul,_that.kelasId,_that.deskripsi,_that.topik);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BabNilaiModel implements BabNilaiModel {
  const _BabNilaiModel({required this.id, required this.nomor, required this.judul, @JsonKey(name: 'kelas_id') required this.kelasId, required this.deskripsi, required final  List<TopikNilaiModel> topik}): _topik = topik;
  factory _BabNilaiModel.fromJson(Map<String, dynamic> json) => _$BabNilaiModelFromJson(json);

@override final  int id;
@override final  String nomor;
@override final  String judul;
@override@JsonKey(name: 'kelas_id') final  int kelasId;
@override final  String deskripsi;
 final  List<TopikNilaiModel> _topik;
@override List<TopikNilaiModel> get topik {
  if (_topik is EqualUnmodifiableListView) return _topik;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_topik);
}


/// Create a copy of BabNilaiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BabNilaiModelCopyWith<_BabNilaiModel> get copyWith => __$BabNilaiModelCopyWithImpl<_BabNilaiModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BabNilaiModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BabNilaiModel&&(identical(other.id, id) || other.id == id)&&(identical(other.nomor, nomor) || other.nomor == nomor)&&(identical(other.judul, judul) || other.judul == judul)&&(identical(other.kelasId, kelasId) || other.kelasId == kelasId)&&(identical(other.deskripsi, deskripsi) || other.deskripsi == deskripsi)&&const DeepCollectionEquality().equals(other._topik, _topik));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,nomor,judul,kelasId,deskripsi,const DeepCollectionEquality().hash(_topik));

@override
String toString() {
  return 'BabNilaiModel(id: $id, nomor: $nomor, judul: $judul, kelasId: $kelasId, deskripsi: $deskripsi, topik: $topik)';
}


}

/// @nodoc
abstract mixin class _$BabNilaiModelCopyWith<$Res> implements $BabNilaiModelCopyWith<$Res> {
  factory _$BabNilaiModelCopyWith(_BabNilaiModel value, $Res Function(_BabNilaiModel) _then) = __$BabNilaiModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String nomor, String judul,@JsonKey(name: 'kelas_id') int kelasId, String deskripsi, List<TopikNilaiModel> topik
});




}
/// @nodoc
class __$BabNilaiModelCopyWithImpl<$Res>
    implements _$BabNilaiModelCopyWith<$Res> {
  __$BabNilaiModelCopyWithImpl(this._self, this._then);

  final _BabNilaiModel _self;
  final $Res Function(_BabNilaiModel) _then;

/// Create a copy of BabNilaiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? nomor = null,Object? judul = null,Object? kelasId = null,Object? deskripsi = null,Object? topik = null,}) {
  return _then(_BabNilaiModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,nomor: null == nomor ? _self.nomor : nomor // ignore: cast_nullable_to_non_nullable
as String,judul: null == judul ? _self.judul : judul // ignore: cast_nullable_to_non_nullable
as String,kelasId: null == kelasId ? _self.kelasId : kelasId // ignore: cast_nullable_to_non_nullable
as int,deskripsi: null == deskripsi ? _self.deskripsi : deskripsi // ignore: cast_nullable_to_non_nullable
as String,topik: null == topik ? _self._topik : topik // ignore: cast_nullable_to_non_nullable
as List<TopikNilaiModel>,
  ));
}


}

// dart format on
