import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:wealth_manager/infrastructure/firebase_auth_service.dart';
import 'package:wealth_manager/infrastructure/models/failures.dart';

class AuthenticationRepository {
  FirebaseAuthService _firebaseAuthService;
  AuthenticationRepository(this._firebaseAuthService);

  Future<User?> getFirebaseUser() async {
    final firebaseUser = await _firebaseAuthService.getFirebaseUser();
    if(firebaseUser == null){
      return null;
    } else {
      return firebaseUser;
    }
  }

  Future<Either<AuthFailure, Unit>> register(
      String email, String password) async {
    try {
      await _firebaseAuthService.register(email: email, password: password);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return left(AuthFailure.weakPassword("Please enter a stronger password."));
      } else if (e.code == 'email-already-in-use') {
        return left(AuthFailure.emailAlreadyInUse("Email already in use."));
      }
      return left(AuthFailure.unknownError("An unexpected error occurred."));
    }
  }

  Future<Either<AuthFailure, Unit>> signIn(
      String email, String password) async {
    try {
      await _firebaseAuthService.signIn(email: email, password: password);

      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return left(AuthFailure.userNotFound("User not found."));
      } else if (e.code == 'wrong-password') {
        return left(AuthFailure.wrongPassword("Wrong password entered."));
      }
      return left(AuthFailure.unknownError("An unexpected error occurred."));
    }
  }

  Future<Either<AuthFailure, Unit>> signOut() async {
    try{
      await _firebaseAuthService.signOut();
      return right(unit);
    } on FirebaseAuthException{
      return left(AuthFailure.unknownError("An unexpected error occurred"));
    }
  }
}
