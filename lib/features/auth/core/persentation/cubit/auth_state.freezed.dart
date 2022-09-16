// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() registerSuccess,
    required TResult Function() authorized,
    required TResult Function() unauthorized,
    required TResult Function(String message) error,
    required TResult Function() noNetwork,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? registerSuccess,
    TResult Function()? authorized,
    TResult Function()? unauthorized,
    TResult Function(String message)? error,
    TResult Function()? noNetwork,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? registerSuccess,
    TResult Function()? authorized,
    TResult Function()? unauthorized,
    TResult Function(String message)? error,
    TResult Function()? noNetwork,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(RegisterSuccess value) registerSuccess,
    required TResult Function(Authorized value) authorized,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(Error value) error,
    required TResult Function(NoNetwork value) noNetwork,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(RegisterSuccess value)? registerSuccess,
    TResult Function(Authorized value)? authorized,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(Error value)? error,
    TResult Function(NoNetwork value)? noNetwork,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(RegisterSuccess value)? registerSuccess,
    TResult Function(Authorized value)? authorized,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(Error value)? error,
    TResult Function(NoNetwork value)? noNetwork,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, (v) => _then(v as _$Initial));

  @override
  _$Initial get _value => super._value as _$Initial;
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() registerSuccess,
    required TResult Function() authorized,
    required TResult Function() unauthorized,
    required TResult Function(String message) error,
    required TResult Function() noNetwork,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? registerSuccess,
    TResult Function()? authorized,
    TResult Function()? unauthorized,
    TResult Function(String message)? error,
    TResult Function()? noNetwork,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? registerSuccess,
    TResult Function()? authorized,
    TResult Function()? unauthorized,
    TResult Function(String message)? error,
    TResult Function()? noNetwork,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(RegisterSuccess value) registerSuccess,
    required TResult Function(Authorized value) authorized,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(Error value) error,
    required TResult Function(NoNetwork value) noNetwork,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(RegisterSuccess value)? registerSuccess,
    TResult Function(Authorized value)? authorized,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(Error value)? error,
    TResult Function(NoNetwork value)? noNetwork,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(RegisterSuccess value)? registerSuccess,
    TResult Function(Authorized value)? authorized,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(Error value)? error,
    TResult Function(NoNetwork value)? noNetwork,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements AuthState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$LoadingCopyWith<$Res> {
  factory _$$LoadingCopyWith(_$Loading value, $Res Function(_$Loading) then) =
      __$$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$$LoadingCopyWith<$Res> {
  __$$LoadingCopyWithImpl(_$Loading _value, $Res Function(_$Loading) _then)
      : super(_value, (v) => _then(v as _$Loading));

  @override
  _$Loading get _value => super._value as _$Loading;
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() registerSuccess,
    required TResult Function() authorized,
    required TResult Function() unauthorized,
    required TResult Function(String message) error,
    required TResult Function() noNetwork,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? registerSuccess,
    TResult Function()? authorized,
    TResult Function()? unauthorized,
    TResult Function(String message)? error,
    TResult Function()? noNetwork,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? registerSuccess,
    TResult Function()? authorized,
    TResult Function()? unauthorized,
    TResult Function(String message)? error,
    TResult Function()? noNetwork,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(RegisterSuccess value) registerSuccess,
    required TResult Function(Authorized value) authorized,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(Error value) error,
    required TResult Function(NoNetwork value) noNetwork,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(RegisterSuccess value)? registerSuccess,
    TResult Function(Authorized value)? authorized,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(Error value)? error,
    TResult Function(NoNetwork value)? noNetwork,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(RegisterSuccess value)? registerSuccess,
    TResult Function(Authorized value)? authorized,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(Error value)? error,
    TResult Function(NoNetwork value)? noNetwork,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements AuthState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class _$$SuccessCopyWith<$Res> {
  factory _$$SuccessCopyWith(_$Success value, $Res Function(_$Success) then) =
      __$$SuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$$SuccessCopyWith<$Res> {
  __$$SuccessCopyWithImpl(_$Success _value, $Res Function(_$Success) _then)
      : super(_value, (v) => _then(v as _$Success));

  @override
  _$Success get _value => super._value as _$Success;
}

/// @nodoc

class _$Success implements Success {
  const _$Success();

  @override
  String toString() {
    return 'AuthState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Success);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() registerSuccess,
    required TResult Function() authorized,
    required TResult Function() unauthorized,
    required TResult Function(String message) error,
    required TResult Function() noNetwork,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? registerSuccess,
    TResult Function()? authorized,
    TResult Function()? unauthorized,
    TResult Function(String message)? error,
    TResult Function()? noNetwork,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? registerSuccess,
    TResult Function()? authorized,
    TResult Function()? unauthorized,
    TResult Function(String message)? error,
    TResult Function()? noNetwork,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(RegisterSuccess value) registerSuccess,
    required TResult Function(Authorized value) authorized,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(Error value) error,
    required TResult Function(NoNetwork value) noNetwork,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(RegisterSuccess value)? registerSuccess,
    TResult Function(Authorized value)? authorized,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(Error value)? error,
    TResult Function(NoNetwork value)? noNetwork,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(RegisterSuccess value)? registerSuccess,
    TResult Function(Authorized value)? authorized,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(Error value)? error,
    TResult Function(NoNetwork value)? noNetwork,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success implements AuthState {
  const factory Success() = _$Success;
}

/// @nodoc
abstract class _$$RegisterSuccessCopyWith<$Res> {
  factory _$$RegisterSuccessCopyWith(
          _$RegisterSuccess value, $Res Function(_$RegisterSuccess) then) =
      __$$RegisterSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegisterSuccessCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$$RegisterSuccessCopyWith<$Res> {
  __$$RegisterSuccessCopyWithImpl(
      _$RegisterSuccess _value, $Res Function(_$RegisterSuccess) _then)
      : super(_value, (v) => _then(v as _$RegisterSuccess));

  @override
  _$RegisterSuccess get _value => super._value as _$RegisterSuccess;
}

/// @nodoc

class _$RegisterSuccess implements RegisterSuccess {
  const _$RegisterSuccess();

  @override
  String toString() {
    return 'AuthState.registerSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RegisterSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() registerSuccess,
    required TResult Function() authorized,
    required TResult Function() unauthorized,
    required TResult Function(String message) error,
    required TResult Function() noNetwork,
  }) {
    return registerSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? registerSuccess,
    TResult Function()? authorized,
    TResult Function()? unauthorized,
    TResult Function(String message)? error,
    TResult Function()? noNetwork,
  }) {
    return registerSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? registerSuccess,
    TResult Function()? authorized,
    TResult Function()? unauthorized,
    TResult Function(String message)? error,
    TResult Function()? noNetwork,
    required TResult orElse(),
  }) {
    if (registerSuccess != null) {
      return registerSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(RegisterSuccess value) registerSuccess,
    required TResult Function(Authorized value) authorized,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(Error value) error,
    required TResult Function(NoNetwork value) noNetwork,
  }) {
    return registerSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(RegisterSuccess value)? registerSuccess,
    TResult Function(Authorized value)? authorized,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(Error value)? error,
    TResult Function(NoNetwork value)? noNetwork,
  }) {
    return registerSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(RegisterSuccess value)? registerSuccess,
    TResult Function(Authorized value)? authorized,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(Error value)? error,
    TResult Function(NoNetwork value)? noNetwork,
    required TResult orElse(),
  }) {
    if (registerSuccess != null) {
      return registerSuccess(this);
    }
    return orElse();
  }
}

abstract class RegisterSuccess implements AuthState {
  const factory RegisterSuccess() = _$RegisterSuccess;
}

/// @nodoc
abstract class _$$AuthorizedCopyWith<$Res> {
  factory _$$AuthorizedCopyWith(
          _$Authorized value, $Res Function(_$Authorized) then) =
      __$$AuthorizedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthorizedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$$AuthorizedCopyWith<$Res> {
  __$$AuthorizedCopyWithImpl(
      _$Authorized _value, $Res Function(_$Authorized) _then)
      : super(_value, (v) => _then(v as _$Authorized));

  @override
  _$Authorized get _value => super._value as _$Authorized;
}

/// @nodoc

class _$Authorized implements Authorized {
  const _$Authorized();

  @override
  String toString() {
    return 'AuthState.authorized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Authorized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() registerSuccess,
    required TResult Function() authorized,
    required TResult Function() unauthorized,
    required TResult Function(String message) error,
    required TResult Function() noNetwork,
  }) {
    return authorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? registerSuccess,
    TResult Function()? authorized,
    TResult Function()? unauthorized,
    TResult Function(String message)? error,
    TResult Function()? noNetwork,
  }) {
    return authorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? registerSuccess,
    TResult Function()? authorized,
    TResult Function()? unauthorized,
    TResult Function(String message)? error,
    TResult Function()? noNetwork,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(RegisterSuccess value) registerSuccess,
    required TResult Function(Authorized value) authorized,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(Error value) error,
    required TResult Function(NoNetwork value) noNetwork,
  }) {
    return authorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(RegisterSuccess value)? registerSuccess,
    TResult Function(Authorized value)? authorized,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(Error value)? error,
    TResult Function(NoNetwork value)? noNetwork,
  }) {
    return authorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(RegisterSuccess value)? registerSuccess,
    TResult Function(Authorized value)? authorized,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(Error value)? error,
    TResult Function(NoNetwork value)? noNetwork,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized(this);
    }
    return orElse();
  }
}

