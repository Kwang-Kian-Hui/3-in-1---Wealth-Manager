import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wealth_manager/application/account/addedit_account_form_state.dart';
import 'package:wealth_manager/application/account/value_validator.dart';
import 'package:wealth_manager/application/input_failures.dart';
import 'package:wealth_manager/infrastructure/account_repository.dart';
import 'package:wealth_manager/infrastructure/models/account.dart';

class AddEditAccountFormNotifier
    extends StateNotifier<AddEditAccountFormState> {
  final AccountRepository _accountRepository;
  AddEditAccountFormNotifier(this._accountRepository)
      : super(AddEditAccountFormState.initial());

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

  void _validateInputs() {
    var stateCopy = state.copyWith(showErrorMessage: true);
    
    final accNameValidate = validateNotEmpty(state.accountName);
    accNameValidate.fold(
      (inputFailure) => inputFailure.maybeWhen(
        empty: () {
          stateCopy = stateCopy.copyWith(
            accountNameErrorMessage: emptyInputMessage,
          );
        },
        orElse: () {},
      ),
      (r) => stateCopy = stateCopy.copyWith(accountNameErrorMessage: null),
    );
    
    final accBalanceValidate = validateAmountValue(stateCopy.accountBalanceString);
    accBalanceValidate.fold(
      (inputFailure) => inputFailure.maybeWhen(
        empty: () {
          stateCopy = stateCopy.copyWith(
            accountBalanceErrorMessage: emptyInputMessage,
          );
        },
        invalidAmount: () {
          stateCopy = stateCopy.copyWith(
            accountBalanceErrorMessage:
                invalidAmountMessage,
          );
        },
        orElse: () {},
      ),
      (amount) => stateCopy = stateCopy.copyWith(
        accountBalanceErrorMessage: null,
        accountBalance: amount,
      ),
    );
    state = stateCopy;
  }

  void initialiseValueForEditAccountForm(Account account) {
    state = state.copyWith(
        isInit: false,
        accountId: account.accId,
        accountName: account.accName,
        accountBalance: account.accBalance,
        accountBalanceString: account.accBalance.toString(),
        accountIcon: account.accIcon,
        accountNote: account.accNote);
  }

  void addAccount() async {
    state = state.copyWith(
      hasConnection: true,
      hasFirebaseFailure: false,
    );
    _validateInputs();

    if (state.accountNameErrorMessage == null &&
        state.accountBalanceErrorMessage == null) {
      state = state.copyWith(
        isSaving: true,
      );

      final newAccount = Account(
        accId: '',
        accName: state.accountName,
        accBalance: state.accountBalance,
        accIcon: state.accountIcon,
        accNote: state.accountNote,
      );

      if (state.hasConnection) {
        print("try to add new acc");
        final failureOrSuccess =
            await _accountRepository.addNewAccount(newAccount);

        failureOrSuccess.fold((failure) {
          failure.maybeWhen(
            noConnection: (){
              state = state.copyWith(
                isSaving: false,
                hasConnection: false,
              );
            },
            orElse: () {
              state = state.copyWith(
                isSaving: false,
                hasFirebaseFailure: true,
              );
            },
          );
        }, (_) {
          print("successful");
          state = state.copyWith(
            isSaving: false,
            successful: true,
          );
        });
      }
    }
  }

  void updateAccount() async {
    state = state.copyWith(
      hasConnection: true,
      hasFirebaseFailure: false,
    );
    // _validateInputs();

    if (state.accountNameErrorMessage == null &&
        state.accountBalanceErrorMessage == null) {
      state = state.copyWith(
        isSaving: true,
      );

      final newAccount = Account(
        accId: state.accountId!,
        accName: state.accountName,
        accBalance: state.accountBalance,
        accIcon: state.accountIcon,
        accNote: state.accountNote,
      );

      if (state.hasConnection) {
        final failureOrSuccess =
            await _accountRepository.updateAccount(newAccount);

        failureOrSuccess.fold((failure) {
          failure.maybeWhen(
            noConnection: (){
              state = state.copyWith(
                isSaving: false,
                hasConnection: false,
              );
            },
            orElse: () {
              state = state.copyWith(
                isSaving: false,
                hasFirebaseFailure: true,
              );
            },
          );
        }, (_) {
          state = state.copyWith(
            isSaving: false,
            successful: true,
          );
        });
      }
    }
  }
}
