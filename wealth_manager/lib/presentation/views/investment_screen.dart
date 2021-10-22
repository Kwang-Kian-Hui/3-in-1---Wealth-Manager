import 'package:flutter/material.dart';

class InvestmentScreen extends StatelessWidget {
  const InvestmentScreen({ Key? key }) : super(key: key);
  static const routeName = "investment-screen-route";

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Investment"),
    );
  }
}