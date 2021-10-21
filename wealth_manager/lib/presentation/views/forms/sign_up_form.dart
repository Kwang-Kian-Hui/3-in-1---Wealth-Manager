import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wealth_manager/presentation/views/auth/sign_in_screen.dart';
import 'package:wealth_manager/shared/providers.dart';

class SignUpForm extends ConsumerWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Form(
      child: SingleChildScrollView(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 30.w, left: 30.w, top: 10.h),
              child: Container(
                constraints: BoxConstraints(
                  minHeight: 40.h,
                  // maxHeight: 60.h,
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    errorText: ref.watch(signUpNotifierProvider
                            .select((state) => state.showErrorMessage))
                        ? ref.watch(signUpNotifierProvider
                            .select((state) => state.emailErrorMessage))
                        : null,
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                  ),
                  onChanged: ref
                      .read(signUpNotifierProvider.notifier)
                      .emailAddressChanged,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 10.h),
              child: Container(
                constraints: BoxConstraints(
                  minHeight: 40.h,
                  // maxHeight: 100.h
                ),
                child: TextFormField(
                  obscureText: ref.watch(signUpNotifierProvider
                      .select((state) => state.hidePassword)),
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    errorText: ref.watch(signUpNotifierProvider
                            .select((state) => state.showErrorMessage))
                        ? ref.watch(signUpNotifierProvider
                            .select((state) => state.passwordErrorMessage))
                        : null,
                    suffixIcon: IconButton(
                      onPressed: () {
                        ref
                            .read(signUpNotifierProvider.notifier)
                            .toggleShowPassword();
                      },
                      icon: ref.watch(signUpNotifierProvider
                              .select((state) => state.hidePassword))
                          ? const Icon(Icons.visibility_off)
                          : const Icon(Icons.visibility),
                    ),
                  ),
                  onChanged:
                      ref.read(signUpNotifierProvider.notifier).passwordChanged,
                  inputFormatters: [
                    FilteringTextInputFormatter.deny(RegExp(r"\s")),
                  ],
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: ConstrainedBox(
                constraints: BoxConstraints.tightFor(height: 40.h),
                child: ElevatedButton(
                  onPressed: () {
                    //dismiss the keyboard
                    final currentFocus = FocusScope.of(context);
                    currentFocus.unfocus();
                    ref.read(signUpNotifierProvider.notifier).signUp();
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    //  backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                  ),
                  child: const Text('Sign Up'),
                ),
              ),
            ),
            Divider(
              thickness: 2,
              indent: 30.w,
              endIndent: 30.w,
              height: 50.h,
            ),
            SizedBox(height: 30.h),
            ElevatedButton(
                  onPressed: () {
                    //dismiss the keyboard
                    final currentFocus = FocusScope.of(context);
                    currentFocus.unfocus();
                    Navigator.of(context).pushNamed(SignInScreen.routeName);
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    //  backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                  ),
                  child: const Text("Already have an account? Sign in."),
                ),
          ],
        ),
      ),
    );
  }
}
