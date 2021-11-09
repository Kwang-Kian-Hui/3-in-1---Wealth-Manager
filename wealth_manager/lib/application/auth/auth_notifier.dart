import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wealth_manager/infrastructure/auth_repository.dart';
import 'package:wealth_manager/infrastructure/core_models/auth/auth_state.dart';

class AuthNotifier extends StateNotifier<AuthState> {
  final AuthenticationRepository _authRepository;
  AuthNotifier(this._authRepository) : super(const AuthState.initial());

  Future<void> checkIfUserIsAuthenticated() async {
    print("check if authenticated");
    final firebaseUser = await _authRepository.getFirebaseUser();
    firebaseUser == null
        ? state = const AuthState.unauthenticated()
        : state = AuthState.authenticated(firebaseUser);
  }

  Future<void> signOut() async {
    final signOutResult = await _authRepository.signOut();
    signOutResult.fold((failure) => null,
        (success) => state = const AuthState.unauthenticated());
  }
}

// command for running build_runner
// flutter pub run build_runner build 