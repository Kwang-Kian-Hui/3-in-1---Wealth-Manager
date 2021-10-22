import 'package:flutter/material.dart';

class AccountsScreen extends StatelessWidget {
  const AccountsScreen({ Key? key }) : super(key: key);
  static const routeName = "accounts-screen-route";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Accounts"),
    );
  }
}