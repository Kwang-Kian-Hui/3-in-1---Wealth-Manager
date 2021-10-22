import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AccountsScreen extends ConsumerStatefulWidget {
  const AccountsScreen({Key? key}) : super(key: key);
  static const routeName = "accounts-screen-route";
  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _AccountsScreenState();
}

class _AccountsScreenState extends ConsumerState<AccountsScreen>{

  @override
  void initState() {
    // TODO: implement initState
    Future.microtask(() {
      // ref.read();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: EdgeInsets.only(top: 37.h, left: 30.w, right: 30.w),
        child: Column(
          children: [
            netWorthDisplay(),

          ],
        ),
      ),
    );
  }
}

Widget netWorthDisplay() {
  return Container(
    height: 90.h,
    child: Card(
      elevation: 2,
      child: Column(
        children: [
          Expanded(
            child: Text("Total net worth"),
          ),
          Expanded(
            child: Text("net worth amount"),
          ),
        ],
      ),
    ),
  );
}
