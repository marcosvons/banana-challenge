part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.unauthenticated({Failure? failure}) = Unauthenticated;
  const factory AuthState.authenticating() = Authenticating;
  const factory AuthState.authenticated(User user) = Authenticated;
}
