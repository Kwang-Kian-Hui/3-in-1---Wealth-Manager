// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthFailureTearOff {
  const _$AuthFailureTearOff();

  _EmailAlreadyInUse emailAlreadyInUse(String errorMessage) {
    return _EmailAlreadyInUse(
      errorMessage,
    );
  }

  _WeakPassword weakPassword(String errorMessage) {
    return _WeakPassword(
      errorMessage,
    );
  }

  _UserNotFound userNotFound(String errorMessage) {
    return _UserNotFound(
      errorMessage,
    );
  }

  _WrongPassword wrongPassword(String errorMessage) {
    return _WrongPassword(
      errorMessage,
    );
  }

  _SystemError unknownError(String errorMessage) {
    return _SystemError(
      errorMessage,
    );
  }

  _NoConnection noConnection() {
    return const _NoConnection();
  }
}

/// @nodoc
const $AuthFailure = _$AuthFailureTearOff();

/// @nodoc
mixin _$AuthFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorMessage) emailAlreadyInUse,
    required TResult Function(String errorMessage) weakPassword,
    required TResult Function(String errorMessage) userNotFound,
    required TResult Function(String errorMessage) wrongPassword,
    required TResult Function(String errorMessage) unknownError,
    required TResult Function() noConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String errorMessage)? emailAlreadyInUse,
    TResult Function(String errorMessage)? weakPassword,
    TResult Function(String errorMessage)? userNotFound,
    TResult Function(String errorMessage)? wrongPassword,
    TResult Function(String errorMessage)? unknownError,
    TResult Function()? noConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMessage)? emailAlreadyInUse,
    TResult Function(String errorMessage)? weakPassword,
    TResult Function(String errorMessage)? userNotFound,
    TResult Function(String errorMessage)? wrongPassword,
    TResult Function(String errorMessage)? unknownError,
    TResult Function()? noConnection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(_WeakPassword value) weakPassword,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_WrongPassword value) wrongPassword,
    required TResult Function(_SystemError value) unknownError,
    required TResult Function(_NoConnection value) noConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_WeakPassword value)? weakPassword,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_WrongPassword value)? wrongPassword,
    TResult Function(_SystemError value)? unknownError,
    TResult Function(_NoConnection value)? noConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_WeakPassword value)? weakPassword,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_WrongPassword value)? wrongPassword,
    TResult Function(_SystemError value)? unknownError,
    TResult Function(_NoConnection value)? noConnection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthFailureCopyWithImpl<$Res> implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  final AuthFailure _value;
  // ignore: unused_field
  final $Res Function(AuthFailure) _then;
}

/// @nodoc
abstract class _$EmailAlreadyInUseCopyWith<$Res> {
  factory _$EmailAlreadyInUseCopyWith(
          _EmailAlreadyInUse value, $Res Function(_EmailAlreadyInUse) then) =
      __$EmailAlreadyInUseCopyWithImpl<$Res>;
  $Res call({String errorMessage});
}

/// @nodoc
class __$EmailAlreadyInUseCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements _$EmailAlreadyInUseCopyWith<$Res> {
  __$EmailAlreadyInUseCopyWithImpl(
      _EmailAlreadyInUse _value, $Res Function(_EmailAlreadyInUse) _then)
      : super(_value, (v) => _then(v as _EmailAlreadyInUse));

