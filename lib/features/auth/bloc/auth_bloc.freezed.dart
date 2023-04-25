// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) loginRequested,
    required TResult Function() logoutRequested,
    required TResult Function() checkAuthentication,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? loginRequested,
    TResult? Function()? logoutRequested,
    TResult? Function()? checkAuthentication,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? loginRequested,
    TResult Function()? logoutRequested,
    TResult Function()? checkAuthentication,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginRequested value) loginRequested,
    required TResult Function(LogoutRequested value) logoutRequested,
    required TResult Function(CheckAuthentication value) checkAuthentication,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginRequested value)? loginRequested,
    TResult? Function(LogoutRequested value)? logoutRequested,
    TResult? Function(CheckAuthentication value)? checkAuthentication,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginRequested value)? loginRequested,
    TResult Function(LogoutRequested value)? logoutRequested,
    TResult Function(CheckAuthentication value)? checkAuthentication,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoginRequestedCopyWith<$Res> {
  factory _$$LoginRequestedCopyWith(
          _$LoginRequested value, $Res Function(_$LoginRequested) then) =
      __$$LoginRequestedCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$LoginRequestedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoginRequested>
    implements _$$LoginRequestedCopyWith<$Res> {
  __$$LoginRequestedCopyWithImpl(
      _$LoginRequested _value, $Res Function(_$LoginRequested) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$LoginRequested(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginRequested implements LoginRequested {
  const _$LoginRequested({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.loginRequested(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginRequested &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginRequestedCopyWith<_$LoginRequested> get copyWith =>
      __$$LoginRequestedCopyWithImpl<_$LoginRequested>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) loginRequested,
    required TResult Function() logoutRequested,
    required TResult Function() checkAuthentication,
  }) {
    return loginRequested(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? loginRequested,
    TResult? Function()? logoutRequested,
    TResult? Function()? checkAuthentication,
  }) {
    return loginRequested?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? loginRequested,
    TResult Function()? logoutRequested,
    TResult Function()? checkAuthentication,
    required TResult orElse(),
  }) {
    if (loginRequested != null) {
      return loginRequested(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginRequested value) loginRequested,
    required TResult Function(LogoutRequested value) logoutRequested,
    required TResult Function(CheckAuthentication value) checkAuthentication,
  }) {
    return loginRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginRequested value)? loginRequested,
    TResult? Function(LogoutRequested value)? logoutRequested,
    TResult? Function(CheckAuthentication value)? checkAuthentication,
  }) {
    return loginRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginRequested value)? loginRequested,
    TResult Function(LogoutRequested value)? logoutRequested,
    TResult Function(CheckAuthentication value)? checkAuthentication,
    required TResult orElse(),
  }) {
    if (loginRequested != null) {
      return loginRequested(this);
    }
    return orElse();
  }
}

abstract class LoginRequested implements AuthEvent {
  const factory LoginRequested(
      {required final String email,
      required final String password}) = _$LoginRequested;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$LoginRequestedCopyWith<_$LoginRequested> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogoutRequestedCopyWith<$Res> {
  factory _$$LogoutRequestedCopyWith(
          _$LogoutRequested value, $Res Function(_$LogoutRequested) then) =
      __$$LogoutRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutRequestedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LogoutRequested>
    implements _$$LogoutRequestedCopyWith<$Res> {
  __$$LogoutRequestedCopyWithImpl(
      _$LogoutRequested _value, $Res Function(_$LogoutRequested) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogoutRequested implements LogoutRequested {
  const _$LogoutRequested();

  @override
  String toString() {
    return 'AuthEvent.logoutRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) loginRequested,
    required TResult Function() logoutRequested,
    required TResult Function() checkAuthentication,
  }) {
    return logoutRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? loginRequested,
    TResult? Function()? logoutRequested,
    TResult? Function()? checkAuthentication,
  }) {
    return logoutRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? loginRequested,
    TResult Function()? logoutRequested,
    TResult Function()? checkAuthentication,
    required TResult orElse(),
  }) {
    if (logoutRequested != null) {
      return logoutRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginRequested value) loginRequested,
    required TResult Function(LogoutRequested value) logoutRequested,
    required TResult Function(CheckAuthentication value) checkAuthentication,
  }) {
    return logoutRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginRequested value)? loginRequested,
    TResult? Function(LogoutRequested value)? logoutRequested,
    TResult? Function(CheckAuthentication value)? checkAuthentication,
  }) {
    return logoutRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginRequested value)? loginRequested,
    TResult Function(LogoutRequested value)? logoutRequested,
    TResult Function(CheckAuthentication value)? checkAuthentication,
    required TResult orElse(),
  }) {
    if (logoutRequested != null) {
      return logoutRequested(this);
    }
    return orElse();
  }
}

