import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wealth_manager/infrastructure/firebase_auth_service.dart';

final firebaseAuthProvider = Provider((ref) => FirebaseAuth.instance);

final firebaseAuthServiceProvider = Provider((ref) => FirebaseAuthService(ref.watch(firebaseAuthProvider)));

