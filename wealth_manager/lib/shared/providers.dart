import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wealth_manager/application/auth/auth_notifier.dart';
import 'package:wealth_manager/infrastructure/authentication_repository.dart';
import 'package:wealth_manager/infrastructure/firebase_auth_service.dart';
import 'package:wealth_manager/infrastructure/models/auth_state.dart';

final authProvider = Provider((ref) => FirebaseAuth.instance);

final authServiceProvider = Provider((ref) => FirebaseAuthService(ref.watch(authProvider)));

final authRepositoryProvider = Provider((ref) => AuthenticationRepository(ref.watch(authServiceProvider)));

final authNotifierProvider = StateNotifierProvider<AuthNotifier, AuthState>(
    (ref) => AuthNotifier(ref.watch(authRepositoryProvider)));

final initProvider = FutureProvider<Unit>((ref) async {
  final authNotifier = ref.read(authNotifierProvider.notifier);
  await authNotifier.checkIfUserIsAuthenticated();
  return unit;
});