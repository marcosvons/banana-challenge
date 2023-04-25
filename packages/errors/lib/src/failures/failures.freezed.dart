// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Failure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() http,
    required TResult Function() cache,
    required TResult Function() jsonDes,
    required TResult Function() jsonDec,
    required TResult Function() unauthorized,
    required TResult Function() noConnection,
    required TResult Function() connectTimeout,
    required TResult Function() unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? http,
    TResult? Function()? cache,
    TResult? Function()? jsonDes,
    TResult? Function()? jsonDec,
    TResult? Function()? unauthorized,
    TResult? Function()? noConnection,
    TResult? Function()? connectTimeout,
    TResult? Function()? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? http,
    TResult Function()? cache,
    TResult Function()? jsonDes,
    TResult Function()? jsonDec,
    TResult Function()? unauthorized,
    TResult Function()? noConnection,
    TResult Function()? connectTimeout,
    TResult Function()? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HttpFailure value) http,
    required TResult Function(CacheFailure value) cache,
    required TResult Function(JsonDeserializationFailure value) jsonDes,
    required TResult Function(JsonDecodeFailure value) jsonDec,
    required TResult Function(UnauthorizedFailure value) unauthorized,
    required TResult Function(NoConnectionFailure value) noConnection,
    required TResult Function(ConnectTimeoutFailure value) connectTimeout,
    required TResult Function(UnknownFailure value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HttpFailure value)? http,
    TResult? Function(CacheFailure value)? cache,
    TResult? Function(JsonDeserializationFailure value)? jsonDes,
    TResult? Function(JsonDecodeFailure value)? jsonDec,
    TResult? Function(UnauthorizedFailure value)? unauthorized,
    TResult? Function(NoConnectionFailure value)? noConnection,
    TResult? Function(ConnectTimeoutFailure value)? connectTimeout,
    TResult? Function(UnknownFailure value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HttpFailure value)? http,
    TResult Function(CacheFailure value)? cache,
    TResult Function(JsonDeserializationFailure value)? jsonDes,
    TResult Function(JsonDecodeFailure value)? jsonDec,
    TResult Function(UnauthorizedFailure value)? unauthorized,
    TResult Function(NoConnectionFailure value)? noConnection,
    TResult Function(ConnectTimeoutFailure value)? connectTimeout,
    TResult Function(UnknownFailure value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res, Failure>;
}

/// @nodoc
class _$FailureCopyWithImpl<$Res, $Val extends Failure>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$HttpFailureCopyWith<$Res> {
  factory _$$HttpFailureCopyWith(
          _$HttpFailure value, $Res Function(_$HttpFailure) then) =
      __$$HttpFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HttpFailureCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$HttpFailure>
    implements _$$HttpFailureCopyWith<$Res> {
  __$$HttpFailureCopyWithImpl(
      _$HttpFailure _value, $Res Function(_$HttpFailure) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HttpFailure implements HttpFailure {
  const _$HttpFailure();

  @override
  String toString() {
    return 'Failure.http()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HttpFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() http,
    required TResult Function() cache,
    required TResult Function() jsonDes,
    required TResult Function() jsonDec,
    required TResult Function() unauthorized,
    required TResult Function() noConnection,
    required TResult Function() connectTimeout,
    required TResult Function() unknown,
  }) {
    return http();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? http,
    TResult? Function()? cache,
    TResult? Function()? jsonDes,
    TResult? Function()? jsonDec,
    TResult? Function()? unauthorized,
    TResult? Function()? noConnection,
    TResult? Function()? connectTimeout,
    TResult? Function()? unknown,
  }) {
    return http?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? http,
    TResult Function()? cache,
    TResult Function()? jsonDes,
    TResult Function()? jsonDec,
    TResult Function()? unauthorized,
    TResult Function()? noConnection,
    TResult Function()? connectTimeout,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (http != null) {
      return http();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HttpFailure value) http,
    required TResult Function(CacheFailure value) cache,
    required TResult Function(JsonDeserializationFailure value) jsonDes,
    required TResult Function(JsonDecodeFailure value) jsonDec,
    required TResult Function(UnauthorizedFailure value) unauthorized,
    required TResult Function(NoConnectionFailure value) noConnection,
    required TResult Function(ConnectTimeoutFailure value) connectTimeout,
    required TResult Function(UnknownFailure value) unknown,
  }) {
    return http(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HttpFailure value)? http,
    TResult? Function(CacheFailure value)? cache,
    TResult? Function(JsonDeserializationFailure value)? jsonDes,
    TResult? Function(JsonDecodeFailure value)? jsonDec,
    TResult? Function(UnauthorizedFailure value)? unauthorized,
    TResult? Function(NoConnectionFailure value)? noConnection,
    TResult? Function(ConnectTimeoutFailure value)? connectTimeout,
    TResult? Function(UnknownFailure value)? unknown,
  }) {
    return http?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HttpFailure value)? http,
    TResult Function(CacheFailure value)? cache,
    TResult Function(JsonDeserializationFailure value)? jsonDes,
    TResult Function(JsonDecodeFailure value)? jsonDec,
    TResult Function(UnauthorizedFailure value)? unauthorized,
    TResult Function(NoConnectionFailure value)? noConnection,
    TResult Function(ConnectTimeoutFailure value)? connectTimeout,
    TResult Function(UnknownFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (http != null) {
      return http(this);
    }
    return orElse();
  }
}

