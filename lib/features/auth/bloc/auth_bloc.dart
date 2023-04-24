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
}
