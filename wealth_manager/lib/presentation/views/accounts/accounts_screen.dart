import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wealth_manager/shared/providers.dart';

class AccountsScreen extends ConsumerStatefulWidget {
  const AccountsScreen({Key? key}) : super(key: key);
  static const routeName = "accounts-screen-route";
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AccountsScreenState();
}

class _AccountsScreenState extends ConsumerState<AccountsScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Future.microtask(() async {
      await ref.read(accountListNotifierProvider.notifier).getAccountList();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(accountListNotifierProvider);
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: state.map(
        initial: (_) => Container(),
        loading: (_) => Padding(
          padding: EdgeInsets.only(top: 37.h, left: 30.w, right: 30.w),
          child: Column(
            children: [
              netWorthDisplay(0.0),
            ],
          ),
        ),
        noConnection: (_) => Container(),
        failure: (failure) => Container(),
        loaded: (loaded) => Padding(
          padding: EdgeInsets.only(top: 37.h, left: 30.w, right: 30.w),
          child: Column(
            children: [
              netWorthDisplay(
                ref
                    .read(accountListNotifierProvider.notifier)
                    .getNetWorthOfAccountsList(loaded.accountList),
              ),
              // ListView.builder(
              //   itemCount: loaded.accountList.length,
              //   itemBuilder: (context, index) => ProviderScope(overrides: [
              //     currentAccountItem.overrideWithValue(loaded.accountList[index]),
              //   ], child: const AlarmListItem()),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget netWorthDisplay(double netWorth) {
  return Container(
    height: 90.h,
    child: Card(
      elevation: 2,
      child: Column(
        children: [
          Expanded(
            child: Text("Total net worth:"),
          ),
          Expanded(
            child: Text(
              netWorth.toStringAsFixed(2),
            ),
          ),
          Expanded(
            child: Text("net worth amount"),
          ),
        ],
      ),
    ),
  );
}
