class Account{
  final String accId;
  String accName;
  double accBalance;
  int accIcon;
  String accNote;

  Account({
    required this.accId,
    required this.accName,
    required this.accBalance,
    required this.accIcon,
    required this.accNote,
  });

  // Map<String, dynamic> toMap(){
  //   return{
  //     'accId': accId,
  //     'accTitle': accName,
  //     'accBalance': accBalance,
  //     'accIcon': accIcon,
  //     'accNote': accNote,
  //   };
  // }
}