abstract class HttpFailure implements Failure {
  const factory HttpFailure() = _$HttpFailure;
}

/// @nodoc
abstract class _$$CacheFailureCopyWith<$Res> {
  factory _$$CacheFailureCopyWith(
          _$CacheFailure value, $Res Function(_$CacheFailure) then) =
      __$$CacheFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CacheFailureCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$CacheFailure>
    implements _$$CacheFailureCopyWith<$Res> {
  __$$CacheFailureCopyWithImpl(
      _$CacheFailure _value, $Res Function(_$CacheFailure) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CacheFailure implements CacheFailure {
  const _$CacheFailure();

  @override
  String toString() {
    return 'Failure.cache()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CacheFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() http,
    required TResult Function() cache,
    required TResult Function() jsonDes,
    required TResult Function() jsonDec,
    required TResult Function() unauthorized,
    required TResult Function() noConnection,
    required TResult Function() connectTimeout,
    required TResult Function() unknown,
  }) {
    return cache();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? http,
    TResult? Function()? cache,
    TResult? Function()? jsonDes,
    TResult? Function()? jsonDec,
    TResult? Function()? unauthorized,
    TResult? Function()? noConnection,
    TResult? Function()? connectTimeout,
    TResult? Function()? unknown,
  }) {
    return cache?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? http,
    TResult Function()? cache,
    TResult Function()? jsonDes,
    TResult Function()? jsonDec,
    TResult Function()? unauthorized,
    TResult Function()? noConnection,
    TResult Function()? connectTimeout,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (cache != null) {
      return cache();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HttpFailure value) http,
    required TResult Function(CacheFailure value) cache,
    required TResult Function(JsonDeserializationFailure value) jsonDes,
    required TResult Function(JsonDecodeFailure value) jsonDec,
    required TResult Function(UnauthorizedFailure value) unauthorized,
    required TResult Function(NoConnectionFailure value) noConnection,
    required TResult Function(ConnectTimeoutFailure value) connectTimeout,
    required TResult Function(UnknownFailure value) unknown,
  }) {
    return cache(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HttpFailure value)? http,
    TResult? Function(CacheFailure value)? cache,
    TResult? Function(JsonDeserializationFailure value)? jsonDes,
    TResult? Function(JsonDecodeFailure value)? jsonDec,
    TResult? Function(UnauthorizedFailure value)? unauthorized,
    TResult? Function(NoConnectionFailure value)? noConnection,
    TResult? Function(ConnectTimeoutFailure value)? connectTimeout,
    TResult? Function(UnknownFailure value)? unknown,
  }) {
    return cache?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HttpFailure value)? http,
    TResult Function(CacheFailure value)? cache,
    TResult Function(JsonDeserializationFailure value)? jsonDes,
    TResult Function(JsonDecodeFailure value)? jsonDec,
    TResult Function(UnauthorizedFailure value)? unauthorized,
    TResult Function(NoConnectionFailure value)? noConnection,
    TResult Function(ConnectTimeoutFailure value)? connectTimeout,
    TResult Function(UnknownFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (cache != null) {
      return cache(this);
    }
    return orElse();
  }
}

