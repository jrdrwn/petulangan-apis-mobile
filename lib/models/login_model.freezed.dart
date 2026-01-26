// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

LoginRequest _$LoginRequestFromJson(Map<String, dynamic> json) {
  return _LoginRequest.fromJson(json);
}

/// @nodoc
mixin _$LoginRequest {
  String get nisn => throw _privateConstructorUsedError;

  /// Serializes this LoginRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginRequestCopyWith<LoginRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginRequestCopyWith<$Res> {
  factory $LoginRequestCopyWith(
    LoginRequest value,
    $Res Function(LoginRequest) then,
  ) = _$LoginRequestCopyWithImpl<$Res, LoginRequest>;
  @useResult
  $Res call({String nisn});
}

/// @nodoc
class _$LoginRequestCopyWithImpl<$Res, $Val extends LoginRequest>
    implements $LoginRequestCopyWith<$Res> {
  _$LoginRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? nisn = null}) {
    return _then(
      _value.copyWith(
            nisn: null == nisn
                ? _value.nisn
                : nisn // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LoginRequestImplCopyWith<$Res>
    implements $LoginRequestCopyWith<$Res> {
  factory _$$LoginRequestImplCopyWith(
    _$LoginRequestImpl value,
    $Res Function(_$LoginRequestImpl) then,
  ) = __$$LoginRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String nisn});
}

/// @nodoc
class __$$LoginRequestImplCopyWithImpl<$Res>
    extends _$LoginRequestCopyWithImpl<$Res, _$LoginRequestImpl>
    implements _$$LoginRequestImplCopyWith<$Res> {
  __$$LoginRequestImplCopyWithImpl(
    _$LoginRequestImpl _value,
    $Res Function(_$LoginRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? nisn = null}) {
    return _then(
      _$LoginRequestImpl(
        nisn: null == nisn
            ? _value.nisn
            : nisn // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginRequestImpl implements _LoginRequest {
  const _$LoginRequestImpl({required this.nisn});

  factory _$LoginRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginRequestImplFromJson(json);

  @override
  final String nisn;

  @override
  String toString() {
    return 'LoginRequest(nisn: $nisn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginRequestImpl &&
            (identical(other.nisn, nisn) || other.nisn == nisn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, nisn);

  /// Create a copy of LoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginRequestImplCopyWith<_$LoginRequestImpl> get copyWith =>
      __$$LoginRequestImplCopyWithImpl<_$LoginRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginRequestImplToJson(this);
  }
}

abstract class _LoginRequest implements LoginRequest {
  const factory _LoginRequest({required final String nisn}) =
      _$LoginRequestImpl;

  factory _LoginRequest.fromJson(Map<String, dynamic> json) =
      _$LoginRequestImpl.fromJson;

  @override
  String get nisn;

  /// Create a copy of LoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginRequestImplCopyWith<_$LoginRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) {
  return _LoginResponse.fromJson(json);
}

/// @nodoc
mixin _$LoginResponse {
  String get token => throw _privateConstructorUsedError;
  @JsonKey(name: 'peserta_didik')
  PesertaDidikData get pesertaDidik => throw _privateConstructorUsedError;

  /// Serializes this LoginResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginResponseCopyWith<LoginResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginResponseCopyWith<$Res> {
  factory $LoginResponseCopyWith(
    LoginResponse value,
    $Res Function(LoginResponse) then,
  ) = _$LoginResponseCopyWithImpl<$Res, LoginResponse>;
  @useResult
  $Res call({
    String token,
    @JsonKey(name: 'peserta_didik') PesertaDidikData pesertaDidik,
  });

  $PesertaDidikDataCopyWith<$Res> get pesertaDidik;
}

/// @nodoc
class _$LoginResponseCopyWithImpl<$Res, $Val extends LoginResponse>
    implements $LoginResponseCopyWith<$Res> {
  _$LoginResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? token = null, Object? pesertaDidik = null}) {
    return _then(
      _value.copyWith(
            token: null == token
                ? _value.token
                : token // ignore: cast_nullable_to_non_nullable
                      as String,
            pesertaDidik: null == pesertaDidik
                ? _value.pesertaDidik
                : pesertaDidik // ignore: cast_nullable_to_non_nullable
                      as PesertaDidikData,
          )
          as $Val,
    );
  }

  /// Create a copy of LoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PesertaDidikDataCopyWith<$Res> get pesertaDidik {
    return $PesertaDidikDataCopyWith<$Res>(_value.pesertaDidik, (value) {
      return _then(_value.copyWith(pesertaDidik: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoginResponseImplCopyWith<$Res>
    implements $LoginResponseCopyWith<$Res> {
  factory _$$LoginResponseImplCopyWith(
    _$LoginResponseImpl value,
    $Res Function(_$LoginResponseImpl) then,
  ) = __$$LoginResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String token,
    @JsonKey(name: 'peserta_didik') PesertaDidikData pesertaDidik,
  });

  @override
  $PesertaDidikDataCopyWith<$Res> get pesertaDidik;
}

/// @nodoc
class __$$LoginResponseImplCopyWithImpl<$Res>
    extends _$LoginResponseCopyWithImpl<$Res, _$LoginResponseImpl>
    implements _$$LoginResponseImplCopyWith<$Res> {
  __$$LoginResponseImplCopyWithImpl(
    _$LoginResponseImpl _value,
    $Res Function(_$LoginResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? token = null, Object? pesertaDidik = null}) {
    return _then(
      _$LoginResponseImpl(
        token: null == token
            ? _value.token
            : token // ignore: cast_nullable_to_non_nullable
                  as String,
        pesertaDidik: null == pesertaDidik
            ? _value.pesertaDidik
            : pesertaDidik // ignore: cast_nullable_to_non_nullable
                  as PesertaDidikData,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginResponseImpl implements _LoginResponse {
  const _$LoginResponseImpl({
    required this.token,
    @JsonKey(name: 'peserta_didik') required this.pesertaDidik,
  });

  factory _$LoginResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginResponseImplFromJson(json);

  @override
  final String token;
  @override
  @JsonKey(name: 'peserta_didik')
  final PesertaDidikData pesertaDidik;

  @override
  String toString() {
    return 'LoginResponse(token: $token, pesertaDidik: $pesertaDidik)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginResponseImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.pesertaDidik, pesertaDidik) ||
                other.pesertaDidik == pesertaDidik));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, token, pesertaDidik);

  /// Create a copy of LoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginResponseImplCopyWith<_$LoginResponseImpl> get copyWith =>
      __$$LoginResponseImplCopyWithImpl<_$LoginResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginResponseImplToJson(this);
  }
}

abstract class _LoginResponse implements LoginResponse {
  const factory _LoginResponse({
    required final String token,
    @JsonKey(name: 'peserta_didik')
    required final PesertaDidikData pesertaDidik,
  }) = _$LoginResponseImpl;

  factory _LoginResponse.fromJson(Map<String, dynamic> json) =
      _$LoginResponseImpl.fromJson;

  @override
  String get token;
  @override
  @JsonKey(name: 'peserta_didik')
  PesertaDidikData get pesertaDidik;

  /// Create a copy of LoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginResponseImplCopyWith<_$LoginResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PesertaDidikData _$PesertaDidikDataFromJson(Map<String, dynamic> json) {
  return _PesertaDidikData.fromJson(json);
}

/// @nodoc
mixin _$PesertaDidikData {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'nama_lengkap')
  String get namaLengkap => throw _privateConstructorUsedError;
  String get nisn => throw _privateConstructorUsedError;
  @JsonKey(name: 'kelas_id')
  int get kelasId => throw _privateConstructorUsedError;

  /// Serializes this PesertaDidikData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PesertaDidikData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PesertaDidikDataCopyWith<PesertaDidikData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PesertaDidikDataCopyWith<$Res> {
  factory $PesertaDidikDataCopyWith(
    PesertaDidikData value,
    $Res Function(PesertaDidikData) then,
  ) = _$PesertaDidikDataCopyWithImpl<$Res, PesertaDidikData>;
  @useResult
  $Res call({
    int id,
    @JsonKey(name: 'nama_lengkap') String namaLengkap,
    String nisn,
    @JsonKey(name: 'kelas_id') int kelasId,
  });
}

/// @nodoc
class _$PesertaDidikDataCopyWithImpl<$Res, $Val extends PesertaDidikData>
    implements $PesertaDidikDataCopyWith<$Res> {
  _$PesertaDidikDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PesertaDidikData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? namaLengkap = null,
    Object? nisn = null,
    Object? kelasId = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            namaLengkap: null == namaLengkap
                ? _value.namaLengkap
                : namaLengkap // ignore: cast_nullable_to_non_nullable
                      as String,
            nisn: null == nisn
                ? _value.nisn
                : nisn // ignore: cast_nullable_to_non_nullable
                      as String,
            kelasId: null == kelasId
                ? _value.kelasId
                : kelasId // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PesertaDidikDataImplCopyWith<$Res>
    implements $PesertaDidikDataCopyWith<$Res> {
  factory _$$PesertaDidikDataImplCopyWith(
    _$PesertaDidikDataImpl value,
    $Res Function(_$PesertaDidikDataImpl) then,
  ) = __$$PesertaDidikDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    @JsonKey(name: 'nama_lengkap') String namaLengkap,
    String nisn,
    @JsonKey(name: 'kelas_id') int kelasId,
  });
}

/// @nodoc
class __$$PesertaDidikDataImplCopyWithImpl<$Res>
    extends _$PesertaDidikDataCopyWithImpl<$Res, _$PesertaDidikDataImpl>
    implements _$$PesertaDidikDataImplCopyWith<$Res> {
  __$$PesertaDidikDataImplCopyWithImpl(
    _$PesertaDidikDataImpl _value,
    $Res Function(_$PesertaDidikDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PesertaDidikData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? namaLengkap = null,
    Object? nisn = null,
    Object? kelasId = null,
  }) {
    return _then(
      _$PesertaDidikDataImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        namaLengkap: null == namaLengkap
            ? _value.namaLengkap
            : namaLengkap // ignore: cast_nullable_to_non_nullable
                  as String,
        nisn: null == nisn
            ? _value.nisn
            : nisn // ignore: cast_nullable_to_non_nullable
                  as String,
        kelasId: null == kelasId
            ? _value.kelasId
            : kelasId // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PesertaDidikDataImpl implements _PesertaDidikData {
  const _$PesertaDidikDataImpl({
    required this.id,
    @JsonKey(name: 'nama_lengkap') required this.namaLengkap,
    required this.nisn,
    @JsonKey(name: 'kelas_id') required this.kelasId,
  });

  factory _$PesertaDidikDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PesertaDidikDataImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'nama_lengkap')
  final String namaLengkap;
  @override
  final String nisn;
  @override
  @JsonKey(name: 'kelas_id')
  final int kelasId;

  @override
  String toString() {
    return 'PesertaDidikData(id: $id, namaLengkap: $namaLengkap, nisn: $nisn, kelasId: $kelasId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PesertaDidikDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.namaLengkap, namaLengkap) ||
                other.namaLengkap == namaLengkap) &&
            (identical(other.nisn, nisn) || other.nisn == nisn) &&
            (identical(other.kelasId, kelasId) || other.kelasId == kelasId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, namaLengkap, nisn, kelasId);

  /// Create a copy of PesertaDidikData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PesertaDidikDataImplCopyWith<_$PesertaDidikDataImpl> get copyWith =>
      __$$PesertaDidikDataImplCopyWithImpl<_$PesertaDidikDataImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PesertaDidikDataImplToJson(this);
  }
}

abstract class _PesertaDidikData implements PesertaDidikData {
  const factory _PesertaDidikData({
    required final int id,
    @JsonKey(name: 'nama_lengkap') required final String namaLengkap,
    required final String nisn,
    @JsonKey(name: 'kelas_id') required final int kelasId,
  }) = _$PesertaDidikDataImpl;

  factory _PesertaDidikData.fromJson(Map<String, dynamic> json) =
      _$PesertaDidikDataImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'nama_lengkap')
  String get namaLengkap;
  @override
  String get nisn;
  @override
  @JsonKey(name: 'kelas_id')
  int get kelasId;

  /// Create a copy of PesertaDidikData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PesertaDidikDataImplCopyWith<_$PesertaDidikDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LoginGuruRequest _$LoginGuruRequestFromJson(Map<String, dynamic> json) {
  return _LoginGuruRequest.fromJson(json);
}

/// @nodoc
mixin _$LoginGuruRequest {
  String get nip => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @JsonKey(name: 'sekolah_id')
  int get sekolahId => throw _privateConstructorUsedError;

  /// Serializes this LoginGuruRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LoginGuruRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginGuruRequestCopyWith<LoginGuruRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginGuruRequestCopyWith<$Res> {
  factory $LoginGuruRequestCopyWith(
    LoginGuruRequest value,
    $Res Function(LoginGuruRequest) then,
  ) = _$LoginGuruRequestCopyWithImpl<$Res, LoginGuruRequest>;
  @useResult
  $Res call({
    String nip,
    String password,
    @JsonKey(name: 'sekolah_id') int sekolahId,
  });
}

/// @nodoc
class _$LoginGuruRequestCopyWithImpl<$Res, $Val extends LoginGuruRequest>
    implements $LoginGuruRequestCopyWith<$Res> {
  _$LoginGuruRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginGuruRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nip = null,
    Object? password = null,
    Object? sekolahId = null,
  }) {
    return _then(
      _value.copyWith(
            nip: null == nip
                ? _value.nip
                : nip // ignore: cast_nullable_to_non_nullable
                      as String,
            password: null == password
                ? _value.password
                : password // ignore: cast_nullable_to_non_nullable
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
abstract class _$$LoginGuruRequestImplCopyWith<$Res>
    implements $LoginGuruRequestCopyWith<$Res> {
  factory _$$LoginGuruRequestImplCopyWith(
    _$LoginGuruRequestImpl value,
    $Res Function(_$LoginGuruRequestImpl) then,
  ) = __$$LoginGuruRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String nip,
    String password,
    @JsonKey(name: 'sekolah_id') int sekolahId,
  });
}

/// @nodoc
class __$$LoginGuruRequestImplCopyWithImpl<$Res>
    extends _$LoginGuruRequestCopyWithImpl<$Res, _$LoginGuruRequestImpl>
    implements _$$LoginGuruRequestImplCopyWith<$Res> {
  __$$LoginGuruRequestImplCopyWithImpl(
    _$LoginGuruRequestImpl _value,
    $Res Function(_$LoginGuruRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LoginGuruRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nip = null,
    Object? password = null,
    Object? sekolahId = null,
  }) {
    return _then(
      _$LoginGuruRequestImpl(
        nip: null == nip
            ? _value.nip
            : nip // ignore: cast_nullable_to_non_nullable
                  as String,
        password: null == password
            ? _value.password
            : password // ignore: cast_nullable_to_non_nullable
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
class _$LoginGuruRequestImpl implements _LoginGuruRequest {
  const _$LoginGuruRequestImpl({
    required this.nip,
    required this.password,
    @JsonKey(name: 'sekolah_id') required this.sekolahId,
  });

  factory _$LoginGuruRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginGuruRequestImplFromJson(json);

  @override
  final String nip;
  @override
  final String password;
  @override
  @JsonKey(name: 'sekolah_id')
  final int sekolahId;

  @override
  String toString() {
    return 'LoginGuruRequest(nip: $nip, password: $password, sekolahId: $sekolahId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginGuruRequestImpl &&
            (identical(other.nip, nip) || other.nip == nip) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.sekolahId, sekolahId) ||
                other.sekolahId == sekolahId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, nip, password, sekolahId);

  /// Create a copy of LoginGuruRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginGuruRequestImplCopyWith<_$LoginGuruRequestImpl> get copyWith =>
      __$$LoginGuruRequestImplCopyWithImpl<_$LoginGuruRequestImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginGuruRequestImplToJson(this);
  }
}

abstract class _LoginGuruRequest implements LoginGuruRequest {
  const factory _LoginGuruRequest({
    required final String nip,
    required final String password,
    @JsonKey(name: 'sekolah_id') required final int sekolahId,
  }) = _$LoginGuruRequestImpl;

  factory _LoginGuruRequest.fromJson(Map<String, dynamic> json) =
      _$LoginGuruRequestImpl.fromJson;

  @override
  String get nip;
  @override
  String get password;
  @override
  @JsonKey(name: 'sekolah_id')
  int get sekolahId;

  /// Create a copy of LoginGuruRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginGuruRequestImplCopyWith<_$LoginGuruRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LoginGuruResponse _$LoginGuruResponseFromJson(Map<String, dynamic> json) {
  return _LoginGuruResponse.fromJson(json);
}

/// @nodoc
mixin _$LoginGuruResponse {
  String get token => throw _privateConstructorUsedError;
  GuruData get guru => throw _privateConstructorUsedError;

  /// Serializes this LoginGuruResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LoginGuruResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginGuruResponseCopyWith<LoginGuruResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginGuruResponseCopyWith<$Res> {
  factory $LoginGuruResponseCopyWith(
    LoginGuruResponse value,
    $Res Function(LoginGuruResponse) then,
  ) = _$LoginGuruResponseCopyWithImpl<$Res, LoginGuruResponse>;
  @useResult
  $Res call({String token, GuruData guru});

  $GuruDataCopyWith<$Res> get guru;
}

/// @nodoc
class _$LoginGuruResponseCopyWithImpl<$Res, $Val extends LoginGuruResponse>
    implements $LoginGuruResponseCopyWith<$Res> {
  _$LoginGuruResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginGuruResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? token = null, Object? guru = null}) {
    return _then(
      _value.copyWith(
            token: null == token
                ? _value.token
                : token // ignore: cast_nullable_to_non_nullable
                      as String,
            guru: null == guru
                ? _value.guru
                : guru // ignore: cast_nullable_to_non_nullable
                      as GuruData,
          )
          as $Val,
    );
  }

  /// Create a copy of LoginGuruResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GuruDataCopyWith<$Res> get guru {
    return $GuruDataCopyWith<$Res>(_value.guru, (value) {
      return _then(_value.copyWith(guru: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoginGuruResponseImplCopyWith<$Res>
    implements $LoginGuruResponseCopyWith<$Res> {
  factory _$$LoginGuruResponseImplCopyWith(
    _$LoginGuruResponseImpl value,
    $Res Function(_$LoginGuruResponseImpl) then,
  ) = __$$LoginGuruResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String token, GuruData guru});

  @override
  $GuruDataCopyWith<$Res> get guru;
}

/// @nodoc
class __$$LoginGuruResponseImplCopyWithImpl<$Res>
    extends _$LoginGuruResponseCopyWithImpl<$Res, _$LoginGuruResponseImpl>
    implements _$$LoginGuruResponseImplCopyWith<$Res> {
  __$$LoginGuruResponseImplCopyWithImpl(
    _$LoginGuruResponseImpl _value,
    $Res Function(_$LoginGuruResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LoginGuruResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? token = null, Object? guru = null}) {
    return _then(
      _$LoginGuruResponseImpl(
        token: null == token
            ? _value.token
            : token // ignore: cast_nullable_to_non_nullable
                  as String,
        guru: null == guru
            ? _value.guru
            : guru // ignore: cast_nullable_to_non_nullable
                  as GuruData,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginGuruResponseImpl implements _LoginGuruResponse {
  const _$LoginGuruResponseImpl({required this.token, required this.guru});

  factory _$LoginGuruResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginGuruResponseImplFromJson(json);

  @override
  final String token;
  @override
  final GuruData guru;

  @override
  String toString() {
    return 'LoginGuruResponse(token: $token, guru: $guru)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginGuruResponseImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.guru, guru) || other.guru == guru));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, token, guru);

  /// Create a copy of LoginGuruResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginGuruResponseImplCopyWith<_$LoginGuruResponseImpl> get copyWith =>
      __$$LoginGuruResponseImplCopyWithImpl<_$LoginGuruResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginGuruResponseImplToJson(this);
  }
}

abstract class _LoginGuruResponse implements LoginGuruResponse {
  const factory _LoginGuruResponse({
    required final String token,
    required final GuruData guru,
  }) = _$LoginGuruResponseImpl;

  factory _LoginGuruResponse.fromJson(Map<String, dynamic> json) =
      _$LoginGuruResponseImpl.fromJson;

  @override
  String get token;
  @override
  GuruData get guru;

  /// Create a copy of LoginGuruResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginGuruResponseImplCopyWith<_$LoginGuruResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GuruData _$GuruDataFromJson(Map<String, dynamic> json) {
  return _GuruData.fromJson(json);
}

/// @nodoc
mixin _$GuruData {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'nama_lengkap')
  String get namaLengkap => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get nip => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @JsonKey(name: 'no_telepon')
  String get noTelepon => throw _privateConstructorUsedError;
  @JsonKey(name: 'sekolah_id')
  int get sekolahId => throw _privateConstructorUsedError;

  /// Serializes this GuruData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GuruData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GuruDataCopyWith<GuruData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuruDataCopyWith<$Res> {
  factory $GuruDataCopyWith(GuruData value, $Res Function(GuruData) then) =
      _$GuruDataCopyWithImpl<$Res, GuruData>;
  @useResult
  $Res call({
    int id,
    @JsonKey(name: 'nama_lengkap') String namaLengkap,
    String email,
    String nip,
    String password,
    @JsonKey(name: 'no_telepon') String noTelepon,
    @JsonKey(name: 'sekolah_id') int sekolahId,
  });
}

/// @nodoc
class _$GuruDataCopyWithImpl<$Res, $Val extends GuruData>
    implements $GuruDataCopyWith<$Res> {
  _$GuruDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GuruData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? namaLengkap = null,
    Object? email = null,
    Object? nip = null,
    Object? password = null,
    Object? noTelepon = null,
    Object? sekolahId = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            namaLengkap: null == namaLengkap
                ? _value.namaLengkap
                : namaLengkap // ignore: cast_nullable_to_non_nullable
                      as String,
            email: null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                      as String,
            nip: null == nip
                ? _value.nip
                : nip // ignore: cast_nullable_to_non_nullable
                      as String,
            password: null == password
                ? _value.password
                : password // ignore: cast_nullable_to_non_nullable
                      as String,
            noTelepon: null == noTelepon
                ? _value.noTelepon
                : noTelepon // ignore: cast_nullable_to_non_nullable
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
abstract class _$$GuruDataImplCopyWith<$Res>
    implements $GuruDataCopyWith<$Res> {
  factory _$$GuruDataImplCopyWith(
    _$GuruDataImpl value,
    $Res Function(_$GuruDataImpl) then,
  ) = __$$GuruDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    @JsonKey(name: 'nama_lengkap') String namaLengkap,
    String email,
    String nip,
    String password,
    @JsonKey(name: 'no_telepon') String noTelepon,
    @JsonKey(name: 'sekolah_id') int sekolahId,
  });
}

/// @nodoc
class __$$GuruDataImplCopyWithImpl<$Res>
    extends _$GuruDataCopyWithImpl<$Res, _$GuruDataImpl>
    implements _$$GuruDataImplCopyWith<$Res> {
  __$$GuruDataImplCopyWithImpl(
    _$GuruDataImpl _value,
    $Res Function(_$GuruDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GuruData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? namaLengkap = null,
    Object? email = null,
    Object? nip = null,
    Object? password = null,
    Object? noTelepon = null,
    Object? sekolahId = null,
  }) {
    return _then(
      _$GuruDataImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        namaLengkap: null == namaLengkap
            ? _value.namaLengkap
            : namaLengkap // ignore: cast_nullable_to_non_nullable
                  as String,
        email: null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
        nip: null == nip
            ? _value.nip
            : nip // ignore: cast_nullable_to_non_nullable
                  as String,
        password: null == password
            ? _value.password
            : password // ignore: cast_nullable_to_non_nullable
                  as String,
        noTelepon: null == noTelepon
            ? _value.noTelepon
            : noTelepon // ignore: cast_nullable_to_non_nullable
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
class _$GuruDataImpl implements _GuruData {
  const _$GuruDataImpl({
    required this.id,
    @JsonKey(name: 'nama_lengkap') required this.namaLengkap,
    required this.email,
    required this.nip,
    required this.password,
    @JsonKey(name: 'no_telepon') required this.noTelepon,
    @JsonKey(name: 'sekolah_id') required this.sekolahId,
  });

  factory _$GuruDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$GuruDataImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'nama_lengkap')
  final String namaLengkap;
  @override
  final String email;
  @override
  final String nip;
  @override
  final String password;
  @override
  @JsonKey(name: 'no_telepon')
  final String noTelepon;
  @override
  @JsonKey(name: 'sekolah_id')
  final int sekolahId;

  @override
  String toString() {
    return 'GuruData(id: $id, namaLengkap: $namaLengkap, email: $email, nip: $nip, password: $password, noTelepon: $noTelepon, sekolahId: $sekolahId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GuruDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.namaLengkap, namaLengkap) ||
                other.namaLengkap == namaLengkap) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.nip, nip) || other.nip == nip) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.noTelepon, noTelepon) ||
                other.noTelepon == noTelepon) &&
            (identical(other.sekolahId, sekolahId) ||
                other.sekolahId == sekolahId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    namaLengkap,
    email,
    nip,
    password,
    noTelepon,
    sekolahId,
  );

  /// Create a copy of GuruData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GuruDataImplCopyWith<_$GuruDataImpl> get copyWith =>
      __$$GuruDataImplCopyWithImpl<_$GuruDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GuruDataImplToJson(this);
  }
}

abstract class _GuruData implements GuruData {
  const factory _GuruData({
    required final int id,
    @JsonKey(name: 'nama_lengkap') required final String namaLengkap,
    required final String email,
    required final String nip,
    required final String password,
    @JsonKey(name: 'no_telepon') required final String noTelepon,
    @JsonKey(name: 'sekolah_id') required final int sekolahId,
  }) = _$GuruDataImpl;

  factory _GuruData.fromJson(Map<String, dynamic> json) =
      _$GuruDataImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'nama_lengkap')
  String get namaLengkap;
  @override
  String get email;
  @override
  String get nip;
  @override
  String get password;
  @override
  @JsonKey(name: 'no_telepon')
  String get noTelepon;
  @override
  @JsonKey(name: 'sekolah_id')
  int get sekolahId;

  /// Create a copy of GuruData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GuruDataImplCopyWith<_$GuruDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
