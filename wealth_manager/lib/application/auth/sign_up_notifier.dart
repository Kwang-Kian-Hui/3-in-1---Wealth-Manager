import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wealth_manager/application/input_failures.dart';
import 'package:wealth_manager/application/value_validators.dart';
import 'package:wealth_manager/infrastructure/auth_repository.dart';
import 'package:wealth_manager/infrastructure/core_models/auth/sign_up_state.dart';

class SignUpNotifier extends StateNotifier<SignUpState> {
  final AuthenticationRepository _authRepository;
  SignUpNotifier(this._authRepository) : super(SignUpState.initial());

  void emailAddressChanged(String email) {
    // remove blank spaces
    state = state.copyWith(email: email.trim());
  }

  void passwordChanged(String password) {
    state = state.copyWith(password: password);
  }

  void toggleShowPassword() {
    state = state.copyWith(hidePassword: !state.hidePassword);
  }

  void _validateInputs() {
    var stateCopy = state.copyWith(showErrorMessage: true);

    //validate email
    final emailValidateResult = validateEmail(state.email);
    emailValidateResult.fold(
      (inputFailure) => inputFailure.maybeWhen(
          invalidEmail: () {
            stateCopy =
                stateCopy.copyWith(emailErrorMessage: invalidEmailMessage);
          },
          orElse: () {}),
      (r) {
        stateCopy = stateCopy.copyWith(emailErrorMessage: null);
      },
    );

    //validate password
    final passwordValidateResult = validatePassword(state.password);
    passwordValidateResult.fold(
      (inputFailure) => inputFailure.maybeWhen(
          invalidPassword: () {
            stateCopy = stateCopy.copyWith(
                passwordErrorMessage: invalidPasswordMessage);
          },
          orElse: () {}),
      (r) {
        stateCopy = stateCopy.copyWith(passwordErrorMessage: null);
      },
    );

    state = stateCopy;
  }

  Future<void> signUp() async {
    _validateInputs();

    //if the input are valid
    if (state.emailErrorMessage == null && state.passwordErrorMessage == null) {
      state = state.copyWith(
        isSaving: true,
        hasConnection: true,
      );

      final signUpResult =
          await _authRepository.signUp(state.email, state.password);

      signUpResult.fold((authFailure) {
        authFailure.maybeMap(
          emailAlreadyInUse: (_) {
            state = state.copyWith(
              emailErrorMessage: emailAlreadyInUseMessage,
              isSaving: false,
            );
          },
          noConnection: (_) {
            state = state.copyWith(
              hasConnection: false,
              isSaving: false,
            );
          },
          orElse: () {},
        );
      }, (unit) {
        state = state.copyWith(
          isSaving: false,
          successful: true,
        );
      });
    }
  }
}
