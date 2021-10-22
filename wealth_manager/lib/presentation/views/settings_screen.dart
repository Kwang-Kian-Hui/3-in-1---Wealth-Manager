import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wealth_manager/presentation/views/auth/sign_in_screen.dart';
import 'package:wealth_manager/shared/providers.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({ Key? key }) : super(key: key);
  static const routeName = "settings-screen-route";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
        child: ElevatedButton(
          child: const Text("Home, click to sign out"),
          onPressed: () async {
            await ref.read(authNotifierProvider.notifier).signOut();
            Navigator.of(context).pushReplacementNamed(SignInScreen.routeName);
          },
        ),
      );
  }
}