  @override
  _EmailAlreadyInUse get _value => super._value as _EmailAlreadyInUse;

  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_EmailAlreadyInUse(
      errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EmailAlreadyInUse extends _EmailAlreadyInUse {
  const _$_EmailAlreadyInUse(this.errorMessage) : super._();

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'AuthFailure.emailAlreadyInUse(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EmailAlreadyInUse &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  _$EmailAlreadyInUseCopyWith<_EmailAlreadyInUse> get copyWith =>
      __$EmailAlreadyInUseCopyWithImpl<_EmailAlreadyInUse>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorMessage) emailAlreadyInUse,
    required TResult Function(String errorMessage) weakPassword,
    required TResult Function(String errorMessage) userNotFound,
    required TResult Function(String errorMessage) wrongPassword,
    required TResult Function(String errorMessage) unknownError,
    required TResult Function() noConnection,
  }) {
    return emailAlreadyInUse(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String errorMessage)? emailAlreadyInUse,
    TResult Function(String errorMessage)? weakPassword,
    TResult Function(String errorMessage)? userNotFound,
    TResult Function(String errorMessage)? wrongPassword,
    TResult Function(String errorMessage)? unknownError,
    TResult Function()? noConnection,
  }) {
    return emailAlreadyInUse?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMessage)? emailAlreadyInUse,
    TResult Function(String errorMessage)? weakPassword,
    TResult Function(String errorMessage)? userNotFound,
    TResult Function(String errorMessage)? wrongPassword,
    TResult Function(String errorMessage)? unknownError,
    TResult Function()? noConnection,
    required TResult orElse(),
  }) {
    if (emailAlreadyInUse != null) {
      return emailAlreadyInUse(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(_WeakPassword value) weakPassword,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_WrongPassword value) wrongPassword,
    required TResult Function(_SystemError value) unknownError,
    required TResult Function(_NoConnection value) noConnection,
  }) {
    return emailAlreadyInUse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_WeakPassword value)? weakPassword,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_WrongPassword value)? wrongPassword,
    TResult Function(_SystemError value)? unknownError,
    TResult Function(_NoConnection value)? noConnection,
  }) {
    return emailAlreadyInUse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_WeakPassword value)? weakPassword,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_WrongPassword value)? wrongPassword,
    TResult Function(_SystemError value)? unknownError,
    TResult Function(_NoConnection value)? noConnection,
    required TResult orElse(),
  }) {
    if (emailAlreadyInUse != null) {
      return emailAlreadyInUse(this);
    }
    return orElse();
  }
}

abstract class _EmailAlreadyInUse extends AuthFailure {
  const factory _EmailAlreadyInUse(String errorMessage) = _$_EmailAlreadyInUse;
  const _EmailAlreadyInUse._() : super._();

  String get errorMessage;
  @JsonKey(ignore: true)
  _$EmailAlreadyInUseCopyWith<_EmailAlreadyInUse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$WeakPasswordCopyWith<$Res> {
  factory _$WeakPasswordCopyWith(
          _WeakPassword value, $Res Function(_WeakPassword) then) =
      __$WeakPasswordCopyWithImpl<$Res>;
  $Res call({String errorMessage});
}

/// @nodoc
class __$WeakPasswordCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements _$WeakPasswordCopyWith<$Res> {
  __$WeakPasswordCopyWithImpl(
      _WeakPassword _value, $Res Function(_WeakPassword) _then)
      : super(_value, (v) => _then(v as _WeakPassword));

  @override
  _WeakPassword get _value => super._value as _WeakPassword;

  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_WeakPassword(
      errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_WeakPassword extends _WeakPassword {
  const _$_WeakPassword(this.errorMessage) : super._();

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'AuthFailure.weakPassword(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WeakPassword &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  _$WeakPasswordCopyWith<_WeakPassword> get copyWith =>
      __$WeakPasswordCopyWithImpl<_WeakPassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorMessage) emailAlreadyInUse,
    required TResult Function(String errorMessage) weakPassword,
    required TResult Function(String errorMessage) userNotFound,
    required TResult Function(String errorMessage) wrongPassword,
    required TResult Function(String errorMessage) unknownError,
    required TResult Function() noConnection,
  }) {
    return weakPassword(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String errorMessage)? emailAlreadyInUse,
    TResult Function(String errorMessage)? weakPassword,
    TResult Function(String errorMessage)? userNotFound,
    TResult Function(String errorMessage)? wrongPassword,
    TResult Function(String errorMessage)? unknownError,
    TResult Function()? noConnection,
  }) {
    return weakPassword?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMessage)? emailAlreadyInUse,
    TResult Function(String errorMessage)? weakPassword,
    TResult Function(String errorMessage)? userNotFound,
    TResult Function(String errorMessage)? wrongPassword,
    TResult Function(String errorMessage)? unknownError,
    TResult Function()? noConnection,
    required TResult orElse(),
  }) {
    if (weakPassword != null) {
      return weakPassword(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(_WeakPassword value) weakPassword,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_WrongPassword value) wrongPassword,
    required TResult Function(_SystemError value) unknownError,
    required TResult Function(_NoConnection value) noConnection,
  }) {
    return weakPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_WeakPassword value)? weakPassword,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_WrongPassword value)? wrongPassword,
    TResult Function(_SystemError value)? unknownError,
    TResult Function(_NoConnection value)? noConnection,
  }) {
    return weakPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_WeakPassword value)? weakPassword,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_WrongPassword value)? wrongPassword,
    TResult Function(_SystemError value)? unknownError,
    TResult Function(_NoConnection value)? noConnection,
    required TResult orElse(),
  }) {
    if (weakPassword != null) {
      return weakPassword(this);
    }
    return orElse();
  }
}

