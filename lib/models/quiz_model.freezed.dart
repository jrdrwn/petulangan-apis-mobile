// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

QuizModel _$QuizModelFromJson(Map<String, dynamic> json) {
  return _QuizModel.fromJson(json);
}

/// @nodoc
mixin _$QuizModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'topik_id')
  int get topikId => throw _privateConstructorUsedError;
  String get nama => throw _privateConstructorUsedError;
  @JsonKey(name: 'pilihan_ganda')
  Map<String, String> get pilihanGanda => throw _privateConstructorUsedError;
  String get jawaban => throw _privateConstructorUsedError;
  int get durasi => throw _privateConstructorUsedError;

  /// Serializes this QuizModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuizModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuizModelCopyWith<QuizModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizModelCopyWith<$Res> {
  factory $QuizModelCopyWith(QuizModel value, $Res Function(QuizModel) then) =
      _$QuizModelCopyWithImpl<$Res, QuizModel>;
  @useResult
  $Res call({
    int id,
    @JsonKey(name: 'topik_id') int topikId,
    String nama,
    @JsonKey(name: 'pilihan_ganda') Map<String, String> pilihanGanda,
    String jawaban,
    int durasi,
  });
}

/// @nodoc
class _$QuizModelCopyWithImpl<$Res, $Val extends QuizModel>
    implements $QuizModelCopyWith<$Res> {
  _$QuizModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuizModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? topikId = null,
    Object? nama = null,
    Object? pilihanGanda = null,
    Object? jawaban = null,
    Object? durasi = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            topikId: null == topikId
                ? _value.topikId
                : topikId // ignore: cast_nullable_to_non_nullable
                      as int,
            nama: null == nama
                ? _value.nama
                : nama // ignore: cast_nullable_to_non_nullable
                      as String,
            pilihanGanda: null == pilihanGanda
                ? _value.pilihanGanda
                : pilihanGanda // ignore: cast_nullable_to_non_nullable
                      as Map<String, String>,
            jawaban: null == jawaban
                ? _value.jawaban
                : jawaban // ignore: cast_nullable_to_non_nullable
                      as String,
            durasi: null == durasi
                ? _value.durasi
                : durasi // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$QuizModelImplCopyWith<$Res>
    implements $QuizModelCopyWith<$Res> {
  factory _$$QuizModelImplCopyWith(
    _$QuizModelImpl value,
    $Res Function(_$QuizModelImpl) then,
  ) = __$$QuizModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    @JsonKey(name: 'topik_id') int topikId,
    String nama,
    @JsonKey(name: 'pilihan_ganda') Map<String, String> pilihanGanda,
    String jawaban,
    int durasi,
  });
}

/// @nodoc
class __$$QuizModelImplCopyWithImpl<$Res>
    extends _$QuizModelCopyWithImpl<$Res, _$QuizModelImpl>
    implements _$$QuizModelImplCopyWith<$Res> {
  __$$QuizModelImplCopyWithImpl(
    _$QuizModelImpl _value,
    $Res Function(_$QuizModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of QuizModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? topikId = null,
    Object? nama = null,
    Object? pilihanGanda = null,
    Object? jawaban = null,
    Object? durasi = null,
  }) {
    return _then(
      _$QuizModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        topikId: null == topikId
            ? _value.topikId
            : topikId // ignore: cast_nullable_to_non_nullable
                  as int,
        nama: null == nama
            ? _value.nama
            : nama // ignore: cast_nullable_to_non_nullable
                  as String,
        pilihanGanda: null == pilihanGanda
            ? _value._pilihanGanda
            : pilihanGanda // ignore: cast_nullable_to_non_nullable
                  as Map<String, String>,
        jawaban: null == jawaban
            ? _value.jawaban
            : jawaban // ignore: cast_nullable_to_non_nullable
                  as String,
        durasi: null == durasi
            ? _value.durasi
            : durasi // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$QuizModelImpl implements _QuizModel {
  const _$QuizModelImpl({
    required this.id,
    @JsonKey(name: 'topik_id') required this.topikId,
    required this.nama,
    @JsonKey(name: 'pilihan_ganda')
    required final Map<String, String> pilihanGanda,
    required this.jawaban,
    required this.durasi,
  }) : _pilihanGanda = pilihanGanda;

  factory _$QuizModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuizModelImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'topik_id')
  final int topikId;
  @override
  final String nama;
  final Map<String, String> _pilihanGanda;
  @override
  @JsonKey(name: 'pilihan_ganda')
  Map<String, String> get pilihanGanda {
    if (_pilihanGanda is EqualUnmodifiableMapView) return _pilihanGanda;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_pilihanGanda);
  }

  @override
  final String jawaban;
  @override
  final int durasi;

  @override
  String toString() {
    return 'QuizModel(id: $id, topikId: $topikId, nama: $nama, pilihanGanda: $pilihanGanda, jawaban: $jawaban, durasi: $durasi)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.topikId, topikId) || other.topikId == topikId) &&
            (identical(other.nama, nama) || other.nama == nama) &&
            const DeepCollectionEquality().equals(
              other._pilihanGanda,
              _pilihanGanda,
            ) &&
            (identical(other.jawaban, jawaban) || other.jawaban == jawaban) &&
            (identical(other.durasi, durasi) || other.durasi == durasi));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    topikId,
    nama,
    const DeepCollectionEquality().hash(_pilihanGanda),
    jawaban,
    durasi,
  );

  /// Create a copy of QuizModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizModelImplCopyWith<_$QuizModelImpl> get copyWith =>
      __$$QuizModelImplCopyWithImpl<_$QuizModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuizModelImplToJson(this);
  }
}

