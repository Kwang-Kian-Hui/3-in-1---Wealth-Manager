import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wealth_manager/application/account/account_list_state.dart';
import 'package:wealth_manager/infrastructure/account_repository.dart';

class AccountListNotifier extends StateNotifier<AccountListState> {
  final AccountRepository _accountRepository;
  AccountListNotifier(this._accountRepository)
      : super(const AccountListState.initial());

  Future<void> getAccountList() async {
    state = const AccountListState.loading();

    final getAccountResult = await _accountRepository.getAccountList();

    getAccountResult.fold(
      (failure) => state = AccountListState.failure(failure),
      (accountList) => state = AccountListState.loaded(accountList),
    );
  }
}