abstract class Authorized implements AuthState {
  const factory Authorized() = _$Authorized;
}

/// @nodoc
abstract class _$$UnauthorizedCopyWith<$Res> {
  factory _$$UnauthorizedCopyWith(
          _$Unauthorized value, $Res Function(_$Unauthorized) then) =
      __$$UnauthorizedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnauthorizedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$$UnauthorizedCopyWith<$Res> {
  __$$UnauthorizedCopyWithImpl(
      _$Unauthorized _value, $Res Function(_$Unauthorized) _then)
      : super(_value, (v) => _then(v as _$Unauthorized));

  @override
  _$Unauthorized get _value => super._value as _$Unauthorized;
}

/// @nodoc

class _$Unauthorized implements Unauthorized {
  const _$Unauthorized();

  @override
  String toString() {
    return 'AuthState.unauthorized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Unauthorized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() registerSuccess,
    required TResult Function() authorized,
    required TResult Function() unauthorized,
    required TResult Function(String message) error,
    required TResult Function() noNetwork,
  }) {
    return unauthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? registerSuccess,
    TResult Function()? authorized,
    TResult Function()? unauthorized,
    TResult Function(String message)? error,
    TResult Function()? noNetwork,
  }) {
    return unauthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? registerSuccess,
    TResult Function()? authorized,
    TResult Function()? unauthorized,
    TResult Function(String message)? error,
    TResult Function()? noNetwork,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(RegisterSuccess value) registerSuccess,
    required TResult Function(Authorized value) authorized,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(Error value) error,
    required TResult Function(NoNetwork value) noNetwork,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(RegisterSuccess value)? registerSuccess,
    TResult Function(Authorized value)? authorized,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(Error value)? error,
    TResult Function(NoNetwork value)? noNetwork,
  }) {
    return unauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(RegisterSuccess value)? registerSuccess,
    TResult Function(Authorized value)? authorized,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(Error value)? error,
    TResult Function(NoNetwork value)? noNetwork,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class Unauthorized implements AuthState {
  const factory Unauthorized() = _$Unauthorized;
}

/// @nodoc
abstract class _$$ErrorCopyWith<$Res> {
  factory _$$ErrorCopyWith(_$Error value, $Res Function(_$Error) then) =
      __$$ErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$ErrorCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$$ErrorCopyWith<$Res> {
  __$$ErrorCopyWithImpl(_$Error _value, $Res Function(_$Error) _then)
      : super(_value, (v) => _then(v as _$Error));

  @override
  _$Error get _value => super._value as _$Error;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$Error(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Error implements Error {
  const _$Error({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'AuthState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Error &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$ErrorCopyWith<_$Error> get copyWith =>
      __$$ErrorCopyWithImpl<_$Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() registerSuccess,
    required TResult Function() authorized,
    required TResult Function() unauthorized,
    required TResult Function(String message) error,
    required TResult Function() noNetwork,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? registerSuccess,
    TResult Function()? authorized,
    TResult Function()? unauthorized,
    TResult Function(String message)? error,
    TResult Function()? noNetwork,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? registerSuccess,
    TResult Function()? authorized,
    TResult Function()? unauthorized,
    TResult Function(String message)? error,
    TResult Function()? noNetwork,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(RegisterSuccess value) registerSuccess,
    required TResult Function(Authorized value) authorized,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(Error value) error,
    required TResult Function(NoNetwork value) noNetwork,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(RegisterSuccess value)? registerSuccess,
    TResult Function(Authorized value)? authorized,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(Error value)? error,
    TResult Function(NoNetwork value)? noNetwork,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(RegisterSuccess value)? registerSuccess,
    TResult Function(Authorized value)? authorized,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(Error value)? error,
    TResult Function(NoNetwork value)? noNetwork,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements AuthState {
  const factory Error({required final String message}) = _$Error;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ErrorCopyWith<_$Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoNetworkCopyWith<$Res> {
  factory _$$NoNetworkCopyWith(
          _$NoNetwork value, $Res Function(_$NoNetwork) then) =
      __$$NoNetworkCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoNetworkCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$$NoNetworkCopyWith<$Res> {
  __$$NoNetworkCopyWithImpl(
      _$NoNetwork _value, $Res Function(_$NoNetwork) _then)
      : super(_value, (v) => _then(v as _$NoNetwork));

  @override
  _$NoNetwork get _value => super._value as _$NoNetwork;
}

/// @nodoc

class _$NoNetwork implements NoNetwork {
  const _$NoNetwork();

  @override
  String toString() {
    return 'AuthState.noNetwork()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoNetwork);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() registerSuccess,
    required TResult Function() authorized,
    required TResult Function() unauthorized,
    required TResult Function(String message) error,
    required TResult Function() noNetwork,
  }) {
    return noNetwork();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? registerSuccess,
    TResult Function()? authorized,
    TResult Function()? unauthorized,
    TResult Function(String message)? error,
    TResult Function()? noNetwork,
  }) {
    return noNetwork?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? registerSuccess,
    TResult Function()? authorized,
    TResult Function()? unauthorized,
    TResult Function(String message)? error,
    TResult Function()? noNetwork,
    required TResult orElse(),
  }) {
    if (noNetwork != null) {
      return noNetwork();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(RegisterSuccess value) registerSuccess,
    required TResult Function(Authorized value) authorized,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(Error value) error,
    required TResult Function(NoNetwork value) noNetwork,
  }) {
    return noNetwork(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(RegisterSuccess value)? registerSuccess,
    TResult Function(Authorized value)? authorized,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(Error value)? error,
    TResult Function(NoNetwork value)? noNetwork,
  }) {
    return noNetwork?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(RegisterSuccess value)? registerSuccess,
    TResult Function(Authorized value)? authorized,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(Error value)? error,
    TResult Function(NoNetwork value)? noNetwork,
    required TResult orElse(),
  }) {
    if (noNetwork != null) {
      return noNetwork(this);
    }
    return orElse();
  }
}

abstract class NoNetwork implements AuthState {
  const factory NoNetwork() = _$NoNetwork;
}
