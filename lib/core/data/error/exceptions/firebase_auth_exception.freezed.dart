// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'firebase_auth_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FirebaseServicesException {
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unknown,
    required TResult Function(String message) internalError,
    required TResult Function(String message) invalidEmail,
    required TResult Function(String message) userAlreadyExists,
    required TResult Function(String message) userNotFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? unknown,
    TResult Function(String message)? internalError,
    TResult Function(String message)? invalidEmail,
    TResult Function(String message)? userAlreadyExists,
    TResult Function(String message)? userNotFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unknown,
    TResult Function(String message)? internalError,
    TResult Function(String message)? invalidEmail,
    TResult Function(String message)? userAlreadyExists,
    TResult Function(String message)? userNotFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unknown value) unknown,
    required TResult Function(InternalError value) internalError,
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(UserAlreadyExists value) userAlreadyExists,
    required TResult Function(UserNotFound value) userNotFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(InternalError value)? internalError,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(UserAlreadyExists value)? userAlreadyExists,
    TResult Function(UserNotFound value)? userNotFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(InternalError value)? internalError,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(UserAlreadyExists value)? userAlreadyExists,
    TResult Function(UserNotFound value)? userNotFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FirebaseServicesExceptionCopyWith<FirebaseServicesException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirebaseServicesExceptionCopyWith<$Res> {
  factory $FirebaseServicesExceptionCopyWith(FirebaseServicesException value,
          $Res Function(FirebaseServicesException) then) =
      _$FirebaseServicesExceptionCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$FirebaseServicesExceptionCopyWithImpl<$Res>
    implements $FirebaseServicesExceptionCopyWith<$Res> {
  _$FirebaseServicesExceptionCopyWithImpl(this._value, this._then);

  final FirebaseServicesException _value;
  // ignore: unused_field
  final $Res Function(FirebaseServicesException) _then;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$UnknownCopyWith<$Res>
    implements $FirebaseServicesExceptionCopyWith<$Res> {
  factory _$$UnknownCopyWith(_$Unknown value, $Res Function(_$Unknown) then) =
      __$$UnknownCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$$UnknownCopyWithImpl<$Res>
    extends _$FirebaseServicesExceptionCopyWithImpl<$Res>
    implements _$$UnknownCopyWith<$Res> {
  __$$UnknownCopyWithImpl(_$Unknown _value, $Res Function(_$Unknown) _then)
      : super(_value, (v) => _then(v as _$Unknown));

  @override
  _$Unknown get _value => super._value as _$Unknown;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$Unknown(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Unknown implements Unknown {
  const _$Unknown({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'FirebaseServicesException.unknown(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Unknown &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$UnknownCopyWith<_$Unknown> get copyWith =>
      __$$UnknownCopyWithImpl<_$Unknown>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unknown,
    required TResult Function(String message) internalError,
    required TResult Function(String message) invalidEmail,
    required TResult Function(String message) userAlreadyExists,
    required TResult Function(String message) userNotFound,
  }) {
    return unknown(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? unknown,
    TResult Function(String message)? internalError,
    TResult Function(String message)? invalidEmail,
    TResult Function(String message)? userAlreadyExists,
    TResult Function(String message)? userNotFound,
  }) {
    return unknown?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unknown,
    TResult Function(String message)? internalError,
    TResult Function(String message)? invalidEmail,
    TResult Function(String message)? userAlreadyExists,
    TResult Function(String message)? userNotFound,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unknown value) unknown,
    required TResult Function(InternalError value) internalError,
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(UserAlreadyExists value) userAlreadyExists,
    required TResult Function(UserNotFound value) userNotFound,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(InternalError value)? internalError,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(UserAlreadyExists value)? userAlreadyExists,
    TResult Function(UserNotFound value)? userNotFound,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(InternalError value)? internalError,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(UserAlreadyExists value)? userAlreadyExists,
    TResult Function(UserNotFound value)? userNotFound,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class Unknown implements FirebaseServicesException {
  const factory Unknown({required final String message}) = _$Unknown;

  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$UnknownCopyWith<_$Unknown> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InternalErrorCopyWith<$Res>
    implements $FirebaseServicesExceptionCopyWith<$Res> {
  factory _$$InternalErrorCopyWith(
          _$InternalError value, $Res Function(_$InternalError) then) =
      __$$InternalErrorCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$$InternalErrorCopyWithImpl<$Res>
    extends _$FirebaseServicesExceptionCopyWithImpl<$Res>
    implements _$$InternalErrorCopyWith<$Res> {
  __$$InternalErrorCopyWithImpl(
      _$InternalError _value, $Res Function(_$InternalError) _then)
      : super(_value, (v) => _then(v as _$InternalError));

  @override
  _$InternalError get _value => super._value as _$InternalError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$InternalError(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InternalError implements InternalError {
  const _$InternalError({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'FirebaseServicesException.internalError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InternalError &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$InternalErrorCopyWith<_$InternalError> get copyWith =>
      __$$InternalErrorCopyWithImpl<_$InternalError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unknown,
    required TResult Function(String message) internalError,
    required TResult Function(String message) invalidEmail,
    required TResult Function(String message) userAlreadyExists,
    required TResult Function(String message) userNotFound,
  }) {
    return internalError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? unknown,
    TResult Function(String message)? internalError,
    TResult Function(String message)? invalidEmail,
    TResult Function(String message)? userAlreadyExists,
    TResult Function(String message)? userNotFound,
  }) {
    return internalError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unknown,
    TResult Function(String message)? internalError,
    TResult Function(String message)? invalidEmail,
    TResult Function(String message)? userAlreadyExists,
    TResult Function(String message)? userNotFound,
    required TResult orElse(),
  }) {
    if (internalError != null) {
      return internalError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unknown value) unknown,
    required TResult Function(InternalError value) internalError,
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(UserAlreadyExists value) userAlreadyExists,
    required TResult Function(UserNotFound value) userNotFound,
  }) {
    return internalError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(InternalError value)? internalError,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(UserAlreadyExists value)? userAlreadyExists,
    TResult Function(UserNotFound value)? userNotFound,
  }) {
    return internalError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(InternalError value)? internalError,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(UserAlreadyExists value)? userAlreadyExists,
    TResult Function(UserNotFound value)? userNotFound,
    required TResult orElse(),
  }) {
    if (internalError != null) {
      return internalError(this);
    }
    return orElse();
  }
}

abstract class InternalError implements FirebaseServicesException {
  const factory InternalError({required final String message}) =
      _$InternalError;

  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$InternalErrorCopyWith<_$InternalError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidEmailCopyWith<$Res>
    implements $FirebaseServicesExceptionCopyWith<$Res> {
  factory _$$InvalidEmailCopyWith(
          _$InvalidEmail value, $Res Function(_$InvalidEmail) then) =
      __$$InvalidEmailCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$$InvalidEmailCopyWithImpl<$Res>
    extends _$FirebaseServicesExceptionCopyWithImpl<$Res>
    implements _$$InvalidEmailCopyWith<$Res> {
  __$$InvalidEmailCopyWithImpl(
      _$InvalidEmail _value, $Res Function(_$InvalidEmail) _then)
      : super(_value, (v) => _then(v as _$InvalidEmail));

  @override
  _$InvalidEmail get _value => super._value as _$InvalidEmail;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$InvalidEmail(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InvalidEmail implements InvalidEmail {
  const _$InvalidEmail({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'FirebaseServicesException.invalidEmail(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidEmail &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$InvalidEmailCopyWith<_$InvalidEmail> get copyWith =>
      __$$InvalidEmailCopyWithImpl<_$InvalidEmail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unknown,
    required TResult Function(String message) internalError,
    required TResult Function(String message) invalidEmail,
    required TResult Function(String message) userAlreadyExists,
    required TResult Function(String message) userNotFound,
  }) {
    return invalidEmail(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? unknown,
    TResult Function(String message)? internalError,
    TResult Function(String message)? invalidEmail,
    TResult Function(String message)? userAlreadyExists,
    TResult Function(String message)? userNotFound,
  }) {
    return invalidEmail?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unknown,
    TResult Function(String message)? internalError,
    TResult Function(String message)? invalidEmail,
    TResult Function(String message)? userAlreadyExists,
    TResult Function(String message)? userNotFound,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unknown value) unknown,
    required TResult Function(InternalError value) internalError,
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(UserAlreadyExists value) userAlreadyExists,
    required TResult Function(UserNotFound value) userNotFound,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(InternalError value)? internalError,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(UserAlreadyExists value)? userAlreadyExists,
    TResult Function(UserNotFound value)? userNotFound,
  }) {
    return invalidEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(InternalError value)? internalError,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(UserAlreadyExists value)? userAlreadyExists,
    TResult Function(UserNotFound value)? userNotFound,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail implements FirebaseServicesException {
  const factory InvalidEmail({required final String message}) = _$InvalidEmail;

  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$InvalidEmailCopyWith<_$InvalidEmail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserAlreadyExistsCopyWith<$Res>
    implements $FirebaseServicesExceptionCopyWith<$Res> {
  factory _$$UserAlreadyExistsCopyWith(
          _$UserAlreadyExists value, $Res Function(_$UserAlreadyExists) then) =
      __$$UserAlreadyExistsCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$$UserAlreadyExistsCopyWithImpl<$Res>
    extends _$FirebaseServicesExceptionCopyWithImpl<$Res>
    implements _$$UserAlreadyExistsCopyWith<$Res> {
  __$$UserAlreadyExistsCopyWithImpl(
      _$UserAlreadyExists _value, $Res Function(_$UserAlreadyExists) _then)
      : super(_value, (v) => _then(v as _$UserAlreadyExists));

  @override
  _$UserAlreadyExists get _value => super._value as _$UserAlreadyExists;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$UserAlreadyExists(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserAlreadyExists implements UserAlreadyExists {
  const _$UserAlreadyExists({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'FirebaseServicesException.userAlreadyExists(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserAlreadyExists &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$UserAlreadyExistsCopyWith<_$UserAlreadyExists> get copyWith =>
      __$$UserAlreadyExistsCopyWithImpl<_$UserAlreadyExists>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unknown,
    required TResult Function(String message) internalError,
    required TResult Function(String message) invalidEmail,
    required TResult Function(String message) userAlreadyExists,
    required TResult Function(String message) userNotFound,
  }) {
    return userAlreadyExists(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? unknown,
    TResult Function(String message)? internalError,
    TResult Function(String message)? invalidEmail,
    TResult Function(String message)? userAlreadyExists,
    TResult Function(String message)? userNotFound,
  }) {
    return userAlreadyExists?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unknown,
    TResult Function(String message)? internalError,
    TResult Function(String message)? invalidEmail,
    TResult Function(String message)? userAlreadyExists,
    TResult Function(String message)? userNotFound,
    required TResult orElse(),
  }) {
    if (userAlreadyExists != null) {
      return userAlreadyExists(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unknown value) unknown,
    required TResult Function(InternalError value) internalError,
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(UserAlreadyExists value) userAlreadyExists,
    required TResult Function(UserNotFound value) userNotFound,
  }) {
    return userAlreadyExists(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(InternalError value)? internalError,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(UserAlreadyExists value)? userAlreadyExists,
    TResult Function(UserNotFound value)? userNotFound,
  }) {
    return userAlreadyExists?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(InternalError value)? internalError,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(UserAlreadyExists value)? userAlreadyExists,
    TResult Function(UserNotFound value)? userNotFound,
    required TResult orElse(),
  }) {
    if (userAlreadyExists != null) {
      return userAlreadyExists(this);
    }
    return orElse();
  }
}

abstract class UserAlreadyExists implements FirebaseServicesException {
  const factory UserAlreadyExists({required final String message}) =
      _$UserAlreadyExists;

  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$UserAlreadyExistsCopyWith<_$UserAlreadyExists> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserNotFoundCopyWith<$Res>
    implements $FirebaseServicesExceptionCopyWith<$Res> {
  factory _$$UserNotFoundCopyWith(
          _$UserNotFound value, $Res Function(_$UserNotFound) then) =
      __$$UserNotFoundCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$$UserNotFoundCopyWithImpl<$Res>
    extends _$FirebaseServicesExceptionCopyWithImpl<$Res>
    implements _$$UserNotFoundCopyWith<$Res> {
  __$$UserNotFoundCopyWithImpl(
      _$UserNotFound _value, $Res Function(_$UserNotFound) _then)
      : super(_value, (v) => _then(v as _$UserNotFound));

  @override
  _$UserNotFound get _value => super._value as _$UserNotFound;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$UserNotFound(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserNotFound implements UserNotFound {
  const _$UserNotFound({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'FirebaseServicesException.userNotFound(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserNotFound &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$UserNotFoundCopyWith<_$UserNotFound> get copyWith =>
      __$$UserNotFoundCopyWithImpl<_$UserNotFound>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unknown,
    required TResult Function(String message) internalError,
    required TResult Function(String message) invalidEmail,
    required TResult Function(String message) userAlreadyExists,
    required TResult Function(String message) userNotFound,
  }) {
    return userNotFound(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? unknown,
    TResult Function(String message)? internalError,
    TResult Function(String message)? invalidEmail,
    TResult Function(String message)? userAlreadyExists,
    TResult Function(String message)? userNotFound,
  }) {
    return userNotFound?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unknown,
    TResult Function(String message)? internalError,
    TResult Function(String message)? invalidEmail,
    TResult Function(String message)? userAlreadyExists,
    TResult Function(String message)? userNotFound,
    required TResult orElse(),
  }) {
    if (userNotFound != null) {
      return userNotFound(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unknown value) unknown,
    required TResult Function(InternalError value) internalError,
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(UserAlreadyExists value) userAlreadyExists,
    required TResult Function(UserNotFound value) userNotFound,
  }) {
    return userNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(InternalError value)? internalError,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(UserAlreadyExists value)? userAlreadyExists,
    TResult Function(UserNotFound value)? userNotFound,
  }) {
    return userNotFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(InternalError value)? internalError,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(UserAlreadyExists value)? userAlreadyExists,
    TResult Function(UserNotFound value)? userNotFound,
    required TResult orElse(),
  }) {
    if (userNotFound != null) {
      return userNotFound(this);
    }
    return orElse();
  }
}

abstract class UserNotFound implements FirebaseServicesException {
  const factory UserNotFound({required final String message}) = _$UserNotFound;

  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$UserNotFoundCopyWith<_$UserNotFound> get copyWith =>
      throw _privateConstructorUsedError;
}
