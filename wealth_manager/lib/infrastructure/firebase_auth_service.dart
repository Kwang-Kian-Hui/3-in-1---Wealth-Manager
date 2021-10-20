import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:wealth_manager/infrastructure/models/failures.dart';

class FirebaseAuthService {
  final FirebaseAuth _firebaseAuth;
  // final GoogleSignIn _googleSignIn;

  FirebaseAuthService(
    this._firebaseAuth,
    // this._googleSignIn,
  );

  // Future<User?> getFirebaseUser() {
  //   return _firebaseAuth.authStateChanges().first;
  // }

  // String getUserId() {
  //   return _firebaseAuth.currentUser!.uid;
  // }
  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();

  Future<void> verifyUserEmail() async {
    User? user = FirebaseAuth.instance.currentUser;
    if (user != null && !user.emailVerified) {
      var actionCodeSettings = ActionCodeSettings(
        url: 'https://www.example.com/?email=${user.email}',
        dynamicLinkDomain: 'example.page.link',
        androidPackageName: 'com.example.android',
        androidInstallApp: true,
        androidMinimumVersion: '12',
        iOSBundleId: 'com.example.ios',
        handleCodeInApp: true,
      );

      await user.sendEmailVerification(actionCodeSettings);

      // await _firebaseAuth.checkActionCode(code)
    }
  }

  Future<UserCredential> signIn(
      {required String email, required String password}) {
    return _firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  Future<UserCredential> register(
      {required String email, required String password}) async {
    return _firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  Future<void> signOut() {
    return _firebaseAuth.signOut();
  }
}
