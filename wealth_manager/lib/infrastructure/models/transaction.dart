import 'package:flutter/material.dart';

class Transaction{
  final int transId;
  int transType; // income (1), expense (2), transfer (3)
  double transAmount; 
  int accountId; 
  int categoryId; 
  String transDate; 
  String? transNote;
  int? transferAcc;

  Transaction({
    required this.transId,
    required this.transType,
    required this.transAmount,
    required this.accountId,
    required this.categoryId,
    required this.transDate,
    this.transNote,
    this.transferAcc,
  });

  Map<String, dynamic> toMap(){
    return{
      'transId': transId,
      'transType': transType,
      'transAmount': transAmount,
      'accountId': accountId,
      'categoryId': categoryId,
      'transDate': transDate,
      'transNote': transNote,
      'transferAcc': transferAcc,
    };
  }
  
}