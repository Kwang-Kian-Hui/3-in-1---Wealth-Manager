import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wealth_manager/infrastructure/models/auth/auth_state.dart';
import 'package:wealth_manager/presentation/views/auth/sign_in_screen.dart';
import 'package:wealth_manager/presentation/views/home_screen.dart';
import 'package:wealth_manager/shared/providers.dart';

final splashHasRenderedProvider = StateProvider<bool>((ref) => false);

class SplashScreen extends ConsumerWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static const routeName = 'splash-screen-route';
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.read(authNotifierProvider.notifier).checkIfUserIsAuthenticated();
    ref.listen<AuthState>(authNotifierProvider, (state) {
        state.maybeWhen(
          authenticated: (firebaseUser) {
            Navigator.of(context).pushNamed(HomeScreen.routeName);
          },
          unauthenticated: () {
            Navigator.of(context).pushNamed(SignInScreen.routeName);
          },
          orElse: () {},
        );
    });
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}