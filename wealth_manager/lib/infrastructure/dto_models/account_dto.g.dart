// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AccountDTO _$$_AccountDTOFromJson(Map json) => _$_AccountDTO(
      accId: json['accId'] as int,
      accName: json['accName'] as String,
      accBalance: (json['accBalance'] as num).toDouble(),
      accIcon: json['accIcon'] as int,
      accNote: json['accNote'] as String,
    );

Map<String, dynamic> _$$_AccountDTOToJson(_$_AccountDTO instance) =>
    <String, dynamic>{
      'accId': instance.accId,
      'accName': instance.accName,
      'accBalance': instance.accBalance,
      'accIcon': instance.accIcon,
      'accNote': instance.accNote,
    };