abstract class _WeakPassword extends AuthFailure {
  const factory _WeakPassword(String errorMessage) = _$_WeakPassword;
  const _WeakPassword._() : super._();

  String get errorMessage;
  @JsonKey(ignore: true)
  _$WeakPasswordCopyWith<_WeakPassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UserNotFoundCopyWith<$Res> {
  factory _$UserNotFoundCopyWith(
          _UserNotFound value, $Res Function(_UserNotFound) then) =
      __$UserNotFoundCopyWithImpl<$Res>;
  $Res call({String errorMessage});
}

/// @nodoc
class __$UserNotFoundCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements _$UserNotFoundCopyWith<$Res> {
  __$UserNotFoundCopyWithImpl(
      _UserNotFound _value, $Res Function(_UserNotFound) _then)
      : super(_value, (v) => _then(v as _UserNotFound));

  @override
  _UserNotFound get _value => super._value as _UserNotFound;

  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_UserNotFound(
      errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UserNotFound extends _UserNotFound {
  const _$_UserNotFound(this.errorMessage) : super._();

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'AuthFailure.userNotFound(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserNotFound &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  _$UserNotFoundCopyWith<_UserNotFound> get copyWith =>
      __$UserNotFoundCopyWithImpl<_UserNotFound>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorMessage) emailAlreadyInUse,
    required TResult Function(String errorMessage) weakPassword,
    required TResult Function(String errorMessage) userNotFound,
    required TResult Function(String errorMessage) wrongPassword,
    required TResult Function(String errorMessage) unknownError,
    required TResult Function() noConnection,
  }) {
    return userNotFound(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String errorMessage)? emailAlreadyInUse,
    TResult Function(String errorMessage)? weakPassword,
    TResult Function(String errorMessage)? userNotFound,
    TResult Function(String errorMessage)? wrongPassword,
    TResult Function(String errorMessage)? unknownError,
    TResult Function()? noConnection,
  }) {
    return userNotFound?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMessage)? emailAlreadyInUse,
    TResult Function(String errorMessage)? weakPassword,
    TResult Function(String errorMessage)? userNotFound,
    TResult Function(String errorMessage)? wrongPassword,
    TResult Function(String errorMessage)? unknownError,
    TResult Function()? noConnection,
    required TResult orElse(),
  }) {
    if (userNotFound != null) {
      return userNotFound(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(_WeakPassword value) weakPassword,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_WrongPassword value) wrongPassword,
    required TResult Function(_SystemError value) unknownError,
    required TResult Function(_NoConnection value) noConnection,
  }) {
    return userNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_WeakPassword value)? weakPassword,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_WrongPassword value)? wrongPassword,
    TResult Function(_SystemError value)? unknownError,
    TResult Function(_NoConnection value)? noConnection,
  }) {
    return userNotFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_WeakPassword value)? weakPassword,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_WrongPassword value)? wrongPassword,
    TResult Function(_SystemError value)? unknownError,
    TResult Function(_NoConnection value)? noConnection,
    required TResult orElse(),
  }) {
    if (userNotFound != null) {
      return userNotFound(this);
    }
    return orElse();
  }
}

abstract class _UserNotFound extends AuthFailure {
  const factory _UserNotFound(String errorMessage) = _$_UserNotFound;
  const _UserNotFound._() : super._();

  String get errorMessage;
  @JsonKey(ignore: true)
  _$UserNotFoundCopyWith<_UserNotFound> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$WrongPasswordCopyWith<$Res> {
  factory _$WrongPasswordCopyWith(
          _WrongPassword value, $Res Function(_WrongPassword) then) =
      __$WrongPasswordCopyWithImpl<$Res>;
  $Res call({String errorMessage});
}

/// @nodoc
class __$WrongPasswordCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements _$WrongPasswordCopyWith<$Res> {
  __$WrongPasswordCopyWithImpl(
      _WrongPassword _value, $Res Function(_WrongPassword) _then)
      : super(_value, (v) => _then(v as _WrongPassword));

