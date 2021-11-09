import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:wealth_manager/infrastructure/accounts/account_remote_service.dart';
import 'package:wealth_manager/infrastructure/accounts/dto_models/account_dto.dart';
import 'package:wealth_manager/infrastructure/accounts/models/account.dart';
import 'package:wealth_manager/infrastructure/core_models/firebase_failures.dart';

class AccountRepository {
  final AccountRemoteService _accountRemoteService;
  AccountRepository(this._accountRemoteService);

  Future<Either<FirebaseFailures, List<Account>>> getAccountList() async {
    try {
      List<Account> accountList = await _accountRemoteService
          .getAccountList()
          .then((accountDTOList) => accountDTOList
              .map((accountDTOItem) => accountDTOItem.toDomain())
              .toList());
      return right(accountList);
    } on FirebaseException catch (error) {
      if (error.code == 'not-found') {
        return left(const FirebaseFailures.objectNotFound());
      }
      return left(const FirebaseFailures.unknown());
    }
  }

  Future<Either<FirebaseFailures, Unit>> addNewAccount(Account newAcc) async {
    return exceptionHandling(() => _accountRemoteService.addNewAccount(AccountDTO.fromDomain(newAcc)));
  }

  Future<Either<FirebaseFailures, Unit>> updateAccount(Account newAcc) async {
    return exceptionHandling(() => _accountRemoteService.updateAccount(AccountDTO.fromDomain(newAcc)));
  }

  Future<Either<FirebaseFailures, Unit>> deleteAccount(String accountId) async {
    return exceptionHandling(() => _accountRemoteService.deleteAccount(accountId));
  }

  Future<Either<FirebaseFailures, Unit>> exceptionHandling(Future<void> Function() performFunction) async {
    try{
      await performFunction();
      return right(unit);
    } on FirebaseException catch (error) {
      if (error.code == 'cancelled') {
        return left(const FirebaseFailures.cancelledOperation());
      }
      return left(const FirebaseFailures.unknown());
    }
  }
}
