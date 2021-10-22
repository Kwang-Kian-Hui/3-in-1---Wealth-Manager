import 'package:flutter/material.dart';

class ExpensesScreen extends StatelessWidget {
  const ExpensesScreen({ Key? key }) : super(key: key);
  static const routeName = "expenses-screen-route";

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Transactions"),
    );
  }
}