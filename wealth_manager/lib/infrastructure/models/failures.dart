import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
class AuthFailure with _$AuthFailure {
  const AuthFailure._();
  const factory AuthFailure.WeakPassword(String errorMessage) = WeakPassword;
  const factory AuthFailure.UserNotFound(String errorMessage) = UserNotFound;
  const factory AuthFailure.WrongPassword(String errorMessage) = WrongPassword;
  const factory AuthFailure.SystemError(String errorMessage) = SystemError;
  const factory AuthFailure.noConnection() = NoConnection;
}