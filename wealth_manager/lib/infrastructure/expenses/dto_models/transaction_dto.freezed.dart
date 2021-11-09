// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'transaction_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TransactionDTO _$TransactionDTOFromJson(Map<String, dynamic> json) {
  return _TransactionDTO.fromJson(json);
}

/// @nodoc
class _$TransactionDTOTearOff {
  const _$TransactionDTOTearOff();

  _TransactionDTO call(
      {required String txId,
      required int txType,
      required double txAmount,
      required String accountId,
      required String categoryId,
      required String txDate,
      required String txNote,
      String? transferAcc}) {
    return _TransactionDTO(
      txId: txId,
      txType: txType,
      txAmount: txAmount,
      accountId: accountId,
      categoryId: categoryId,
      txDate: txDate,
      txNote: txNote,
      transferAcc: transferAcc,
    );
  }

  TransactionDTO fromJson(Map<String, Object?> json) {
    return TransactionDTO.fromJson(json);
  }
}

/// @nodoc
const $TransactionDTO = _$TransactionDTOTearOff();

/// @nodoc
mixin _$TransactionDTO {
  String get txId => throw _privateConstructorUsedError;
  int get txType => throw _privateConstructorUsedError;
  double get txAmount => throw _privateConstructorUsedError;
  String get accountId => throw _privateConstructorUsedError;
  String get categoryId => throw _privateConstructorUsedError;
  String get txDate => throw _privateConstructorUsedError;
  String get txNote => throw _privateConstructorUsedError;
  String? get transferAcc => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionDTOCopyWith<TransactionDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionDTOCopyWith<$Res> {
  factory $TransactionDTOCopyWith(
          TransactionDTO value, $Res Function(TransactionDTO) then) =
      _$TransactionDTOCopyWithImpl<$Res>;
  $Res call(
      {String txId,
      int txType,
      double txAmount,
      String accountId,
      String categoryId,
      String txDate,
      String txNote,
      String? transferAcc});
}

/// @nodoc
class _$TransactionDTOCopyWithImpl<$Res>
    implements $TransactionDTOCopyWith<$Res> {
  _$TransactionDTOCopyWithImpl(this._value, this._then);

  final TransactionDTO _value;
  // ignore: unused_field
  final $Res Function(TransactionDTO) _then;

  @override
  $Res call({
    Object? txId = freezed,
    Object? txType = freezed,
    Object? txAmount = freezed,
    Object? accountId = freezed,
    Object? categoryId = freezed,
    Object? txDate = freezed,
    Object? txNote = freezed,
    Object? transferAcc = freezed,
  }) {
    return _then(_value.copyWith(
      txId: txId == freezed
          ? _value.txId
          : txId // ignore: cast_nullable_to_non_nullable
              as String,
      txType: txType == freezed
          ? _value.txType
          : txType // ignore: cast_nullable_to_non_nullable
              as int,
      txAmount: txAmount == freezed
          ? _value.txAmount
          : txAmount // ignore: cast_nullable_to_non_nullable
              as double,
      accountId: accountId == freezed
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: categoryId == freezed
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      txDate: txDate == freezed
          ? _value.txDate
          : txDate // ignore: cast_nullable_to_non_nullable
              as String,
      txNote: txNote == freezed
          ? _value.txNote
          : txNote // ignore: cast_nullable_to_non_nullable
              as String,
      transferAcc: transferAcc == freezed
          ? _value.transferAcc
          : transferAcc // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$TransactionDTOCopyWith<$Res>
    implements $TransactionDTOCopyWith<$Res> {
  factory _$TransactionDTOCopyWith(
          _TransactionDTO value, $Res Function(_TransactionDTO) then) =
      __$TransactionDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {String txId,
      int txType,
      double txAmount,
      String accountId,
      String categoryId,
      String txDate,
      String txNote,
      String? transferAcc});
}

/// @nodoc
class __$TransactionDTOCopyWithImpl<$Res>
    extends _$TransactionDTOCopyWithImpl<$Res>
    implements _$TransactionDTOCopyWith<$Res> {
  __$TransactionDTOCopyWithImpl(
      _TransactionDTO _value, $Res Function(_TransactionDTO) _then)
      : super(_value, (v) => _then(v as _TransactionDTO));

  @override
  _TransactionDTO get _value => super._value as _TransactionDTO;

  @override
  $Res call({
    Object? txId = freezed,
    Object? txType = freezed,
    Object? txAmount = freezed,
    Object? accountId = freezed,
    Object? categoryId = freezed,
    Object? txDate = freezed,
    Object? txNote = freezed,
    Object? transferAcc = freezed,
  }) {
    return _then(_TransactionDTO(
      txId: txId == freezed
          ? _value.txId
          : txId // ignore: cast_nullable_to_non_nullable
              as String,
      txType: txType == freezed
          ? _value.txType
          : txType // ignore: cast_nullable_to_non_nullable
              as int,
      txAmount: txAmount == freezed
          ? _value.txAmount
          : txAmount // ignore: cast_nullable_to_non_nullable
              as double,
      accountId: accountId == freezed
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: categoryId == freezed
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      txDate: txDate == freezed
          ? _value.txDate
          : txDate // ignore: cast_nullable_to_non_nullable
              as String,
      txNote: txNote == freezed
          ? _value.txNote
          : txNote // ignore: cast_nullable_to_non_nullable
              as String,
      transferAcc: transferAcc == freezed
          ? _value.transferAcc
          : transferAcc // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TransactionDTO extends _TransactionDTO {
  const _$_TransactionDTO(
      {required this.txId,
      required this.txType,
      required this.txAmount,
      required this.accountId,
      required this.categoryId,
      required this.txDate,
      required this.txNote,
      this.transferAcc})
      : super._();

  factory _$_TransactionDTO.fromJson(Map<String, dynamic> json) =>
      _$$_TransactionDTOFromJson(json);

  @override
  final String txId;
  @override
  final int txType;
  @override
  final double txAmount;
  @override
  final String accountId;
  @override
  final String categoryId;
  @override
  final String txDate;
  @override
  final String txNote;
  @override
  final String? transferAcc;

  @override
  String toString() {
    return 'TransactionDTO(txId: $txId, txType: $txType, txAmount: $txAmount, accountId: $accountId, categoryId: $categoryId, txDate: $txDate, txNote: $txNote, transferAcc: $transferAcc)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TransactionDTO &&
            (identical(other.txId, txId) || other.txId == txId) &&
            (identical(other.txType, txType) || other.txType == txType) &&
            (identical(other.txAmount, txAmount) ||
                other.txAmount == txAmount) &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.txDate, txDate) || other.txDate == txDate) &&
            (identical(other.txNote, txNote) || other.txNote == txNote) &&
            (identical(other.transferAcc, transferAcc) ||
                other.transferAcc == transferAcc));
  }

  @override
  int get hashCode => Object.hash(runtimeType, txId, txType, txAmount,
      accountId, categoryId, txDate, txNote, transferAcc);

  @JsonKey(ignore: true)
  @override
  _$TransactionDTOCopyWith<_TransactionDTO> get copyWith =>
      __$TransactionDTOCopyWithImpl<_TransactionDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransactionDTOToJson(this);
  }
}

abstract class _TransactionDTO extends TransactionDTO {
  const factory _TransactionDTO(
      {required String txId,
      required int txType,
      required double txAmount,
      required String accountId,
      required String categoryId,
      required String txDate,
      required String txNote,
      String? transferAcc}) = _$_TransactionDTO;
  const _TransactionDTO._() : super._();

  factory _TransactionDTO.fromJson(Map<String, dynamic> json) =
      _$_TransactionDTO.fromJson;

  @override
  String get txId;
  @override
  int get txType;
  @override
  double get txAmount;
  @override
  String get accountId;
  @override
  String get categoryId;
  @override
  String get txDate;
  @override
  String get txNote;
  @override
  String? get transferAcc;
  @override
  @JsonKey(ignore: true)
  _$TransactionDTOCopyWith<_TransactionDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