abstract class LogoutRequested implements AuthEvent {
  const factory LogoutRequested() = _$LogoutRequested;
}

/// @nodoc
abstract class _$$CheckAuthenticationCopyWith<$Res> {
  factory _$$CheckAuthenticationCopyWith(_$CheckAuthentication value,
          $Res Function(_$CheckAuthentication) then) =
      __$$CheckAuthenticationCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckAuthenticationCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$CheckAuthentication>
    implements _$$CheckAuthenticationCopyWith<$Res> {
  __$$CheckAuthenticationCopyWithImpl(
      _$CheckAuthentication _value, $Res Function(_$CheckAuthentication) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CheckAuthentication implements CheckAuthentication {
  const _$CheckAuthentication();

  @override
  String toString() {
    return 'AuthEvent.checkAuthentication()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckAuthentication);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) loginRequested,
    required TResult Function() logoutRequested,
    required TResult Function() checkAuthentication,
  }) {
    return checkAuthentication();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? loginRequested,
    TResult? Function()? logoutRequested,
    TResult? Function()? checkAuthentication,
  }) {
    return checkAuthentication?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? loginRequested,
    TResult Function()? logoutRequested,
    TResult Function()? checkAuthentication,
    required TResult orElse(),
  }) {
    if (checkAuthentication != null) {
      return checkAuthentication();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginRequested value) loginRequested,
    required TResult Function(LogoutRequested value) logoutRequested,
    required TResult Function(CheckAuthentication value) checkAuthentication,
  }) {
    return checkAuthentication(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginRequested value)? loginRequested,
    TResult? Function(LogoutRequested value)? logoutRequested,
    TResult? Function(CheckAuthentication value)? checkAuthentication,
  }) {
    return checkAuthentication?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginRequested value)? loginRequested,
    TResult Function(LogoutRequested value)? logoutRequested,
    TResult Function(CheckAuthentication value)? checkAuthentication,
    required TResult orElse(),
  }) {
    if (checkAuthentication != null) {
      return checkAuthentication(this);
    }
    return orElse();
  }
}

abstract class CheckAuthentication implements AuthEvent {
  const factory CheckAuthentication() = _$CheckAuthentication;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Failure? failure) unauthenticated,
    required TResult Function() authenticating,
    required TResult Function(User user) authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Failure? failure)? unauthenticated,
    TResult? Function()? authenticating,
    TResult? Function(User user)? authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Failure? failure)? unauthenticated,
    TResult Function()? authenticating,
    TResult Function(User user)? authenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Authenticating value) authenticating,
    required TResult Function(Authenticated value) authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(Authenticating value)? authenticating,
    TResult? Function(Authenticated value)? authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Authenticating value)? authenticating,
    TResult Function(Authenticated value)? authenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UnauthenticatedCopyWith<$Res> {
  factory _$$UnauthenticatedCopyWith(
          _$Unauthenticated value, $Res Function(_$Unauthenticated) then) =
      __$$UnauthenticatedCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure? failure});

  $FailureCopyWith<$Res>? get failure;
}