abstract class _QuizModel implements QuizModel {
  const factory _QuizModel({
    required final int id,
    @JsonKey(name: 'topik_id') required final int topikId,
    required final String nama,
    @JsonKey(name: 'pilihan_ganda')
    required final Map<String, String> pilihanGanda,
    required final String jawaban,
    required final int durasi,
  }) = _$QuizModelImpl;

  factory _QuizModel.fromJson(Map<String, dynamic> json) =
      _$QuizModelImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'topik_id')
  int get topikId;
  @override
  String get nama;
  @override
  @JsonKey(name: 'pilihan_ganda')
  Map<String, String> get pilihanGanda;
  @override
  String get jawaban;
  @override
  int get durasi;

  /// Create a copy of QuizModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuizModelImplCopyWith<_$QuizModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

QuizAnswerItem _$QuizAnswerItemFromJson(Map<String, dynamic> json) {
  return _QuizAnswerItem.fromJson(json);
}

/// @nodoc
mixin _$QuizAnswerItem {
  @JsonKey(name: 'quiz_id')
  int get quizId => throw _privateConstructorUsedError;
  String get jawaban => throw _privateConstructorUsedError;

  /// Serializes this QuizAnswerItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuizAnswerItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuizAnswerItemCopyWith<QuizAnswerItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizAnswerItemCopyWith<$Res> {
  factory $QuizAnswerItemCopyWith(
    QuizAnswerItem value,
    $Res Function(QuizAnswerItem) then,
  ) = _$QuizAnswerItemCopyWithImpl<$Res, QuizAnswerItem>;
  @useResult
  $Res call({@JsonKey(name: 'quiz_id') int quizId, String jawaban});
}

/// @nodoc
class _$QuizAnswerItemCopyWithImpl<$Res, $Val extends QuizAnswerItem>
    implements $QuizAnswerItemCopyWith<$Res> {
  _$QuizAnswerItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuizAnswerItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? quizId = null, Object? jawaban = null}) {
    return _then(
      _value.copyWith(
            quizId: null == quizId
                ? _value.quizId
                : quizId // ignore: cast_nullable_to_non_nullable
                      as int,
            jawaban: null == jawaban
                ? _value.jawaban
                : jawaban // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$QuizAnswerItemImplCopyWith<$Res>
    implements $QuizAnswerItemCopyWith<$Res> {
  factory _$$QuizAnswerItemImplCopyWith(
    _$QuizAnswerItemImpl value,
    $Res Function(_$QuizAnswerItemImpl) then,
  ) = __$$QuizAnswerItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'quiz_id') int quizId, String jawaban});
}