abstract class CacheFailure implements Failure {
  const factory CacheFailure() = _$CacheFailure;
}

/// @nodoc
abstract class _$$JsonDeserializationFailureCopyWith<$Res> {
  factory _$$JsonDeserializationFailureCopyWith(
          _$JsonDeserializationFailure value,
          $Res Function(_$JsonDeserializationFailure) then) =
      __$$JsonDeserializationFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$JsonDeserializationFailureCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$JsonDeserializationFailure>
    implements _$$JsonDeserializationFailureCopyWith<$Res> {
  __$$JsonDeserializationFailureCopyWithImpl(
      _$JsonDeserializationFailure _value,
      $Res Function(_$JsonDeserializationFailure) _then)
      : super(_value, _then);
}

/// @nodoc

class _$JsonDeserializationFailure implements JsonDeserializationFailure {
  const _$JsonDeserializationFailure();

  @override
  String toString() {
    return 'Failure.jsonDes()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JsonDeserializationFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() http,
    required TResult Function() cache,
    required TResult Function() jsonDes,
    required TResult Function() jsonDec,
    required TResult Function() unauthorized,
    required TResult Function() noConnection,
    required TResult Function() connectTimeout,
    required TResult Function() unknown,
  }) {
    return jsonDes();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? http,
    TResult? Function()? cache,
    TResult? Function()? jsonDes,
    TResult? Function()? jsonDec,
    TResult? Function()? unauthorized,
    TResult? Function()? noConnection,
    TResult? Function()? connectTimeout,
    TResult? Function()? unknown,
  }) {
    return jsonDes?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? http,
    TResult Function()? cache,
    TResult Function()? jsonDes,
    TResult Function()? jsonDec,
    TResult Function()? unauthorized,
    TResult Function()? noConnection,
    TResult Function()? connectTimeout,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (jsonDes != null) {
      return jsonDes();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HttpFailure value) http,
    required TResult Function(CacheFailure value) cache,
    required TResult Function(JsonDeserializationFailure value) jsonDes,
    required TResult Function(JsonDecodeFailure value) jsonDec,
    required TResult Function(UnauthorizedFailure value) unauthorized,
    required TResult Function(NoConnectionFailure value) noConnection,
    required TResult Function(ConnectTimeoutFailure value) connectTimeout,
    required TResult Function(UnknownFailure value) unknown,
  }) {
    return jsonDes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HttpFailure value)? http,
    TResult? Function(CacheFailure value)? cache,
    TResult? Function(JsonDeserializationFailure value)? jsonDes,
    TResult? Function(JsonDecodeFailure value)? jsonDec,
    TResult? Function(UnauthorizedFailure value)? unauthorized,
    TResult? Function(NoConnectionFailure value)? noConnection,
    TResult? Function(ConnectTimeoutFailure value)? connectTimeout,
    TResult? Function(UnknownFailure value)? unknown,
  }) {
    return jsonDes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HttpFailure value)? http,
    TResult Function(CacheFailure value)? cache,
    TResult Function(JsonDeserializationFailure value)? jsonDes,
    TResult Function(JsonDecodeFailure value)? jsonDec,
    TResult Function(UnauthorizedFailure value)? unauthorized,
    TResult Function(NoConnectionFailure value)? noConnection,
    TResult Function(ConnectTimeoutFailure value)? connectTimeout,
    TResult Function(UnknownFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (jsonDes != null) {
      return jsonDes(this);
    }
    return orElse();
  }
}

abstract class JsonDeserializationFailure implements Failure {
  const factory JsonDeserializationFailure() = _$JsonDeserializationFailure;
}

