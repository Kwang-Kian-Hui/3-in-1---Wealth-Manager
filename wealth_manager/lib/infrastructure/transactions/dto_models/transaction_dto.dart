import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:wealth_manager/infrastructure/transactions/models/transaction.dart';

part 'transaction_dto.freezed.dart';
part 'transaction_dto.g.dart';

@freezed
class TransactionDTO with _$TransactionDTO {
  const TransactionDTO._();
  const factory TransactionDTO({
    required String txId,
    required int txType,
    required double txAmount,
    required String accountId,
    required String categoryId,
    required String txDate,
    required String txNote,
    String? transferAcc,
  }) = _TransactionDTO;

  factory TransactionDTO.fromDomain(Transaction transaction){
    return TransactionDTO(
      txId: transaction.txId,
      txType: transaction.txType,
      txAmount: transaction.txAmount,
      accountId: transaction.accountId,
      categoryId: transaction.categoryId,
      txDate: transaction.txDate,
      txNote: transaction.txNote,
      transferAcc: transaction.transferAcc,
    );
  }

  Transaction toDomain(){
    return Transaction(
      txId: txId,
      txType: txType,
      txAmount: txAmount,
      accountId: accountId,
      categoryId: categoryId,
      txDate: txDate,
      txNote: txNote,
      transferAcc: transferAcc,
    );
  }

  factory TransactionDTO.fromJson(Map<String, dynamic> json) => _$TransactionDTOFromJson(json);
}