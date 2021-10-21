import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wealth_manager/presentation/views/auth/sign_in_screen.dart';
import 'package:wealth_manager/shared/providers.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const routeName = 'home-screen-route';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text("Home, click to sign out"),
          onPressed: () async {
            await ref.read(authNotifierProvider.notifier).signOut();
            Navigator.of(context).pushReplacementNamed(SignInScreen.routeName);
          },
        ),
      ),
    );
  }
}
