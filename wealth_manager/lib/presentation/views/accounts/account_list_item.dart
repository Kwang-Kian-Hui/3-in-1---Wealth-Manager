import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wealth_manager/shared/providers.dart';

class AccountListItem extends ConsumerWidget {
  const AccountListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final account = ref.watch(currentAccountItem);
    return Container(
      height: 100.h,
      width: 350.w,
      child: Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.w)),
        shadowColor: Colors.grey.withOpacity(0.5),
        elevation: 2,
        child: ListTile(
          leading: Container(
            alignment: Alignment.center,
            height: 100.h,
            width: 40.w,
            child: Icon(Icons.account_balance),
          ),
          title: Container(
            height: 35.h,
            width: 165.w,
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(account.accName, style: TextStyle(fontSize: 16.w, overflow: TextOverflow.ellipsis)),
            ),
          ),
          subtitle: Container(
            height: 60.h,
            width: 165.w,
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(account.accNote,  style: TextStyle(fontSize: 12.w, overflow: TextOverflow.ellipsis), maxLines: 3),
            ),
          ),
          trailing: Container(
            alignment: Alignment.centerRight,
            width: 110.w,
            child: Text("\$ ${account.accBalance.toStringAsFixed(2)}", style: TextStyle(fontWeight: FontWeight.bold), textAlign: TextAlign.end),
          ),
        ),
      ),
    );
  }
}
