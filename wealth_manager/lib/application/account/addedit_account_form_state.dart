import 'package:freezed_annotation/freezed_annotation.dart';

part 'addedit_account_form_state.freezed.dart';

@freezed
class AddEditAccountFormState with _$AddEditAccountFormState {
  const AddEditAccountFormState._();
  const factory AddEditAccountFormState({
    required bool showErrorMessage,
    required bool isInit,
    required bool isSaving,
    required bool successful,
    required bool hasFirebaseFailure,
    required String? accountNameErrorMessage,
    required String? accountBalanceErrorMessage,
    required String? accountId,
    required String accountName,
    required double accountBalance,
    required String accountBalanceString,
    required int accountIcon,
    required String accountNote,
  }) = _AddEditAccountFormState;


  factory AddEditAccountFormState.initial() => AddEditAccountFormState(
        showErrorMessage: false,
        isInit: true,
        isSaving: false,
        successful: false,
        hasFirebaseFailure: false,
        accountNameErrorMessage: null,
        accountBalanceErrorMessage: null,
        accountId: null,
        accountName: '',
        accountBalance: 0.0,
        accountBalanceString: '',
        accountIcon: 0,
        accountNote: '',
      );
}