/// @nodoc
class __$$UnauthenticatedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$Unauthenticated>
    implements _$$UnauthenticatedCopyWith<$Res> {
  __$$UnauthenticatedCopyWithImpl(
      _$Unauthenticated _value, $Res Function(_$Unauthenticated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_$Unauthenticated(
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FailureCopyWith<$Res>? get failure {
    if (_value.failure == null) {
      return null;
    }

    return $FailureCopyWith<$Res>(_value.failure!, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$Unauthenticated implements Unauthenticated {
  const _$Unauthenticated({this.failure});

  @override
  final Failure? failure;

  @override
  String toString() {
    return 'AuthState.unauthenticated(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Unauthenticated &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnauthenticatedCopyWith<_$Unauthenticated> get copyWith =>
      __$$UnauthenticatedCopyWithImpl<_$Unauthenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Failure? failure) unauthenticated,
    required TResult Function() authenticating,
    required TResult Function(User user) authenticated,
  }) {
    return unauthenticated(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Failure? failure)? unauthenticated,
    TResult? Function()? authenticating,
    TResult? Function(User user)? authenticated,
  }) {
    return unauthenticated?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Failure? failure)? unauthenticated,
    TResult Function()? authenticating,
    TResult Function(User user)? authenticated,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Authenticating value) authenticating,
    required TResult Function(Authenticated value) authenticated,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(Authenticating value)? authenticating,
    TResult? Function(Authenticated value)? authenticated,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Authenticating value)? authenticating,
    TResult Function(Authenticated value)? authenticated,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class Unauthenticated implements AuthState {
  const factory Unauthenticated({final Failure? failure}) = _$Unauthenticated;

  Failure? get failure;
  @JsonKey(ignore: true)
  _$$UnauthenticatedCopyWith<_$Unauthenticated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthenticatingCopyWith<$Res> {
  factory _$$AuthenticatingCopyWith(
          _$Authenticating value, $Res Function(_$Authenticating) then) =
      __$$AuthenticatingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticatingCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$Authenticating>
    implements _$$AuthenticatingCopyWith<$Res> {
  __$$AuthenticatingCopyWithImpl(
      _$Authenticating _value, $Res Function(_$Authenticating) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Authenticating implements Authenticating {
  const _$Authenticating();

  @override
  String toString() {
    return 'AuthState.authenticating()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Authenticating);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Failure? failure) unauthenticated,
    required TResult Function() authenticating,
    required TResult Function(User user) authenticated,
  }) {
    return authenticating();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Failure? failure)? unauthenticated,
    TResult? Function()? authenticating,
    TResult? Function(User user)? authenticated,
  }) {
    return authenticating?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Failure? failure)? unauthenticated,
    TResult Function()? authenticating,
    TResult Function(User user)? authenticated,
    required TResult orElse(),
  }) {
    if (authenticating != null) {
      return authenticating();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Authenticating value) authenticating,
    required TResult Function(Authenticated value) authenticated,
  }) {
    return authenticating(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(Authenticating value)? authenticating,
    TResult? Function(Authenticated value)? authenticated,
  }) {
    return authenticating?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Authenticating value)? authenticating,
    TResult Function(Authenticated value)? authenticated,
    required TResult orElse(),
  }) {
    if (authenticating != null) {
      return authenticating(this);
    }
    return orElse();
  }
}

abstract class Authenticating implements AuthState {
  const factory Authenticating() = _$Authenticating;
}

/// @nodoc
abstract class _$$AuthenticatedCopyWith<$Res> {
  factory _$$AuthenticatedCopyWith(
          _$Authenticated value, $Res Function(_$Authenticated) then) =
      __$$AuthenticatedCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$AuthenticatedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$Authenticated>
    implements _$$AuthenticatedCopyWith<$Res> {
  __$$AuthenticatedCopyWithImpl(
      _$Authenticated _value, $Res Function(_$Authenticated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$Authenticated(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$Authenticated implements Authenticated {
  const _$Authenticated(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'AuthState.authenticated(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Authenticated &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticatedCopyWith<_$Authenticated> get copyWith =>
      __$$AuthenticatedCopyWithImpl<_$Authenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Failure? failure) unauthenticated,
    required TResult Function() authenticating,
    required TResult Function(User user) authenticated,
  }) {
    return authenticated(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Failure? failure)? unauthenticated,
    TResult? Function()? authenticating,
    TResult? Function(User user)? authenticated,
  }) {
    return authenticated?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Failure? failure)? unauthenticated,
    TResult Function()? authenticating,
    TResult Function(User user)? authenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Authenticating value) authenticating,
    required TResult Function(Authenticated value) authenticated,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(Authenticating value)? authenticating,
    TResult? Function(Authenticated value)? authenticated,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Authenticating value)? authenticating,
    TResult Function(Authenticated value)? authenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class Authenticated implements AuthState {
  const factory Authenticated(final User user) = _$Authenticated;

  User get user;
  @JsonKey(ignore: true)
  _$$AuthenticatedCopyWith<_$Authenticated> get copyWith =>
      throw _privateConstructorUsedError;
}
