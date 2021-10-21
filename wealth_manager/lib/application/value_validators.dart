import 'package:dartz/dartz.dart';
import 'package:wealth_manager/application/input_failures.dart';

/// [String/num/special chars]@[String/num].[String]
/// 
/// return [unit] if valid
/// 
/// return [InputFailures.invalidEmail] if invalid
Either<InputFailures, Unit> validateEmail(String input) {
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";

  if (RegExp(emailRegex).hasMatch(input)) {
    return right(unit);
  } else {
    return left(const InputFailures.invalidEmail());
  }
}

/// validate password with condition:
/// - must contain at least 8 character
/// - must contain at least 1 numeric
/// 
/// return [unit] if valid
/// 
/// return [InputFailures.invalidPassword] if invalid
Either<InputFailures, Unit> validatePassword(String input) {
  // must contain at least 8 char
  // must contain at least 1 numeric
  const passwordRegex = r'^(?=.*?[0-9]).{8,}$';

  if (RegExp(passwordRegex).hasMatch(input)) {
    return right(unit);
  } else {
    return left(const InputFailures.invalidPassword());
  }
}