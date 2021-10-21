import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wealth_manager/infrastructure/models/auth/sign_in_state.dart';
import 'package:wealth_manager/presentation/views/home_page.dart';
import 'package:wealth_manager/presentation/widgets/progress_indicator_overlay.dart';
import 'package:wealth_manager/shared/providers.dart';

class SignInPage extends ConsumerWidget {
  const SignInPage({Key? key}) : super(key: key);
  static const routeName = 'sign-in-page-route';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<SignInState>(signInNotifierProvider, (state) {
      if (state.successful)
        Navigator.of(context).pushReplacementNamed(HomePage.routeName);
    });
    ref.listen<bool>(
        signInNotifierProvider.select((state) => state.hasConnection), (state) {
      if (!state) {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('No connection'),
          duration: Duration(seconds: 5),
          behavior: SnackBarBehavior.floating,
        ));
      }
    });
    return Scaffold(
      body: Stack(
        children: [
          Container(), //sign in form
          ProgressIndicatorOverlay(
            isSaving: ref.watch(
                signInNotifierProvider.select((state) => state.isSaving)),
            text: "Signing In",
          ),
        ],
      ),
    );
  }
}
