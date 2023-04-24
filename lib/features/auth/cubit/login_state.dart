part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.formValue({
    required String? email,
    required String? password,
    required bool showPassword,
  }) = FormValue;
}