/// @nodoc
abstract class _$$JsonDecodeFailureCopyWith<$Res> {
  factory _$$JsonDecodeFailureCopyWith(
          _$JsonDecodeFailure value, $Res Function(_$JsonDecodeFailure) then) =
      __$$JsonDecodeFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$JsonDecodeFailureCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$JsonDecodeFailure>
    implements _$$JsonDecodeFailureCopyWith<$Res> {
  __$$JsonDecodeFailureCopyWithImpl(
      _$JsonDecodeFailure _value, $Res Function(_$JsonDecodeFailure) _then)
      : super(_value, _then);
}

/// @nodoc

class _$JsonDecodeFailure implements JsonDecodeFailure {
  const _$JsonDecodeFailure();

  @override
  String toString() {
    return 'Failure.jsonDec()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$JsonDecodeFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() http,
    required TResult Function() cache,
    required TResult Function() jsonDes,
    required TResult Function() jsonDec,
    required TResult Function() unauthorized,
    required TResult Function() noConnection,
    required TResult Function() connectTimeout,
    required TResult Function() unknown,
  }) {
    return jsonDec();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? http,
    TResult? Function()? cache,
    TResult? Function()? jsonDes,
    TResult? Function()? jsonDec,
    TResult? Function()? unauthorized,
    TResult? Function()? noConnection,
    TResult? Function()? connectTimeout,
    TResult? Function()? unknown,
  }) {
    return jsonDec?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? http,
    TResult Function()? cache,
    TResult Function()? jsonDes,
    TResult Function()? jsonDec,
    TResult Function()? unauthorized,
    TResult Function()? noConnection,
    TResult Function()? connectTimeout,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (jsonDec != null) {
      return jsonDec();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HttpFailure value) http,
    required TResult Function(CacheFailure value) cache,
    required TResult Function(JsonDeserializationFailure value) jsonDes,
    required TResult Function(JsonDecodeFailure value) jsonDec,
    required TResult Function(UnauthorizedFailure value) unauthorized,
    required TResult Function(NoConnectionFailure value) noConnection,
    required TResult Function(ConnectTimeoutFailure value) connectTimeout,
    required TResult Function(UnknownFailure value) unknown,
  }) {
    return jsonDec(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HttpFailure value)? http,
    TResult? Function(CacheFailure value)? cache,
    TResult? Function(JsonDeserializationFailure value)? jsonDes,
    TResult? Function(JsonDecodeFailure value)? jsonDec,
    TResult? Function(UnauthorizedFailure value)? unauthorized,
    TResult? Function(NoConnectionFailure value)? noConnection,
    TResult? Function(ConnectTimeoutFailure value)? connectTimeout,
    TResult? Function(UnknownFailure value)? unknown,
  }) {
    return jsonDec?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HttpFailure value)? http,
    TResult Function(CacheFailure value)? cache,
    TResult Function(JsonDeserializationFailure value)? jsonDes,
    TResult Function(JsonDecodeFailure value)? jsonDec,
    TResult Function(UnauthorizedFailure value)? unauthorized,
    TResult Function(NoConnectionFailure value)? noConnection,
    TResult Function(ConnectTimeoutFailure value)? connectTimeout,
    TResult Function(UnknownFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (jsonDec != null) {
      return jsonDec(this);
    }
    return orElse();
  }
}

abstract class JsonDecodeFailure implements Failure {
  const factory JsonDecodeFailure() = _$JsonDecodeFailure;
}