  @override
  _WrongPassword get _value => super._value as _WrongPassword;

  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_WrongPassword(
      errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_WrongPassword extends _WrongPassword {
  const _$_WrongPassword(this.errorMessage) : super._();

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'AuthFailure.wrongPassword(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WrongPassword &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  _$WrongPasswordCopyWith<_WrongPassword> get copyWith =>
      __$WrongPasswordCopyWithImpl<_WrongPassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorMessage) emailAlreadyInUse,
    required TResult Function(String errorMessage) weakPassword,
    required TResult Function(String errorMessage) userNotFound,
    required TResult Function(String errorMessage) wrongPassword,
    required TResult Function(String errorMessage) unknownError,
    required TResult Function() noConnection,
  }) {
    return wrongPassword(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String errorMessage)? emailAlreadyInUse,
    TResult Function(String errorMessage)? weakPassword,
    TResult Function(String errorMessage)? userNotFound,
    TResult Function(String errorMessage)? wrongPassword,
    TResult Function(String errorMessage)? unknownError,
    TResult Function()? noConnection,
  }) {
    return wrongPassword?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMessage)? emailAlreadyInUse,
    TResult Function(String errorMessage)? weakPassword,
    TResult Function(String errorMessage)? userNotFound,
    TResult Function(String errorMessage)? wrongPassword,
    TResult Function(String errorMessage)? unknownError,
    TResult Function()? noConnection,
    required TResult orElse(),
  }) {
    if (wrongPassword != null) {
      return wrongPassword(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(_WeakPassword value) weakPassword,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_WrongPassword value) wrongPassword,
    required TResult Function(_SystemError value) unknownError,
    required TResult Function(_NoConnection value) noConnection,
  }) {
    return wrongPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_WeakPassword value)? weakPassword,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_WrongPassword value)? wrongPassword,
    TResult Function(_SystemError value)? unknownError,
    TResult Function(_NoConnection value)? noConnection,
  }) {
    return wrongPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_WeakPassword value)? weakPassword,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_WrongPassword value)? wrongPassword,
    TResult Function(_SystemError value)? unknownError,
    TResult Function(_NoConnection value)? noConnection,
    required TResult orElse(),
  }) {
    if (wrongPassword != null) {
      return wrongPassword(this);
    }
    return orElse();
  }
}

abstract class _WrongPassword extends AuthFailure {
  const factory _WrongPassword(String errorMessage) = _$_WrongPassword;
  const _WrongPassword._() : super._();

  String get errorMessage;
  @JsonKey(ignore: true)
  _$WrongPasswordCopyWith<_WrongPassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SystemErrorCopyWith<$Res> {
  factory _$SystemErrorCopyWith(
          _SystemError value, $Res Function(_SystemError) then) =
      __$SystemErrorCopyWithImpl<$Res>;
  $Res call({String errorMessage});
}

/// @nodoc
class __$SystemErrorCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements _$SystemErrorCopyWith<$Res> {
  __$SystemErrorCopyWithImpl(
      _SystemError _value, $Res Function(_SystemError) _then)
      : super(_value, (v) => _then(v as _SystemError));

