import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_state.freezed.dart';

@freezed
class SignUpState with _$SignUpState {
  const SignUpState._();
  
  const factory SignUpState({
    required bool hasConnection,
    required bool showErrorMessage,
    required bool isSaving,
    required bool successful,
    required String? emailErrorMessage,
    required String? passwordErrorMessage,
    required String email,
    required String password,
    required bool hidePassword,
  }) = _SignUpState;

  factory SignUpState.initial() => const SignUpState(
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