/// @nodoc
abstract class _$$UnauthorizedFailureCopyWith<$Res> {
  factory _$$UnauthorizedFailureCopyWith(_$UnauthorizedFailure value,
          $Res Function(_$UnauthorizedFailure) then) =
      __$$UnauthorizedFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnauthorizedFailureCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$UnauthorizedFailure>
    implements _$$UnauthorizedFailureCopyWith<$Res> {
  __$$UnauthorizedFailureCopyWithImpl(
      _$UnauthorizedFailure _value, $Res Function(_$UnauthorizedFailure) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnauthorizedFailure implements UnauthorizedFailure {
  const _$UnauthorizedFailure();

  @override
  String toString() {
    return 'Failure.unauthorized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnauthorizedFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() http,
    required TResult Function() cache,
    required TResult Function() jsonDes,
    required TResult Function() jsonDec,
    required TResult Function() unauthorized,
    required TResult Function() noConnection,
    required TResult Function() connectTimeout,
    required TResult Function() unknown,
  }) {
    return unauthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? http,
    TResult? Function()? cache,
    TResult? Function()? jsonDes,
    TResult? Function()? jsonDec,
    TResult? Function()? unauthorized,
    TResult? Function()? noConnection,
    TResult? Function()? connectTimeout,
    TResult? Function()? unknown,
  }) {
    return unauthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? http,
    TResult Function()? cache,
    TResult Function()? jsonDes,
    TResult Function()? jsonDec,
    TResult Function()? unauthorized,
    TResult Function()? noConnection,
    TResult Function()? connectTimeout,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HttpFailure value) http,
    required TResult Function(CacheFailure value) cache,
    required TResult Function(JsonDeserializationFailure value) jsonDes,
    required TResult Function(JsonDecodeFailure value) jsonDec,
    required TResult Function(UnauthorizedFailure value) unauthorized,
    required TResult Function(NoConnectionFailure value) noConnection,
    required TResult Function(ConnectTimeoutFailure value) connectTimeout,
    required TResult Function(UnknownFailure value) unknown,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HttpFailure value)? http,
    TResult? Function(CacheFailure value)? cache,
    TResult? Function(JsonDeserializationFailure value)? jsonDes,
    TResult? Function(JsonDecodeFailure value)? jsonDec,
    TResult? Function(UnauthorizedFailure value)? unauthorized,
    TResult? Function(NoConnectionFailure value)? noConnection,
    TResult? Function(ConnectTimeoutFailure value)? connectTimeout,
    TResult? Function(UnknownFailure value)? unknown,
  }) {
    return unauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HttpFailure value)? http,
    TResult Function(CacheFailure value)? cache,
    TResult Function(JsonDeserializationFailure value)? jsonDes,
    TResult Function(JsonDecodeFailure value)? jsonDec,
    TResult Function(UnauthorizedFailure value)? unauthorized,
    TResult Function(NoConnectionFailure value)? noConnection,
    TResult Function(ConnectTimeoutFailure value)? connectTimeout,
    TResult Function(UnknownFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class UnauthorizedFailure implements Failure {
  const factory UnauthorizedFailure() = _$UnauthorizedFailure;
}

/// @nodoc
abstract class _$$NoConnectionFailureCopyWith<$Res> {
  factory _$$NoConnectionFailureCopyWith(_$NoConnectionFailure value,
          $Res Function(_$NoConnectionFailure) then) =
      __$$NoConnectionFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoConnectionFailureCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$NoConnectionFailure>
    implements _$$NoConnectionFailureCopyWith<$Res> {
  __$$NoConnectionFailureCopyWithImpl(
      _$NoConnectionFailure _value, $Res Function(_$NoConnectionFailure) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NoConnectionFailure implements NoConnectionFailure {
  const _$NoConnectionFailure();

  @override
  String toString() {
    return 'Failure.noConnection()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoConnectionFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() http,
    required TResult Function() cache,
    required TResult Function() jsonDes,
    required TResult Function() jsonDec,
    required TResult Function() unauthorized,
    required TResult Function() noConnection,
    required TResult Function() connectTimeout,
    required TResult Function() unknown,
  }) {
    return noConnection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? http,
    TResult? Function()? cache,
    TResult? Function()? jsonDes,
    TResult? Function()? jsonDec,
    TResult? Function()? unauthorized,
    TResult? Function()? noConnection,
    TResult? Function()? connectTimeout,
    TResult? Function()? unknown,
  }) {
    return noConnection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? http,
    TResult Function()? cache,
    TResult Function()? jsonDes,
    TResult Function()? jsonDec,
    TResult Function()? unauthorized,
    TResult Function()? noConnection,
    TResult Function()? connectTimeout,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (noConnection != null) {
      return noConnection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HttpFailure value) http,
    required TResult Function(CacheFailure value) cache,
    required TResult Function(JsonDeserializationFailure value) jsonDes,
    required TResult Function(JsonDecodeFailure value) jsonDec,
    required TResult Function(UnauthorizedFailure value) unauthorized,
    required TResult Function(NoConnectionFailure value) noConnection,
    required TResult Function(ConnectTimeoutFailure value) connectTimeout,
    required TResult Function(UnknownFailure value) unknown,
  }) {
    return noConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HttpFailure value)? http,
    TResult? Function(CacheFailure value)? cache,
    TResult? Function(JsonDeserializationFailure value)? jsonDes,
    TResult? Function(JsonDecodeFailure value)? jsonDec,
    TResult? Function(UnauthorizedFailure value)? unauthorized,
    TResult? Function(NoConnectionFailure value)? noConnection,
    TResult? Function(ConnectTimeoutFailure value)? connectTimeout,
    TResult? Function(UnknownFailure value)? unknown,
  }) {
    return noConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HttpFailure value)? http,
    TResult Function(CacheFailure value)? cache,
    TResult Function(JsonDeserializationFailure value)? jsonDes,
    TResult Function(JsonDecodeFailure value)? jsonDec,
    TResult Function(UnauthorizedFailure value)? unauthorized,
    TResult Function(NoConnectionFailure value)? noConnection,
    TResult Function(ConnectTimeoutFailure value)? connectTimeout,
    TResult Function(UnknownFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (noConnection != null) {
      return noConnection(this);
    }
    return orElse();
  }
}