  @override
  _SystemError get _value => super._value as _SystemError;

  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_SystemError(
      errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SystemError extends _SystemError {
  const _$_SystemError(this.errorMessage) : super._();

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'AuthFailure.unknownError(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SystemError &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  _$SystemErrorCopyWith<_SystemError> get copyWith =>
      __$SystemErrorCopyWithImpl<_SystemError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorMessage) emailAlreadyInUse,
    required TResult Function(String errorMessage) weakPassword,
    required TResult Function(String errorMessage) userNotFound,
    required TResult Function(String errorMessage) wrongPassword,
    required TResult Function(String errorMessage) unknownError,
    required TResult Function() noConnection,
  }) {
    return unknownError(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String errorMessage)? emailAlreadyInUse,
    TResult Function(String errorMessage)? weakPassword,
    TResult Function(String errorMessage)? userNotFound,
    TResult Function(String errorMessage)? wrongPassword,
    TResult Function(String errorMessage)? unknownError,
    TResult Function()? noConnection,
  }) {
    return unknownError?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMessage)? emailAlreadyInUse,
    TResult Function(String errorMessage)? weakPassword,
    TResult Function(String errorMessage)? userNotFound,
    TResult Function(String errorMessage)? wrongPassword,
    TResult Function(String errorMessage)? unknownError,
    TResult Function()? noConnection,
    required TResult orElse(),
  }) {
    if (unknownError != null) {
      return unknownError(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(_WeakPassword value) weakPassword,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_WrongPassword value) wrongPassword,
    required TResult Function(_SystemError value) unknownError,
    required TResult Function(_NoConnection value) noConnection,
  }) {
    return unknownError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_WeakPassword value)? weakPassword,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_WrongPassword value)? wrongPassword,
    TResult Function(_SystemError value)? unknownError,
    TResult Function(_NoConnection value)? noConnection,
  }) {
    return unknownError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_WeakPassword value)? weakPassword,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_WrongPassword value)? wrongPassword,
    TResult Function(_SystemError value)? unknownError,
    TResult Function(_NoConnection value)? noConnection,
    required TResult orElse(),
  }) {
    if (unknownError != null) {
      return unknownError(this);
    }
    return orElse();
  }
}

abstract class _SystemError extends AuthFailure {
  const factory _SystemError(String errorMessage) = _$_SystemError;
  const _SystemError._() : super._();

  String get errorMessage;
  @JsonKey(ignore: true)
  _$SystemErrorCopyWith<_SystemError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$NoConnectionCopyWith<$Res> {
  factory _$NoConnectionCopyWith(
          _NoConnection value, $Res Function(_NoConnection) then) =
      __$NoConnectionCopyWithImpl<$Res>;
}

/// @nodoc
class __$NoConnectionCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements _$NoConnectionCopyWith<$Res> {
  __$NoConnectionCopyWithImpl(
      _NoConnection _value, $Res Function(_NoConnection) _then)
      : super(_value, (v) => _then(v as _NoConnection));

  @override
  _NoConnection get _value => super._value as _NoConnection;
}

/// @nodoc

class _$_NoConnection extends _NoConnection {
  const _$_NoConnection() : super._();

  @override
  String toString() {
    return 'AuthFailure.noConnection()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _NoConnection);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorMessage) emailAlreadyInUse,
    required TResult Function(String errorMessage) weakPassword,
    required TResult Function(String errorMessage) userNotFound,
    required TResult Function(String errorMessage) wrongPassword,
    required TResult Function(String errorMessage) unknownError,
    required TResult Function() noConnection,
  }) {
    return noConnection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String errorMessage)? emailAlreadyInUse,
    TResult Function(String errorMessage)? weakPassword,
    TResult Function(String errorMessage)? userNotFound,
    TResult Function(String errorMessage)? wrongPassword,
    TResult Function(String errorMessage)? unknownError,
    TResult Function()? noConnection,
  }) {
    return noConnection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMessage)? emailAlreadyInUse,
    TResult Function(String errorMessage)? weakPassword,
    TResult Function(String errorMessage)? userNotFound,
    TResult Function(String errorMessage)? wrongPassword,
    TResult Function(String errorMessage)? unknownError,
    TResult Function()? noConnection,
    required TResult orElse(),
  }) {
    if (noConnection != null) {
      return noConnection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(_WeakPassword value) weakPassword,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_WrongPassword value) wrongPassword,
    required TResult Function(_SystemError value) unknownError,
    required TResult Function(_NoConnection value) noConnection,
  }) {
    return noConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_WeakPassword value)? weakPassword,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_WrongPassword value)? wrongPassword,
    TResult Function(_SystemError value)? unknownError,
    TResult Function(_NoConnection value)? noConnection,
  }) {
    return noConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_WeakPassword value)? weakPassword,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_WrongPassword value)? wrongPassword,
    TResult Function(_SystemError value)? unknownError,
    TResult Function(_NoConnection value)? noConnection,
    required TResult orElse(),
  }) {
    if (noConnection != null) {
      return noConnection(this);
    }
    return orElse();
  }
}

abstract class _NoConnection extends AuthFailure {
  const factory _NoConnection() = _$_NoConnection;
  const _NoConnection._() : super._();
}
