import 'dart:async';

import 'package:auth/auth.dart';
import 'package:bloc/bloc.dart';
import 'package:errors/errors.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({required IAuthRepository authRepository})
      : _authRepository = authRepository,
        super(const Unauthenticated()) {
    on<LoginRequested>(_onLoginRequested);
    on<LogoutRequested>(_onLogoutRequested);
    on<CheckAuthentication>(_onCheckAuthentication);
    add(const AuthEvent.checkAuthentication());
  }

  final IAuthRepository _authRepository;

  FutureOr<void> _onLoginRequested(
    LoginRequested event,
    Emitter<AuthState> emit,
  ) async {
    emit(const Authenticating());
    final user = await _authRepository.loginWithCredentials(
      email: event.email,
      password: event.password,
    );
    return user.fold(
      (failure) => emit(Unauthenticated(failure: failure)),
      (user) => emit(Authenticated(user)),
    );
  }

  FutureOr<void> _onLogoutRequested(
    LogoutRequested event,
    Emitter<AuthState> emit,
  ) async {
    await _authRepository.removeUserFromCache();
    emit(const Unauthenticated());
  }

  FutureOr<void> _onCheckAuthentication(
    CheckAuthentication event,
    Emitter<AuthState> emit,
  ) {
    final user = _authRepository.getUserFromCache();
    return user.fold(
      (failure) => emit(const Unauthenticated()),
      (user) {
        if (user != null) {
          emit(Authenticated(user));
        } else {
          emit(const Unauthenticated());
        }
      },
    );
  }
}
