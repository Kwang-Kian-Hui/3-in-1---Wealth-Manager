import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wealth_manager/application/account/account_list_notifier.dart';
import 'package:wealth_manager/application/account/account_list_state.dart';
import 'package:wealth_manager/application/account/addedit_account_form_notifier.dart';
import 'package:wealth_manager/application/account/addedit_account_form_state.dart';
import 'package:wealth_manager/application/auth/auth_notifier.dart';
import 'package:wealth_manager/application/auth/sign_in_notifier.dart';
import 'package:wealth_manager/application/auth/sign_up_notifier.dart';
import 'package:wealth_manager/infrastructure/auth_repository.dart';
import 'package:wealth_manager/infrastructure/firebase_auth_service.dart';
import 'package:wealth_manager/infrastructure/accounts/account_remote_service.dart';
import 'package:wealth_manager/infrastructure/accounts/account_repository.dart';
import 'package:wealth_manager/infrastructure/accounts/models/account.dart';
import 'package:wealth_manager/infrastructure/core_models/auth/auth_state.dart';
import 'package:wealth_manager/infrastructure/core_models/auth/sign_in_state.dart';
import 'package:wealth_manager/infrastructure/core_models/auth/sign_up_state.dart';

final firestoreProvider = Provider((ref) => FirebaseFirestore.instance);
final authProvider = Provider((ref) => FirebaseAuth.instance);

// auth rs, repo and notifiers
final authServiceProvider =
    Provider((ref) => FirebaseAuthService(ref.watch(authProvider)));

final authRepositoryProvider = Provider((ref) => AuthenticationRepository(
    ref.watch(authServiceProvider), ref.watch(accountRemoteServiceProvider)));

final authNotifierProvider =
    StateNotifierProvider.autoDispose<AuthNotifier, AuthState>(
        (ref) => AuthNotifier(ref.watch(authRepositoryProvider)));

final signInNotifierProvider =
    StateNotifierProvider.autoDispose<SignInNotifier, SignInState>(
        (ref) => SignInNotifier(ref.watch(authRepositoryProvider)));

final signUpNotifierProvider =
    StateNotifierProvider.autoDispose<SignUpNotifier, SignUpState>(
        (ref) => SignUpNotifier(ref.watch(authRepositoryProvider)));

// account rs, repo and notifiers
final accountRemoteServiceProvider = Provider((ref) => AccountRemoteService(
    ref.watch(firestoreProvider), ref.watch(authProvider)));

final accountRepositoryProvider = Provider(
    (ref) => AccountRepository(ref.watch(accountRemoteServiceProvider)));

final accountListNotifierProvider =
    StateNotifierProvider.autoDispose<AccountListNotifier, AccountListState>(
        (ref) => AccountListNotifier(ref.watch(accountRepositoryProvider)));

final addEditAccountFormNotifierProvider = StateNotifierProvider.autoDispose<
    AddEditAccountFormNotifier, AddEditAccountFormState>(
  (ref) => AddEditAccountFormNotifier(
    ref.watch(accountRepositoryProvider),
  ),
);

final currentAccountItem =
    Provider.autoDispose<Account>((ref) => throw UnimplementedError());
