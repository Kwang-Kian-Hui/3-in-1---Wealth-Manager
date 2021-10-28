import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:wealth_manager/infrastructure/firebase_auth_service.dart';
import 'package:wealth_manager/infrastructure/account_remote_service.dart';
import 'package:wealth_manager/infrastructure/models/auth/auth_failures.dart';

class AuthenticationRepository {
  final FirebaseAuthService _firebaseAuthService;
  final AccountRemoteService _firestoreRemoteService;
  AuthenticationRepository(this._firebaseAuthService, this._firestoreRemoteService);
  // FirebaseAccountInitialisation;

  Future<User?> getFirebaseUser() async {
    final firebaseUser = await _firebaseAuthService.getFirebaseUser();
    if(firebaseUser == null){
      return null;
    } else {
      return firebaseUser;
    }
  }

  Future<Either<AuthFailure, Unit>> signUp(
      String email, String password) async {
    try {
      final newUserCredential = await _firebaseAuthService.signUp(email: email, password: password);
      if(newUserCredential.user == null){
        throw AuthFailure.unknownError('no user found after creation');
      }
      await _firestoreRemoteService.createCollectionDocForNewUser(newUserCredential.user!.uid);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
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
