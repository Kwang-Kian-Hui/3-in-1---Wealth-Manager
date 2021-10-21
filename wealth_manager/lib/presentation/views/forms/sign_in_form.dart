import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wealth_manager/shared/providers.dart';

class SignInForm extends ConsumerWidget {
  const SignInForm({ Key? key }) : super(key: key);

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
                    errorText: ref.watch(signInNotifierProvider
                          .select((state) => state.showErrorMessage))
                      ? ref.watch(signInNotifierProvider
                          .select((state) => state.emailErrorMessage))
                      : null,
                  ),
                  onChanged:
                      ref.read(signInNotifierProvider.notifier).emailAddressChanged,
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
                  obscureText: ref.watch(signInNotifierProvider
                      .select((state) => state.hidePassword)),
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    errorText: ref.watch(signInNotifierProvider
                          .select((state) => state.showErrorMessage))
                      ? ref.watch(signInNotifierProvider
                          .select((state) => state.passwordErrorMessage))
                      : null,
                    suffixIcon: IconButton(
                    onPressed: () {
                      ref
                          .read(signInNotifierProvider.notifier)
                          .toggleShowPassword();
                    },
                    icon: ref.watch(signInNotifierProvider
                            .select((state) => state.hidePassword))
                        ? const Icon(Icons.visibility_off)
                        : const Icon(Icons.visibility),
                  ),
                  ),
                  onChanged: ref
                      .read(signInNotifierProvider.notifier)
                      .passwordChanged,
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
                    ref.read(signInNotifierProvider.notifier).signIn();
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30))),
                    //  backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                  ),
                  child: const Text('Sign In'),
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
            Center(
              child: Text(
                "Don't have an account? Sign up.",
                style: Theme.of(context).textTheme.bodyText1,
              )
            ),

            //SIGN UP PART TEST
            Padding(
              padding: EdgeInsets.only(top: 8.h, bottom: 20.h),
              child: IntrinsicHeight(
                child: Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Expanded(
                      //   child: Align(
                      //       alignment: Alignment.centerRight,
                      //       child: InkWell(
                      //         onTap: () {
                      //           AutoRouter.of(context)
                      //               .push(const ConsumerSignUpRoute());
                      //         },
                      //         child: const Text('Consumer',
                      //             style: TextStyle(
                      //                 color: Colors.redAccent,
                      //                 decoration: TextDecoration.underline)),
                      //       )),
                      // ),

                      SizedBox(
                        height: 20.h,
                        child: VerticalDivider(
                          color: Colors.black54,
                          thickness: 1,
                          width: 20.w,
                        ),
                      ),

                      // Expanded(
                      //   child: Align(
                      //       alignment: Alignment.centerLeft,
                      //       child: InkWell(
                      //         onTap: () {
                      //           AutoRouter.of(context)
                      //               .push(const RetailerSignUpRoute());
                      //         },
                      //         child: const Text('Retailer',
                      //             style: TextStyle(
                      //               color: Colors.redAccent,
                      //               decoration: TextDecoration.underline)),
                      //       )),
                      // ),
                    ],),
              ),
            )
          ],
        ),
      ),
    );
  }
}