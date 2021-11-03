import 'package:dartz/dartz.dart';
import 'package:wealth_manager/application/input_failures.dart';

Either<InputFailures, Unit> validateNotEmpty(String input) =>
    input != '' ? right(unit) : left(const InputFailures.empty());


Either<InputFailures, double> validateAmountValue(String input) {
  if (input == '') {
    return left(const InputFailures.empty());
  }

  try {
    final convertedInput = double.parse(input);
    return right(convertedInput);
  } catch (_) {
    return left(const InputFailures.invalidAmount());
  }
}