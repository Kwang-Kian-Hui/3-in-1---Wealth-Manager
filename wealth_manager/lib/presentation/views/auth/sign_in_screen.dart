import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wealth_manager/infrastructure/models/auth/sign_in_state.dart';
import 'package:wealth_manager/presentation/views/forms/sign_in_form.dart';
import 'package:wealth_manager/presentation/views/home_screen.dart';
import 'package:wealth_manager/presentation/widgets/progress_indicator_overlay.dart';
import 'package:wealth_manager/shared/providers.dart';

class SignInScreen extends ConsumerWidget {
  const SignInScreen({Key? key}) : super(key: key);
  static const routeName = 'sign-in-screen-route';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<SignInState>(signInNotifierProvider, (state) {
      if (state.successful)
        Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
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
          Column(
            children: [
              Flexible(child: Container()),
              Expanded(
                flex: 2,
                child: Container(
                  alignment: Alignment.bottomCenter,
                  constraints: BoxConstraints(maxWidth: 150.w),
                  child: const Icon(Icons.account_balance),
                ),
              ),
              Expanded(
                flex: 6,
                child: SafeArea(child: const SignInForm()),
              ), //sign in form
            ],
          ),
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