abstract class NoConnectionFailure implements Failure {
  const factory NoConnectionFailure() = _$NoConnectionFailure;
}

/// @nodoc
abstract class _$$ConnectTimeoutFailureCopyWith<$Res> {
  factory _$$ConnectTimeoutFailureCopyWith(_$ConnectTimeoutFailure value,
          $Res Function(_$ConnectTimeoutFailure) then) =
      __$$ConnectTimeoutFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConnectTimeoutFailureCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ConnectTimeoutFailure>
    implements _$$ConnectTimeoutFailureCopyWith<$Res> {
  __$$ConnectTimeoutFailureCopyWithImpl(_$ConnectTimeoutFailure _value,
      $Res Function(_$ConnectTimeoutFailure) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ConnectTimeoutFailure implements ConnectTimeoutFailure {
  const _$ConnectTimeoutFailure();

  @override
  String toString() {
    return 'Failure.connectTimeout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ConnectTimeoutFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() http,
    required TResult Function() cache,
    required TResult Function() jsonDes,
    required TResult Function() jsonDec,
    required TResult Function() unauthorized,
    required TResult Function() noConnection,
    required TResult Function() connectTimeout,
    required TResult Function() unknown,
  }) {
    return connectTimeout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? http,
    TResult? Function()? cache,
    TResult? Function()? jsonDes,
    TResult? Function()? jsonDec,
    TResult? Function()? unauthorized,
    TResult? Function()? noConnection,
    TResult? Function()? connectTimeout,
    TResult? Function()? unknown,
  }) {
    return connectTimeout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? http,
    TResult Function()? cache,
    TResult Function()? jsonDes,
    TResult Function()? jsonDec,
    TResult Function()? unauthorized,
    TResult Function()? noConnection,
    TResult Function()? connectTimeout,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (connectTimeout != null) {
      return connectTimeout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HttpFailure value) http,
    required TResult Function(CacheFailure value) cache,
    required TResult Function(JsonDeserializationFailure value) jsonDes,
    required TResult Function(JsonDecodeFailure value) jsonDec,
    required TResult Function(UnauthorizedFailure value) unauthorized,
    required TResult Function(NoConnectionFailure value) noConnection,
    required TResult Function(ConnectTimeoutFailure value) connectTimeout,
    required TResult Function(UnknownFailure value) unknown,
  }) {
    return connectTimeout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HttpFailure value)? http,
    TResult? Function(CacheFailure value)? cache,
    TResult? Function(JsonDeserializationFailure value)? jsonDes,
    TResult? Function(JsonDecodeFailure value)? jsonDec,
    TResult? Function(UnauthorizedFailure value)? unauthorized,
    TResult? Function(NoConnectionFailure value)? noConnection,
    TResult? Function(ConnectTimeoutFailure value)? connectTimeout,
    TResult? Function(UnknownFailure value)? unknown,
  }) {
    return connectTimeout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HttpFailure value)? http,
    TResult Function(CacheFailure value)? cache,
    TResult Function(JsonDeserializationFailure value)? jsonDes,
    TResult Function(JsonDecodeFailure value)? jsonDec,
    TResult Function(UnauthorizedFailure value)? unauthorized,
    TResult Function(NoConnectionFailure value)? noConnection,
    TResult Function(ConnectTimeoutFailure value)? connectTimeout,
    TResult Function(UnknownFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (connectTimeout != null) {
      return connectTimeout(this);
    }
    return orElse();
  }
}

