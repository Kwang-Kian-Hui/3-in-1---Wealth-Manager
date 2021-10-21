import 'package:freezed_annotation/freezed_annotation.dart';

part 'input_failures.freezed.dart';

@freezed
class InputFailures with _$InputFailures {
  const InputFailures._();
  const factory InputFailures.empty() = _Empty;
  const factory InputFailures.invalidEmail() = _InvalidEmail;
  const factory InputFailures.invalidPassword() = _invalidPassword;
}

final invalidEmailMessage = "Please enter a valid email";
final emailAlreadyInUseMessage = "Please enter a new email";
final userNotFoundMessage = "The entered email is not registered";
final invalidPasswordMessage = "Password must be 8 characters or longer and contain at least 1 numerical value";
final wrongPasswordMessage = "The entered password is incorrect";