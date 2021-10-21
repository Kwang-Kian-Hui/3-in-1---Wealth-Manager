import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failures.freezed.dart';

@freezed
class AuthFailure with _$AuthFailure {
  const AuthFailure._();
  const factory AuthFailure.emailAlreadyInUse(String errorMessage) = _EmailAlreadyInUse;
  const factory AuthFailure.userNotFound(String errorMessage) = _UserNotFound;
  const factory AuthFailure.wrongPassword(String errorMessage) = _WrongPassword;
  const factory AuthFailure.unknownError(String errorMessage) = _SystemError;
  const factory AuthFailure.noConnection() = _NoConnection;
}