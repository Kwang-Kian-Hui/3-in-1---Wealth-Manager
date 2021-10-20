import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:wealth_manager/infrastructure/firebase_auth_service.dart';
import 'package:wealth_manager/infrastructure/models/failures.dart';

class AuthenticationRepository {
  FirebaseAuthService _firebaseAuthService;
  AuthenticationRepository(this._firebaseAuthService);

  // Future<Either<AuthFailure, Unit>> register(
  //     String email, String password) async {
  //   try {
  //     await _firebaseAuthService.register(email: email, password: password);
  //     return right(unit);
  //   } on FirebaseAuthException catch (e) {
  //     if (e.code == 'weak-password') {
  //       return left(AuthFailure("", AuthFailureTypes.UserNotFound));
  //     } else if (e.code == 'email-already-in-use') {
  //       return left(AuthFailure("", AuthFailureTypes.WrongPassword));
  //     }
  //     return left(AuthFailure("", AuthFailureTypes.SystemError));
  //   }
  // }

  // Future<Either<AuthFailure, Unit>> signIn(
  //     String email, String password) async {
  //   try {
  //     await _firebaseAuthService.signIn(email: email, password: password);

  //     return right(unit);
  //   } on FirebaseAuthException catch (e) {
  //     if (e.code == 'user-not-found') {
  //       return left(AuthFailure("", AuthFailureTypes.UserNotFound));
  //     } else if (e.code == 'wrong-password') {
  //       return left(AuthFailure("", AuthFailureTypes.WrongPassword));
  //     }
  //     return left(AuthFailure("", AuthFailureTypes.SystemError));
  //   }
  // }

  // Future<Either
}
