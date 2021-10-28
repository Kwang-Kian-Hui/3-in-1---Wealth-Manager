import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wealth_manager/application/account/addedit_account_form_state.dart';
import 'package:wealth_manager/infrastructure/account_repository.dart';

class AddEditAccountFormNotifier extends StateNotifier<AddEditAccountFormState>{
  final AccountRepository _accountRepository;
  AddEditAccountFormNotifier(this._accountRepository) : super(AddEditAccountFormState.initial());

  void accountNameChanged(String accountName) {
    state = state.copyWith(accountName: accountName);
  }

  void accountBalanceChanged(String accountBalance) {
    state = state.copyWith(accountBalanceString: accountBalance);
  }

  void accountIconChanged(int accountIcon) {
    state = state.copyWith(accountIcon: accountIcon);
  }

  void accountNoteChanged(String accountNote) {
    state = state.copyWith(accountNote: accountNote);
  }

  void validateInputs() {

  }

  // Future<void> addAccount() {

  // }

  // Future<void> editAccount() {

  // }
}