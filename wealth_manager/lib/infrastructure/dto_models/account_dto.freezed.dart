// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'account_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AccountDTO _$AccountDTOFromJson(Map<String, dynamic> json) {
  return _AccountDTO.fromJson(json);
}

/// @nodoc
class _$AccountDTOTearOff {
  const _$AccountDTOTearOff();

  _AccountDTO call(
      {required String accId,
      required String accName,
      required double accBalance,
      required int accIcon,
      required String accNote}) {
    return _AccountDTO(
      accId: accId,
      accName: accName,
      accBalance: accBalance,
      accIcon: accIcon,
      accNote: accNote,
    );
  }

  AccountDTO fromJson(Map<String, Object?> json) {
    return AccountDTO.fromJson(json);
  }
}

/// @nodoc
const $AccountDTO = _$AccountDTOTearOff();

/// @nodoc
mixin _$AccountDTO {
  String get accId => throw _privateConstructorUsedError;
  String get accName => throw _privateConstructorUsedError;
  double get accBalance => throw _privateConstructorUsedError;
  int get accIcon => throw _privateConstructorUsedError;
  String get accNote => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountDTOCopyWith<AccountDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountDTOCopyWith<$Res> {
  factory $AccountDTOCopyWith(
          AccountDTO value, $Res Function(AccountDTO) then) =
      _$AccountDTOCopyWithImpl<$Res>;
  $Res call(
      {String accId,
      String accName,
      double accBalance,
      int accIcon,
      String accNote});
}

/// @nodoc
class _$AccountDTOCopyWithImpl<$Res> implements $AccountDTOCopyWith<$Res> {
  _$AccountDTOCopyWithImpl(this._value, this._then);

  final AccountDTO _value;
  // ignore: unused_field
  final $Res Function(AccountDTO) _then;

  @override
  $Res call({
    Object? accId = freezed,
    Object? accName = freezed,
    Object? accBalance = freezed,
    Object? accIcon = freezed,
    Object? accNote = freezed,
  }) {
    return _then(_value.copyWith(
      accId: accId == freezed
          ? _value.accId
          : accId // ignore: cast_nullable_to_non_nullable
              as String,
      accName: accName == freezed
          ? _value.accName
          : accName // ignore: cast_nullable_to_non_nullable
              as String,
      accBalance: accBalance == freezed
          ? _value.accBalance
          : accBalance // ignore: cast_nullable_to_non_nullable
              as double,
      accIcon: accIcon == freezed
          ? _value.accIcon
          : accIcon // ignore: cast_nullable_to_non_nullable
              as int,
      accNote: accNote == freezed
          ? _value.accNote
          : accNote // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$AccountDTOCopyWith<$Res> implements $AccountDTOCopyWith<$Res> {
  factory _$AccountDTOCopyWith(
          _AccountDTO value, $Res Function(_AccountDTO) then) =
      __$AccountDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {String accId,
      String accName,
      double accBalance,
      int accIcon,
      String accNote});
}

/// @nodoc
class __$AccountDTOCopyWithImpl<$Res> extends _$AccountDTOCopyWithImpl<$Res>
    implements _$AccountDTOCopyWith<$Res> {
  __$AccountDTOCopyWithImpl(
      _AccountDTO _value, $Res Function(_AccountDTO) _then)
      : super(_value, (v) => _then(v as _AccountDTO));

  @override
  _AccountDTO get _value => super._value as _AccountDTO;

  @override
  $Res call({
    Object? accId = freezed,
    Object? accName = freezed,
    Object? accBalance = freezed,
    Object? accIcon = freezed,
    Object? accNote = freezed,
  }) {
    return _then(_AccountDTO(
      accId: accId == freezed
          ? _value.accId
          : accId // ignore: cast_nullable_to_non_nullable
              as String,
      accName: accName == freezed
          ? _value.accName
          : accName // ignore: cast_nullable_to_non_nullable
              as String,
      accBalance: accBalance == freezed
          ? _value.accBalance
          : accBalance // ignore: cast_nullable_to_non_nullable
              as double,
      accIcon: accIcon == freezed
          ? _value.accIcon
          : accIcon // ignore: cast_nullable_to_non_nullable
              as int,
      accNote: accNote == freezed
          ? _value.accNote
          : accNote // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AccountDTO extends _AccountDTO {
  const _$_AccountDTO(
      {required this.accId,
      required this.accName,
      required this.accBalance,
      required this.accIcon,
      required this.accNote})
      : super._();

  factory _$_AccountDTO.fromJson(Map<String, dynamic> json) =>
      _$$_AccountDTOFromJson(json);

  @override
  final String accId;
  @override
  final String accName;
  @override
  final double accBalance;
  @override
  final int accIcon;
  @override
  final String accNote;

  @override
  String toString() {
    return 'AccountDTO(accId: $accId, accName: $accName, accBalance: $accBalance, accIcon: $accIcon, accNote: $accNote)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AccountDTO &&
            (identical(other.accId, accId) || other.accId == accId) &&
            (identical(other.accName, accName) || other.accName == accName) &&
            (identical(other.accBalance, accBalance) ||
                other.accBalance == accBalance) &&
            (identical(other.accIcon, accIcon) || other.accIcon == accIcon) &&
            (identical(other.accNote, accNote) || other.accNote == accNote));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, accId, accName, accBalance, accIcon, accNote);

  @JsonKey(ignore: true)
  @override
  _$AccountDTOCopyWith<_AccountDTO> get copyWith =>
      __$AccountDTOCopyWithImpl<_AccountDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AccountDTOToJson(this);
  }
}

abstract class _AccountDTO extends AccountDTO {
  const factory _AccountDTO(
      {required String accId,
      required String accName,
      required double accBalance,
      required int accIcon,
      required String accNote}) = _$_AccountDTO;
  const _AccountDTO._() : super._();

  factory _AccountDTO.fromJson(Map<String, dynamic> json) =
      _$_AccountDTO.fromJson;

  @override
  String get accId;
  @override
  String get accName;
  @override
  double get accBalance;
  @override
  int get accIcon;
  @override
  String get accNote;
  @override
  @JsonKey(ignore: true)
  _$AccountDTOCopyWith<_AccountDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
