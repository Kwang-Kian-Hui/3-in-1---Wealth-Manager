import 'package:flutter/material.dart';

class Account{
  final int accId;
  String title;
  double accBalance;
  int accColor;
  int accIcon;
  String? accNote;

  Account({
    required this.accId,
    required this.title,
    required this.accBalance,
    required this.accColor,
    required this.accIcon,
    this.accNote,
  });

  Map<String, dynamic> toMap(){
    return{
      'accId': accId,
      'accTitle': title,
      'accBalance': accBalance,
      'accColor': accColor,
      'accIcon': accIcon,
      'accNote': accNote,
    };
  }
}