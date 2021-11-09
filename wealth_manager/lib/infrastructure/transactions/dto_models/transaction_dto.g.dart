// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TransactionDTO _$$_TransactionDTOFromJson(Map json) => _$_TransactionDTO(
      txId: json['txId'] as String,
      txType: json['txType'] as int,
      txAmount: (json['txAmount'] as num).toDouble(),
      accountId: json['accountId'] as String,
      categoryId: json['categoryId'] as String,
      txDate: json['txDate'] as String,
      txNote: json['txNote'] as String,
      transferAcc: json['transferAcc'] as String?,
    );

Map<String, dynamic> _$$_TransactionDTOToJson(_$_TransactionDTO instance) =>
    <String, dynamic>{
      'txId': instance.txId,
      'txType': instance.txType,
      'txAmount': instance.txAmount,
      'accountId': instance.accountId,
      'categoryId': instance.categoryId,
      'txDate': instance.txDate,
      'txNote': instance.txNote,
      'transferAcc': instance.transferAcc,
    };
