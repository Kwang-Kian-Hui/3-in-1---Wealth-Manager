import 'package:flutter/material.dart';

class TransactionsScreen extends StatelessWidget {
  const TransactionsScreen({ Key? key }) : super(key: key);
  static const routeName = "transactions-screen-route";

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Transactions"),
    );
  }
}