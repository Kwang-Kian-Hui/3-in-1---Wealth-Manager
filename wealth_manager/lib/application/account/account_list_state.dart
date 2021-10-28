import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wealth_manager/infrastructure/models/account.dart';
import 'package:wealth_manager/infrastructure/models/firebase_failures.dart';

part 'account_list_state.freezed.dart';

@freezed
class AccountListState with _$AccountListState {
  const AccountListState._();
  const factory AccountListState.initial() = Initial;
  const factory AccountListState.loading() = Loading;
  const factory AccountListState.noConnection() = NoConnection;
  const factory AccountListState.failure(FirebaseFailures failure) = Failure;
  const factory AccountListState.loaded(List<Account> accountList) = Loaded;
}