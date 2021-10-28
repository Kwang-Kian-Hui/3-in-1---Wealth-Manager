import 'package:freezed_annotation/freezed_annotation.dart';

part 'firebase_failures.freezed.dart';

@freezed
class FirebaseFailures with _$FirebaseFailures {
  const FirebaseFailures._();
  const factory FirebaseFailures.cancelledOperation() = CancelledOperation;
  const factory FirebaseFailures.objectNotFound() = ObjectNotFound;
  const factory FirebaseFailures.unknown() = Unknown;
  const factory FirebaseFailures.noConnection() = NoConnection;
}