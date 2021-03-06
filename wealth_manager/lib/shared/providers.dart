import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wealth_manager/application/auth/auth_notifier.dart';
import 'package:wealth_manager/application/auth/sign_in_notifier.dart';
import 'package:wealth_manager/application/auth/sign_up_notifier.dart';
import 'package:wealth_manager/infrastructure/auth_repository.dart';
import 'package:wealth_manager/infrastructure/firebase_auth_service.dart';
import 'package:wealth_manager/infrastructure/models/auth/auth_state.dart';
import 'package:wealth_manager/infrastructure/models/auth/sign_in_state.dart';
import 'package:wealth_manager/infrastructure/models/auth/sign_up_state.dart';

final authProvider = Provider((ref) => FirebaseAuth.instance);

final authServiceProvider =
    Provider((ref) => FirebaseAuthService(ref.watch(authProvider)));

final authRepositoryProvider =
    Provider((ref) => AuthenticationRepository(ref.watch(authServiceProvider)));

final authNotifierProvider =
    StateNotifierProvider.autoDispose<AuthNotifier, AuthState>(
        (ref) => AuthNotifier(ref.watch(authRepositoryProvider)));

final signInNotifierProvider =
    StateNotifierProvider.autoDispose<SignInNotifier, SignInState>(
        (ref) => SignInNotifier(ref.watch(authRepositoryProvider)));

final signUpNotifierProvider =
    StateNotifierProvider.autoDispose<SignUpNotifier, SignUpState>(
        (ref) => SignUpNotifier(ref.watch(authRepositoryProvider)));