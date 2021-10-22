import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:wealth_manager/infrastructure/models/account.dart';

part 'account_dto.freezed.dart';
part 'account_dto.g.dart';

@freezed
class AccountDTO with _$AccountDTO {
  const AccountDTO._();
  const factory AccountDTO({
    required int accId,
    required String accName,
    required double accBalance,
    required int accIcon,
    required String accNote,
  }) = _AccountDTO;

  factory AccountDTO.fromDomain(Account account){
    return AccountDTO(
      accId: account.accId,
      accName: account.accName,
      accBalance: account.accBalance,
      accIcon: account.accIcon,
      accNote: account.accNote,
    );
  }

  Account toDomain(){
    return Account(
      accId: accId,
      accName: accName,
      accBalance: accBalance,
      accIcon: accIcon,
      accNote: accNote,
    );
  }

  factory AccountDTO.fromJson(Map<String, dynamic> json) => _$AccountDTOFromJson(json);
}