/// @nodoc
class __$$QuizAnswerItemImplCopyWithImpl<$Res>
    extends _$QuizAnswerItemCopyWithImpl<$Res, _$QuizAnswerItemImpl>
    implements _$$QuizAnswerItemImplCopyWith<$Res> {
  __$$QuizAnswerItemImplCopyWithImpl(
    _$QuizAnswerItemImpl _value,
    $Res Function(_$QuizAnswerItemImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of QuizAnswerItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? quizId = null, Object? jawaban = null}) {
    return _then(
      _$QuizAnswerItemImpl(
        quizId: null == quizId
            ? _value.quizId
            : quizId // ignore: cast_nullable_to_non_nullable
                  as int,
        jawaban: null == jawaban
            ? _value.jawaban
            : jawaban // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$QuizAnswerItemImpl implements _QuizAnswerItem {
  const _$QuizAnswerItemImpl({
    @JsonKey(name: 'quiz_id') required this.quizId,
    required this.jawaban,
  });

  factory _$QuizAnswerItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuizAnswerItemImplFromJson(json);

  @override
  @JsonKey(name: 'quiz_id')
  final int quizId;
  @override
  final String jawaban;

  @override
  String toString() {
    return 'QuizAnswerItem(quizId: $quizId, jawaban: $jawaban)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizAnswerItemImpl &&
            (identical(other.quizId, quizId) || other.quizId == quizId) &&
            (identical(other.jawaban, jawaban) || other.jawaban == jawaban));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, quizId, jawaban);

  /// Create a copy of QuizAnswerItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizAnswerItemImplCopyWith<_$QuizAnswerItemImpl> get copyWith =>
      __$$QuizAnswerItemImplCopyWithImpl<_$QuizAnswerItemImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$QuizAnswerItemImplToJson(this);
  }
}

abstract class _QuizAnswerItem implements QuizAnswerItem {
  const factory _QuizAnswerItem({
    @JsonKey(name: 'quiz_id') required final int quizId,
    required final String jawaban,
  }) = _$QuizAnswerItemImpl;

  factory _QuizAnswerItem.fromJson(Map<String, dynamic> json) =
      _$QuizAnswerItemImpl.fromJson;

  @override
  @JsonKey(name: 'quiz_id')
  int get quizId;
  @override
  String get jawaban;

  /// Create a copy of QuizAnswerItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuizAnswerItemImplCopyWith<_$QuizAnswerItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

QuizSubmitRequest _$QuizSubmitRequestFromJson(Map<String, dynamic> json) {
  return _QuizSubmitRequest.fromJson(json);
}

/// @nodoc
mixin _$QuizSubmitRequest {
  @JsonKey(name: 'hasil_quiz')
  List<QuizAnswerItem> get hasilQuiz => throw _privateConstructorUsedError;

  /// Serializes this QuizSubmitRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuizSubmitRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuizSubmitRequestCopyWith<QuizSubmitRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizSubmitRequestCopyWith<$Res> {
  factory $QuizSubmitRequestCopyWith(
    QuizSubmitRequest value,
    $Res Function(QuizSubmitRequest) then,
  ) = _$QuizSubmitRequestCopyWithImpl<$Res, QuizSubmitRequest>;
  @useResult
  $Res call({@JsonKey(name: 'hasil_quiz') List<QuizAnswerItem> hasilQuiz});
}

/// @nodoc
class _$QuizSubmitRequestCopyWithImpl<$Res, $Val extends QuizSubmitRequest>
    implements $QuizSubmitRequestCopyWith<$Res> {
  _$QuizSubmitRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuizSubmitRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? hasilQuiz = null}) {
    return _then(
      _value.copyWith(
            hasilQuiz: null == hasilQuiz
                ? _value.hasilQuiz
                : hasilQuiz // ignore: cast_nullable_to_non_nullable
                      as List<QuizAnswerItem>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$QuizSubmitRequestImplCopyWith<$Res>
    implements $QuizSubmitRequestCopyWith<$Res> {
  factory _$$QuizSubmitRequestImplCopyWith(
    _$QuizSubmitRequestImpl value,
    $Res Function(_$QuizSubmitRequestImpl) then,
  ) = __$$QuizSubmitRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'hasil_quiz') List<QuizAnswerItem> hasilQuiz});
}

/// @nodoc
class __$$QuizSubmitRequestImplCopyWithImpl<$Res>
    extends _$QuizSubmitRequestCopyWithImpl<$Res, _$QuizSubmitRequestImpl>
    implements _$$QuizSubmitRequestImplCopyWith<$Res> {
  __$$QuizSubmitRequestImplCopyWithImpl(
    _$QuizSubmitRequestImpl _value,
    $Res Function(_$QuizSubmitRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of QuizSubmitRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? hasilQuiz = null}) {
    return _then(
      _$QuizSubmitRequestImpl(
        hasilQuiz: null == hasilQuiz
            ? _value._hasilQuiz
            : hasilQuiz // ignore: cast_nullable_to_non_nullable
                  as List<QuizAnswerItem>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$QuizSubmitRequestImpl implements _QuizSubmitRequest {
  const _$QuizSubmitRequestImpl({
    @JsonKey(name: 'hasil_quiz') required final List<QuizAnswerItem> hasilQuiz,
  }) : _hasilQuiz = hasilQuiz;

  factory _$QuizSubmitRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuizSubmitRequestImplFromJson(json);

  final List<QuizAnswerItem> _hasilQuiz;
  @override
  @JsonKey(name: 'hasil_quiz')
  List<QuizAnswerItem> get hasilQuiz {
    if (_hasilQuiz is EqualUnmodifiableListView) return _hasilQuiz;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hasilQuiz);
  }

  @override
  String toString() {
    return 'QuizSubmitRequest(hasilQuiz: $hasilQuiz)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizSubmitRequestImpl &&
            const DeepCollectionEquality().equals(
              other._hasilQuiz,
              _hasilQuiz,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_hasilQuiz));

  /// Create a copy of QuizSubmitRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizSubmitRequestImplCopyWith<_$QuizSubmitRequestImpl> get copyWith =>
      __$$QuizSubmitRequestImplCopyWithImpl<_$QuizSubmitRequestImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$QuizSubmitRequestImplToJson(this);
  }
}

abstract class _QuizSubmitRequest implements QuizSubmitRequest {
  const factory _QuizSubmitRequest({
    @JsonKey(name: 'hasil_quiz') required final List<QuizAnswerItem> hasilQuiz,
  }) = _$QuizSubmitRequestImpl;

  factory _QuizSubmitRequest.fromJson(Map<String, dynamic> json) =
      _$QuizSubmitRequestImpl.fromJson;

  @override
  @JsonKey(name: 'hasil_quiz')
  List<QuizAnswerItem> get hasilQuiz;

  /// Create a copy of QuizSubmitRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuizSubmitRequestImplCopyWith<_$QuizSubmitRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

QuizSubmitResponse _$QuizSubmitResponseFromJson(Map<String, dynamic> json) {
  return _QuizSubmitResponse.fromJson(json);
}

/// @nodoc
mixin _$QuizSubmitResponse {
  String get message => throw _privateConstructorUsedError;

  /// Serializes this QuizSubmitResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuizSubmitResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuizSubmitResponseCopyWith<QuizSubmitResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizSubmitResponseCopyWith<$Res> {
  factory $QuizSubmitResponseCopyWith(
    QuizSubmitResponse value,
    $Res Function(QuizSubmitResponse) then,
  ) = _$QuizSubmitResponseCopyWithImpl<$Res, QuizSubmitResponse>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$QuizSubmitResponseCopyWithImpl<$Res, $Val extends QuizSubmitResponse>
    implements $QuizSubmitResponseCopyWith<$Res> {
  _$QuizSubmitResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuizSubmitResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _value.copyWith(
            message: null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$QuizSubmitResponseImplCopyWith<$Res>
    implements $QuizSubmitResponseCopyWith<$Res> {
  factory _$$QuizSubmitResponseImplCopyWith(
    _$QuizSubmitResponseImpl value,
    $Res Function(_$QuizSubmitResponseImpl) then,
  ) = __$$QuizSubmitResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$QuizSubmitResponseImplCopyWithImpl<$Res>
    extends _$QuizSubmitResponseCopyWithImpl<$Res, _$QuizSubmitResponseImpl>
    implements _$$QuizSubmitResponseImplCopyWith<$Res> {
  __$$QuizSubmitResponseImplCopyWithImpl(
    _$QuizSubmitResponseImpl _value,
    $Res Function(_$QuizSubmitResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of QuizSubmitResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$QuizSubmitResponseImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$QuizSubmitResponseImpl implements _QuizSubmitResponse {
  const _$QuizSubmitResponseImpl({required this.message});

  factory _$QuizSubmitResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuizSubmitResponseImplFromJson(json);

  @override
  final String message;

  @override
  String toString() {
    return 'QuizSubmitResponse(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizSubmitResponseImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of QuizSubmitResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizSubmitResponseImplCopyWith<_$QuizSubmitResponseImpl> get copyWith =>
      __$$QuizSubmitResponseImplCopyWithImpl<_$QuizSubmitResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$QuizSubmitResponseImplToJson(this);
  }
}

abstract class _QuizSubmitResponse implements QuizSubmitResponse {
  const factory _QuizSubmitResponse({required final String message}) =
      _$QuizSubmitResponseImpl;

  factory _QuizSubmitResponse.fromJson(Map<String, dynamic> json) =
      _$QuizSubmitResponseImpl.fromJson;

  @override
  String get message;

  /// Create a copy of QuizSubmitResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuizSubmitResponseImplCopyWith<_$QuizSubmitResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
