import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:keyboard_actions/keyboard_actions.dart';
import 'package:wealth_manager/infrastructure/models/list_of_icons.dart';
import 'package:wealth_manager/presentation/widgets/custom_keyboards.dart';
import 'package:wealth_manager/shared/providers.dart';

class AddEditAccountForm extends ConsumerStatefulWidget {
  const AddEditAccountForm({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _AddEditAccountFormState();
}

class _AddEditAccountFormState extends ConsumerState<AddEditAccountForm> {
  ValueNotifier<IconData> accIconNotifier =
      ValueNotifier<IconData>(ListOfIcons.iconList[5]);
  final accNameFocusNode = FocusNode();
  final accBalanceStringFocusNode = FocusNode();
  final accIconFocusNode = FocusNode();
  final accNoteFocusNode = FocusNode();

  @override
  void dispose() {
    accNameFocusNode.dispose();
    accBalanceStringFocusNode.dispose();
    accIconFocusNode.dispose();
    accNoteFocusNode.dispose();
    super.dispose();
  }

  KeyboardActionsConfig _buildConfig(BuildContext context) {
    return KeyboardActionsConfig(
        keyboardActionsPlatform: KeyboardActionsPlatform.ALL,
        keyboardBarColor: Colors.white,
        actions: [
          KeyboardActionsItem(
            focusNode: accIconFocusNode,
            footerBuilder: (_) => IconDataKeyboard(
              accIconNotifier: accIconNotifier,
            ),
          ),
          KeyboardActionsItem(
            focusNode: accNameFocusNode,
          ),
          KeyboardActionsItem(
            focusNode: accBalanceStringFocusNode,
          ),
          KeyboardActionsItem(
            focusNode: accNoteFocusNode,
          ),
        ]);
  }

  @override
  Widget build(BuildContext context) {
    // final image = ref.watch(
    //     addEditAccountFormNotifierProvider.select((state) => state.imageFile));
    return Form(
      child: KeyboardActions(
        config: _buildConfig(context),
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                formHeader(),
                // acc icon-start
                Container(
                  height: 120.h,
                  width: 410.w,
                  padding: EdgeInsets.only(left: 55.w),
                  alignment: Alignment.center,
                  child: Row(
                    children: [
                      Container(
                        width: 140.w,
                        alignment: Alignment.center,
                        child: Text(
                          "Account Icon:",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.sp,
                          ),
                        ),
                      ),
                      Container(
                        width: 205.w,
                        padding: EdgeInsets.only(left: 75.w, right: 75.w),
                        child: KeyboardCustomInput<IconData>(
                          focusNode: accIconFocusNode,
                          notifier: accIconNotifier,
                          builder: (context, val, hasFocus) {
                            return Container(
                              width: 50.w,
                              height: 50.w,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(50.w),
                                ),
                              ),
                              child: Icon(
                                val,
                                color: Colors.grey,
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                // acc icon-end
                // account name-start
                Container(
                  height: 90.h,
                  width: 350.w,
                  padding: EdgeInsets.only(left: 55.w),
                  child: TextFormField(
                    initialValue: ref
                        .read(addEditAccountFormNotifierProvider)
                        .accountName,
                    onChanged: (newAccName) {
                      ref
                          .read(addEditAccountFormNotifierProvider.notifier)
                          .accountNameChanged(newAccName);
                    },
                    decoration: InputDecoration(
                      focusColor: Colors.black,
                      labelText: ref.watch(addEditAccountFormNotifierProvider
                                  .select((state) =>
                                      state.accountNameErrorMessage)) ==
                              null
                          ? "Enter account name"
                          : null,
                      errorText: ref.watch(addEditAccountFormNotifierProvider
                              .select((state) => state.showErrorMessage))
                          ? ref.watch(addEditAccountFormNotifierProvider
                              .select((state) => state.accountNameErrorMessage))
                          : null,
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          // TODO: theme color
                          // color: Colors.blue,
                          width: 2,
                        ),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 2,
                        ),
                      ),
                    ),
                    style: TextStyle(
                      fontSize: 16.sp,
                    ),
                  ),
                ),
                // account name-end
                // account balance-start
                Container(
                  height: 90.h,
                  width: 350.w,
                  padding: EdgeInsets.only(left: 55.w),
                  child: TextFormField(
                    initialValue: ref
                        .read(addEditAccountFormNotifierProvider)
                        .accountBalanceString,
                    onChanged: (newAccBalance) {
                      ref
                          .read(addEditAccountFormNotifierProvider.notifier)
                          .accountBalanceChanged(newAccBalance);
                    },
                    decoration: InputDecoration(
                      focusColor: Colors.black,
                      labelText: ref.watch(addEditAccountFormNotifierProvider
                                  .select((state) =>
                                      state.accountBalanceErrorMessage)) ==
                              null
                          ? "Enter account balance"
                          : null,
                      errorText: ref.watch(addEditAccountFormNotifierProvider
                              .select((state) => state.showErrorMessage))
                          ? ref.watch(addEditAccountFormNotifierProvider.select(
                              (state) => state.accountBalanceErrorMessage))
                          : null,
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          // TODO: theme color
                          // color: Colors.blue,
                          width: 2,
                        ),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 2,
                        ),
                      ),
                    ),
                    style: TextStyle(
                      fontSize: 16.sp,
                    ),
                  ),
                ),
                // account balance-end
                // account note-start
                Container(
                  height: 90.h,
                  width: 350.w,
                  padding: EdgeInsets.only(left: 55.w),
                  child: TextFormField(
                    initialValue: ref
                        .read(addEditAccountFormNotifierProvider)
                        .accountBalanceString,
                    onChanged: (newAccNote) {
                      ref
                          .read(addEditAccountFormNotifierProvider.notifier)
                          .accountBalanceChanged(newAccNote);
                    },
                    decoration: InputDecoration(
                      focusColor: Colors.black,
                      labelText: "Enter account note",
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          // TODO: theme color
                          // color: Colors.blue,
                          width: 2,
                        ),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 2,
                        ),
                      ),
                    ),
                    style: TextStyle(
                      fontSize: 16.sp,
                    ),
                  ),
                ),
                // account note-end
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget formHeader() {
    return Container(
      padding: EdgeInsets.only(top: 37.h),
      alignment: Alignment.center,
      child: Text(
        "New Account Item",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25.sp,
        ),
      ),
    );
  }
}
