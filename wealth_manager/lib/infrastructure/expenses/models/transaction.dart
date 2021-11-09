class Transaction{
  final String txId;
  int txType; // income (1), expense (2), transfer (3)
  double txAmount; 
  String accountId; 
  String categoryId; 
  String txDate; 
  String txNote;
  String? transferAcc;

  Transaction({
    required this.txId,
    required this.txType,
    required this.txAmount,
    required this.accountId,
    required this.categoryId,
    required this.txDate,
    required this.txNote,
    this.transferAcc,
  });
}