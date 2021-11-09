import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:keyboard_actions/keyboard_actions.dart';
import 'package:wealth_manager/infrastructure/accounts/models/list_of_icons.dart';
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
  var isInit = true;

  @override
  void initState() {
    isInit = ref.read(addEditAccountFormNotifierProvider).isInit == true;
    accIconNotifier = ValueNotifier<IconData>(ListOfIcons.iconList[ref.read(addEditAccountFormNotifierProvider).accountIcon]);
    super.initState();
  }

  @override
  void dispose() {
    accNameFocusNode.dispose();
    accBalanceStringFocusNode.dispose();
    accIconFocusNode.dispose();
    accNoteFocusNode.dispose();
    accIconNotifier.dispose();
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
    return Form(
      child: KeyboardActions(
        config: _buildConfig(context),
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                formHeader(),
                // acc icon-start
                Container(
                  height: 120.h,
                  width: 410.w,
                  padding: EdgeInsets.only(left: 30.w),
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
                            fontSize: 18.sp,
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
                                borderRadius: BorderRadius.all(
                                  Radius.circular(50.w),
                                ),
                                color: Colors.grey,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 2,
                                    blurRadius: 2,
                                    offset: Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: Icon(
                                val,
                                color: Colors.white,
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
                  height: 70.h,
                  width: 380.w,
                  padding: EdgeInsets.only(left: 30.w),
                  child: Card(
                    elevation: 2,
                    child: Padding(
                      padding: EdgeInsets.only(left: 10.w, right: 10.w),
                      child: TextFormField(
                        initialValue: ref
                            .read(addEditAccountFormNotifierProvider)
                            .accountName,
                        onChanged: ref
                            .read(addEditAccountFormNotifierProvider.notifier)
                            .accountNameChanged,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          labelText: ref.watch(
                                      addEditAccountFormNotifierProvider.select(
                                          (state) =>
                                              state.accountNameErrorMessage)) ==
                                  null
                              ? "Enter account name"
                              : null,
                          errorText: ref.watch(
                                  addEditAccountFormNotifierProvider.select(
                                      (state) => state.showErrorMessage))
                              ? ref.watch(
                                  addEditAccountFormNotifierProvider.select(
                                      (state) => state.accountNameErrorMessage))
                              : null,
                        ),
                        style: TextStyle(
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                  ),
                ),
                // account name-end
                SizedBox(
                  height: 20.h,
                ),
                // account balance-start
                Container(
                  height: 70.h,
                  width: 380.w,
                  padding: EdgeInsets.only(left: 30.w),
                  child: Card(
                    elevation: 2,
                    child: Padding(
                      padding: EdgeInsets.only(left: 10.w, right: 10.w),
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
                          border: InputBorder.none,
                          labelText: ref.watch(
                                      addEditAccountFormNotifierProvider.select(
                                          (state) => state
                                              .accountBalanceErrorMessage)) ==
                                  null
                              ? "Enter account balance"
                              : null,
                          errorText: ref.watch(
                                  addEditAccountFormNotifierProvider.select(
                                      (state) => state.showErrorMessage))
                              ? ref.watch(addEditAccountFormNotifierProvider
                                  .select((state) =>
                                      state.accountBalanceErrorMessage))
                              : null,
                        ),
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(
                              12), // max limit of $9,999,999.99
                          FilteringTextInputFormatter.allow(
                            RegExp(r'^(\d+)?\.?\d{0,2}'),
                          ),
                        ],
                        style: TextStyle(
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                  ),
                ),
                // account balance-end
                SizedBox(
                  height: 20.h,
                ),
                // account note-start
                Container(
                  height: 70.h,
                  width: 380.w,
                  padding: EdgeInsets.only(left: 30.w),
                  // decoration: BoxDecoration(
                  //   borderRadius: BorderRadius.all(Radius.circular(20.w),),
                  // ),
                  child: Card(
                    elevation: 2,
                    child: Padding(
                      padding: EdgeInsets.only(left: 10.w, right: 10.w),
                      child: TextFormField(
                        initialValue: ref
                            .read(addEditAccountFormNotifierProvider)
                            .accountNote,
                        onChanged: (newAccNote) {
                          ref
                              .read(addEditAccountFormNotifierProvider.notifier)
                              .accountNoteChanged(newAccNote);
                        },
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          labelText: "Enter account note",
                        ),
                        style: TextStyle(
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                  ),
                ),
                // account note-end
                SizedBox(
                  height: 50.h,
                ),
                !isInit
                    ? Container(
                        // edit form
                        height: 70.h,
                        width: 411.w,
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(),
                            ),
                            Container(
                              height: 70.h,
                              width: 150.w,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  elevation: 2,
                                  primary: Colors.white,
                                  enableFeedback: true,
                                ),
                                onPressed: () {
                                  FocusScope.of(context).unfocus();
                                  ref
                                      .read(addEditAccountFormNotifierProvider
                                          .notifier)
                                      .updateAccount();

                                  ref
                                      .read(
                                          accountListNotifierProvider.notifier)
                                      .getAccountList();
                                },
                                child: Text(
                                  "Update",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.sp,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(),
                            ),
                            Container(
                              height: 70.h,
                              width: 150.w,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  elevation: 2,
                                  primary: Colors.white,
                                  enableFeedback: true,
                                ),
                                onPressed: () {
                                  FocusScope.of(context).unfocus();
                                  final accountId = ref
                                      .read(addEditAccountFormNotifierProvider)
                                      .accountId;

                                  ref
                                      .read(addEditAccountFormNotifierProvider
                                          .notifier)
                                      .deleteAccount(accountId!);

                                  ref
                                      .read(
                                          accountListNotifierProvider.notifier)
                                      .getAccountList();
                                },
                                child: Text(
                                  "Delete",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.sp,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(),
                            ),
                          ],
                        ),
                      )
                    : Container(
                        // add form
                        height: 70.h,
                        width: 380.w,
                        padding: EdgeInsets.only(left: 30.w),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 2,
                            primary: Colors.white,
                            enableFeedback: true,
                          ),
                          onPressed: () {
                            FocusScope.of(context).unfocus();
                            if (isInit) {
                              ref
                                  .read(addEditAccountFormNotifierProvider
                                      .notifier)
                                  .updateAccount();
                            } else {
                              ref
                                  .read(addEditAccountFormNotifierProvider
                                      .notifier)
                                  .addAccount();
                            }

                            ref
                                .read(accountListNotifierProvider.notifier)
                                .getAccountList();
                          },
                          child: Text(
                            "Create Account",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18.sp,
                            ),
                          ),
                        ),
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget formHeader() {
    return Container(
      height: 150.h,
      child: Column(
        children: [
          Container(
            height: 75.h,
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(top: 40.h),
            child: RawMaterialButton(
              onPressed: () => Navigator.of(context).pop(),
              elevation: 2.0,
              fillColor: Colors.white,
              child: Icon(
                Icons.arrow_back_rounded,
                size: 30.w,
              ),
              shape: CircleBorder(),
            ),
          ),
          Container(
            height: 75.h,
            padding: EdgeInsets.only(top: 37.h),
            alignment: Alignment.center,
            child: Text(
              isInit ? "New Account Item" : "Edit Account Item",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
