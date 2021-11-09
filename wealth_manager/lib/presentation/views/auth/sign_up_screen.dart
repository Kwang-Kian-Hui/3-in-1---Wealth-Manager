import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wealth_manager/infrastructure/core_models/auth/sign_up_state.dart';
import 'package:wealth_manager/presentation/views/forms/sign_up_form.dart';
import 'package:wealth_manager/presentation/views/home_screen.dart';
import 'package:wealth_manager/presentation/widgets/progress_indicator_overlay.dart';
import 'package:wealth_manager/shared/providers.dart';

class SignUpScreen extends ConsumerWidget {
  const SignUpScreen({Key? key}) : super(key: key);
  static const routeName = 'sign-up-screen-route';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<SignUpState>(signUpNotifierProvider, (state) {
      if (state.successful)
        Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
    });
    ref.listen<bool>(
        signUpNotifierProvider.select((state) => state.hasConnection), (state) {
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
                child: SafeArea(child: const SignUpForm()),
              ), //sign up form
            ],
          ),
          ProgressIndicatorOverlay(
            isSaving: ref.watch(
                signInNotifierProvider.select((state) => state.isSaving)),
            text: "Signing Up",
          ),
        ],
      ),
    );
  }
}
