import 'package:flutter/material.dart';

class TxCategory{
  final int catId;
  int catType;
  String catName;

  TxCategory({
    required this.catId,
    required this.catType,
    required this.catName,
  });

  Map<String, dynamic> toMap(){
    return{
      'catId': catId,
      'catType': catType,
      'catName': catName,
    };
  }
}