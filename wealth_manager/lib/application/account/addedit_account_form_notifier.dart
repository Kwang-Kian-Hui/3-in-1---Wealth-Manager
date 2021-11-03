import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wealth_manager/application/account/addedit_account_form_state.dart';
import 'package:wealth_manager/infrastructure/account_repository.dart';
import 'package:wealth_manager/infrastructure/models/account.dart';

class AddEditAccountFormNotifier extends StateNotifier<AddEditAccountFormState>{
  final AccountRepository _accountRepository;
  AddEditAccountFormNotifier(this._accountRepository) : super(AddEditAccountFormState.initial());

  void accountNameChanged(String accountName) {
    state = state.copyWith(accountName: accountName);
  }

  void accountBalanceChanged(String accountBalanceString) {
    state = state.copyWith(accountBalanceString: accountBalanceString);
  }

  void accountIconChanged(int accountIcon) {
    state = state.copyWith(accountIcon: accountIcon);
  }

  void accountNoteChanged(String accountNote) {
    state = state.copyWith(accountNote: accountNote);
  }

  void validateInputs() {

  }


  void initialiseValueForEditAccountForm(Account account){
    state = state.copyWith(
      isInit: false,
      accountId: account.accId,
      accountName: account.accName,
      accountBalance: account.accBalance,
      accountBalanceString: account.accBalance.toString(),
      accountIcon: account.accIcon,
      accountNote: account.accNote
    );
  }
  // Future<void> addAccount() {

  // }

  // Future<void> editAccount() {

  // }
}