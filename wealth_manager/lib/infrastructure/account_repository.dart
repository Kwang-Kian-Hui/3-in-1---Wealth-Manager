import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:wealth_manager/infrastructure/account_remote_service.dart';
import 'package:wealth_manager/infrastructure/dto_models/account_dto.dart';
import 'package:wealth_manager/infrastructure/models/account.dart';
import 'package:wealth_manager/infrastructure/models/firebase_failures.dart';

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
    try {
      print("repo try to add new acc");
      await _accountRemoteService.addNewAccount(AccountDTO.fromDomain(newAcc));
      return right(unit);
    } on FirebaseException catch (error) {
      if (error.code == 'cancelled') {
        return left(const FirebaseFailures.cancelledOperation());
      }
      return left(const FirebaseFailures.unknown());
    }
  }

  Future<Either<FirebaseFailures, Unit>> updateAccount(Account newAcc) async {
    try {
      await _accountRemoteService.addNewAccount(AccountDTO.fromDomain(newAcc));
      return right(unit);
    } on FirebaseException catch (error) {
      if (error.code == 'cancelled') {
        return left(const FirebaseFailures.cancelledOperation());
      }
      return left(const FirebaseFailures.unknown());
    }
  }
}