abstract class ConnectTimeoutFailure implements Failure {
  const factory ConnectTimeoutFailure() = _$ConnectTimeoutFailure;
}

/// @nodoc
abstract class _$$UnknownFailureCopyWith<$Res> {
  factory _$$UnknownFailureCopyWith(
          _$UnknownFailure value, $Res Function(_$UnknownFailure) then) =
      __$$UnknownFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnknownFailureCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$UnknownFailure>
    implements _$$UnknownFailureCopyWith<$Res> {
  __$$UnknownFailureCopyWithImpl(
      _$UnknownFailure _value, $Res Function(_$UnknownFailure) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnknownFailure implements UnknownFailure {
  const _$UnknownFailure();

  @override
  String toString() {
    return 'Failure.unknown()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnknownFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() http,
    required TResult Function() cache,
    required TResult Function() jsonDes,
    required TResult Function() jsonDec,
    required TResult Function() unauthorized,
    required TResult Function() noConnection,
    required TResult Function() connectTimeout,
    required TResult Function() unknown,
  }) {
    return unknown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? http,
    TResult? Function()? cache,
    TResult? Function()? jsonDes,
    TResult? Function()? jsonDec,
    TResult? Function()? unauthorized,
    TResult? Function()? noConnection,
    TResult? Function()? connectTimeout,
    TResult? Function()? unknown,
  }) {
    return unknown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? http,
    TResult Function()? cache,
    TResult Function()? jsonDes,
    TResult Function()? jsonDec,
    TResult Function()? unauthorized,
    TResult Function()? noConnection,
    TResult Function()? connectTimeout,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HttpFailure value) http,
    required TResult Function(CacheFailure value) cache,
    required TResult Function(JsonDeserializationFailure value) jsonDes,
    required TResult Function(JsonDecodeFailure value) jsonDec,
    required TResult Function(UnauthorizedFailure value) unauthorized,
    required TResult Function(NoConnectionFailure value) noConnection,
    required TResult Function(ConnectTimeoutFailure value) connectTimeout,
    required TResult Function(UnknownFailure value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HttpFailure value)? http,
    TResult? Function(CacheFailure value)? cache,
    TResult? Function(JsonDeserializationFailure value)? jsonDes,
    TResult? Function(JsonDecodeFailure value)? jsonDec,
    TResult? Function(UnauthorizedFailure value)? unauthorized,
    TResult? Function(NoConnectionFailure value)? noConnection,
    TResult? Function(ConnectTimeoutFailure value)? connectTimeout,
    TResult? Function(UnknownFailure value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HttpFailure value)? http,
    TResult Function(CacheFailure value)? cache,
    TResult Function(JsonDeserializationFailure value)? jsonDes,
    TResult Function(JsonDecodeFailure value)? jsonDec,
    TResult Function(UnauthorizedFailure value)? unauthorized,
    TResult Function(NoConnectionFailure value)? noConnection,
    TResult Function(ConnectTimeoutFailure value)? connectTimeout,
    TResult Function(UnknownFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class UnknownFailure implements Failure {
  const factory UnknownFailure() = _$UnknownFailure;
}
