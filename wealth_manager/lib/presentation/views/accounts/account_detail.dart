// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:wealth_manager/application/account/account_list_state.dart';
// import 'package:wealth_manager/infrastructure/models/account.dart';
// import 'package:wealth_manager/infrastructure/models/firebase_failures.dart';
// import 'package:wealth_manager/presentation/views/accounts/addedit_accounts_screen.dart';
// import 'package:wealth_manager/shared/providers.dart';

// class AccountDetail extends ConsumerWidget {
//   const AccountDetail({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final account = ref.watch(currentAccountItem);
//     return Container(
//       height: 731.h,
//       width: 411.w,
//       child: Column(
//         children: [
//           Container(
//             height: 300.h,
//             padding: EdgeInsets.only(left: 30.w, right: 30.w),
//             child: Card(
//               shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(25.w)),
//               shadowColor: Colors.grey.withOpacity(0.5),
//               elevation: 2,
//               child: Column(
//                 children: [
//                   actionMenu(context, account, ref),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget actionMenu(BuildContext context, Account account, WidgetRef ref) {
//     return Flexible(
//       child: Container(
//         width: 350.w,
//         child: Row(
//           children: [
//             Flexible(
//               child: IconButton(
//                 onPressed: () {
//                   Navigator.of(context).pushNamed(
//                       AddEditAccountScreen.routeName,
//                       arguments: account);
//                 },
//                 icon: Icon(Icons.edit),
//               ),
//             ),
//             Flexible(
//               child: IconButton(
//                 onPressed: () async {
//                   await ref
//                       .read(addEditAccountFormNotifierProvider.notifier)
//                       .deleteAccount(account.accId);
                  
//                 },
//                 icon: Icon(Icons.delete),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


// current issue is that the widgets build faster than the data is copied to state from arguments when tapping on accounts
// account init need to check if it works
// add account icon might be wrong