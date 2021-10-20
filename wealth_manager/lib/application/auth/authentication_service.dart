import 'package:firebase_auth/firebase_auth.dart';

class AuthenticationService{
  final FirebaseAuth _firebaseAuth;

  AuthenticationService(this._firebaseAuth);

  // Future<UserCredential> signIn(String email, String password) async {
  //   try{
  //     await _authInstance.signInWithEmailAndPassword(email: email, password: password);
  //   } on FirebaseAuthException catch (e){
  //     return e.message;
  //   }
  // }

  // Future<String> signUp(String email, String password){

  // }
}