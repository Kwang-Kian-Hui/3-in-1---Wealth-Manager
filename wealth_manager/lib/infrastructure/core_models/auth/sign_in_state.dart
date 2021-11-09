import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_state.freezed.dart';

@freezed
class SignInState with _$SignInState {
  const SignInState._();
  
  const factory SignInState({
    required bool hasConnection,
    required bool showErrorMessage,
    required bool isSaving,
    required bool successful,
    required String? emailErrorMessage,
    required String? passwordErrorMessage,
    required String email,
    required String password,
    required bool hidePassword,
  }) = _SignInState;

  factory SignInState.initial() => const SignInState(
        hasConnection: true,
        showErrorMessage: false,
        isSaving: false,
        successful: false,
        emailErrorMessage: null,
        passwordErrorMessage: null,
        email: '',
        password: '',
        hidePassword: true,
      );
}