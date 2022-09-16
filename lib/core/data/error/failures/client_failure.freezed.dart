// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'client_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ClientFailure {
  String get message => throw _privateConstructorUsedError;
  bool get isAction => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, bool isAction) unknown,
    required TResult Function(String message, bool isAction) resourceNotFound,
    required TResult Function(String message, bool isAction) badRequest,
    required TResult Function(String message, bool isAction) forbiddenAccess,
    required TResult Function(String message, bool isAction) unauthorizedAccess,
    required TResult Function(String message, bool isAction) networkError,
    required TResult Function(String message, bool isAction) cacheError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message, bool isAction)? unknown,
    TResult Function(String message, bool isAction)? resourceNotFound,
    TResult Function(String message, bool isAction)? badRequest,
    TResult Function(String message, bool isAction)? forbiddenAccess,
    TResult Function(String message, bool isAction)? unauthorizedAccess,
    TResult Function(String message, bool isAction)? networkError,
    TResult Function(String message, bool isAction)? cacheError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, bool isAction)? unknown,
    TResult Function(String message, bool isAction)? resourceNotFound,
    TResult Function(String message, bool isAction)? badRequest,
    TResult Function(String message, bool isAction)? forbiddenAccess,
    TResult Function(String message, bool isAction)? unauthorizedAccess,
    TResult Function(String message, bool isAction)? networkError,
    TResult Function(String message, bool isAction)? cacheError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unknown value) unknown,
    required TResult Function(ResourceNotFound value) resourceNotFound,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(ForbiddenAccess value) forbiddenAccess,
    required TResult Function(UnAuthorizedAccess value) unauthorizedAccess,
    required TResult Function(NetworkError value) networkError,
    required TResult Function(CacheError value) cacheError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(ResourceNotFound value)? resourceNotFound,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(ForbiddenAccess value)? forbiddenAccess,
    TResult Function(UnAuthorizedAccess value)? unauthorizedAccess,
    TResult Function(NetworkError value)? networkError,
    TResult Function(CacheError value)? cacheError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(ResourceNotFound value)? resourceNotFound,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(ForbiddenAccess value)? forbiddenAccess,
    TResult Function(UnAuthorizedAccess value)? unauthorizedAccess,
    TResult Function(NetworkError value)? networkError,
    TResult Function(CacheError value)? cacheError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClientFailureCopyWith<ClientFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientFailureCopyWith<$Res> {
  factory $ClientFailureCopyWith(
          ClientFailure value, $Res Function(ClientFailure) then) =
      _$ClientFailureCopyWithImpl<$Res>;
  $Res call({String message, bool isAction});
}

/// @nodoc
class _$ClientFailureCopyWithImpl<$Res>
    implements $ClientFailureCopyWith<$Res> {
  _$ClientFailureCopyWithImpl(this._value, this._then);

  final ClientFailure _value;
  // ignore: unused_field
  final $Res Function(ClientFailure) _then;

  @override
  $Res call({
    Object? message = freezed,
    Object? isAction = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isAction: isAction == freezed
          ? _value.isAction
          : isAction // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$UnknownCopyWith<$Res>
    implements $ClientFailureCopyWith<$Res> {
  factory _$$UnknownCopyWith(_$Unknown value, $Res Function(_$Unknown) then) =
      __$$UnknownCopyWithImpl<$Res>;
  @override
  $Res call({String message, bool isAction});
}

/// @nodoc
class __$$UnknownCopyWithImpl<$Res> extends _$ClientFailureCopyWithImpl<$Res>
    implements _$$UnknownCopyWith<$Res> {
  __$$UnknownCopyWithImpl(_$Unknown _value, $Res Function(_$Unknown) _then)
      : super(_value, (v) => _then(v as _$Unknown));

  @override
  _$Unknown get _value => super._value as _$Unknown;

  @override
  $Res call({
    Object? message = freezed,
    Object? isAction = freezed,
  }) {
    return _then(_$Unknown(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isAction: isAction == freezed
          ? _value.isAction
          : isAction // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$Unknown implements Unknown {
  const _$Unknown({required this.message, this.isAction = false});

  @override
  final String message;
  @override
  @JsonKey()
  final bool isAction;

  @override
  String toString() {
    return 'ClientFailure.unknown(message: $message, isAction: $isAction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Unknown &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.isAction, isAction));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(isAction));

  @JsonKey(ignore: true)
  @override
  _$$UnknownCopyWith<_$Unknown> get copyWith =>
      __$$UnknownCopyWithImpl<_$Unknown>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, bool isAction) unknown,
    required TResult Function(String message, bool isAction) resourceNotFound,
    required TResult Function(String message, bool isAction) badRequest,
    required TResult Function(String message, bool isAction) forbiddenAccess,
    required TResult Function(String message, bool isAction) unauthorizedAccess,
    required TResult Function(String message, bool isAction) networkError,
    required TResult Function(String message, bool isAction) cacheError,
  }) {
    return unknown(message, isAction);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message, bool isAction)? unknown,
    TResult Function(String message, bool isAction)? resourceNotFound,
    TResult Function(String message, bool isAction)? badRequest,
    TResult Function(String message, bool isAction)? forbiddenAccess,
    TResult Function(String message, bool isAction)? unauthorizedAccess,
    TResult Function(String message, bool isAction)? networkError,
    TResult Function(String message, bool isAction)? cacheError,
  }) {
    return unknown?.call(message, isAction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, bool isAction)? unknown,
    TResult Function(String message, bool isAction)? resourceNotFound,
    TResult Function(String message, bool isAction)? badRequest,
    TResult Function(String message, bool isAction)? forbiddenAccess,
    TResult Function(String message, bool isAction)? unauthorizedAccess,
    TResult Function(String message, bool isAction)? networkError,
    TResult Function(String message, bool isAction)? cacheError,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(message, isAction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unknown value) unknown,
    required TResult Function(ResourceNotFound value) resourceNotFound,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(ForbiddenAccess value) forbiddenAccess,
    required TResult Function(UnAuthorizedAccess value) unauthorizedAccess,
    required TResult Function(NetworkError value) networkError,
    required TResult Function(CacheError value) cacheError,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(ResourceNotFound value)? resourceNotFound,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(ForbiddenAccess value)? forbiddenAccess,
    TResult Function(UnAuthorizedAccess value)? unauthorizedAccess,
    TResult Function(NetworkError value)? networkError,
    TResult Function(CacheError value)? cacheError,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(ResourceNotFound value)? resourceNotFound,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(ForbiddenAccess value)? forbiddenAccess,
    TResult Function(UnAuthorizedAccess value)? unauthorizedAccess,
    TResult Function(NetworkError value)? networkError,
    TResult Function(CacheError value)? cacheError,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class Unknown implements ClientFailure {
  const factory Unknown({required final String message, final bool isAction}) =
      _$Unknown;

  @override
  String get message => throw _privateConstructorUsedError;
  @override
  bool get isAction => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$UnknownCopyWith<_$Unknown> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResourceNotFoundCopyWith<$Res>
    implements $ClientFailureCopyWith<$Res> {
  factory _$$ResourceNotFoundCopyWith(
          _$ResourceNotFound value, $Res Function(_$ResourceNotFound) then) =
      __$$ResourceNotFoundCopyWithImpl<$Res>;
  @override
  $Res call({String message, bool isAction});
}

/// @nodoc
class __$$ResourceNotFoundCopyWithImpl<$Res>
    extends _$ClientFailureCopyWithImpl<$Res>
    implements _$$ResourceNotFoundCopyWith<$Res> {
  __$$ResourceNotFoundCopyWithImpl(
      _$ResourceNotFound _value, $Res Function(_$ResourceNotFound) _then)
      : super(_value, (v) => _then(v as _$ResourceNotFound));

  @override
  _$ResourceNotFound get _value => super._value as _$ResourceNotFound;

  @override
  $Res call({
    Object? message = freezed,
    Object? isAction = freezed,
  }) {
    return _then(_$ResourceNotFound(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isAction: isAction == freezed
          ? _value.isAction
          : isAction // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ResourceNotFound implements ResourceNotFound {
  const _$ResourceNotFound({required this.message, this.isAction = false});

  @override
  final String message;
  @override
  @JsonKey()
  final bool isAction;

  @override
  String toString() {
    return 'ClientFailure.resourceNotFound(message: $message, isAction: $isAction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResourceNotFound &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.isAction, isAction));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(isAction));

  @JsonKey(ignore: true)
  @override
  _$$ResourceNotFoundCopyWith<_$ResourceNotFound> get copyWith =>
      __$$ResourceNotFoundCopyWithImpl<_$ResourceNotFound>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, bool isAction) unknown,
    required TResult Function(String message, bool isAction) resourceNotFound,
    required TResult Function(String message, bool isAction) badRequest,
    required TResult Function(String message, bool isAction) forbiddenAccess,
    required TResult Function(String message, bool isAction) unauthorizedAccess,
    required TResult Function(String message, bool isAction) networkError,
    required TResult Function(String message, bool isAction) cacheError,
  }) {
    return resourceNotFound(message, isAction);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message, bool isAction)? unknown,
    TResult Function(String message, bool isAction)? resourceNotFound,
    TResult Function(String message, bool isAction)? badRequest,
    TResult Function(String message, bool isAction)? forbiddenAccess,
    TResult Function(String message, bool isAction)? unauthorizedAccess,
    TResult Function(String message, bool isAction)? networkError,
    TResult Function(String message, bool isAction)? cacheError,
  }) {
    return resourceNotFound?.call(message, isAction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, bool isAction)? unknown,
    TResult Function(String message, bool isAction)? resourceNotFound,
    TResult Function(String message, bool isAction)? badRequest,
    TResult Function(String message, bool isAction)? forbiddenAccess,
    TResult Function(String message, bool isAction)? unauthorizedAccess,
    TResult Function(String message, bool isAction)? networkError,
    TResult Function(String message, bool isAction)? cacheError,
    required TResult orElse(),
  }) {
    if (resourceNotFound != null) {
      return resourceNotFound(message, isAction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unknown value) unknown,
    required TResult Function(ResourceNotFound value) resourceNotFound,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(ForbiddenAccess value) forbiddenAccess,
    required TResult Function(UnAuthorizedAccess value) unauthorizedAccess,
    required TResult Function(NetworkError value) networkError,
    required TResult Function(CacheError value) cacheError,
  }) {
    return resourceNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(ResourceNotFound value)? resourceNotFound,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(ForbiddenAccess value)? forbiddenAccess,
    TResult Function(UnAuthorizedAccess value)? unauthorizedAccess,
    TResult Function(NetworkError value)? networkError,
    TResult Function(CacheError value)? cacheError,
  }) {
    return resourceNotFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(ResourceNotFound value)? resourceNotFound,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(ForbiddenAccess value)? forbiddenAccess,
    TResult Function(UnAuthorizedAccess value)? unauthorizedAccess,
    TResult Function(NetworkError value)? networkError,
    TResult Function(CacheError value)? cacheError,
    required TResult orElse(),
  }) {
    if (resourceNotFound != null) {
      return resourceNotFound(this);
    }
    return orElse();
  }
}

abstract class ResourceNotFound implements ClientFailure {
  const factory ResourceNotFound(
      {required final String message,
      final bool isAction}) = _$ResourceNotFound;

  @override
  String get message => throw _privateConstructorUsedError;
  @override
  bool get isAction => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$ResourceNotFoundCopyWith<_$ResourceNotFound> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BadRequestCopyWith<$Res>
    implements $ClientFailureCopyWith<$Res> {
  factory _$$BadRequestCopyWith(
          _$BadRequest value, $Res Function(_$BadRequest) then) =
      __$$BadRequestCopyWithImpl<$Res>;
  @override
  $Res call({String message, bool isAction});
}

/// @nodoc
class __$$BadRequestCopyWithImpl<$Res> extends _$ClientFailureCopyWithImpl<$Res>
    implements _$$BadRequestCopyWith<$Res> {
  __$$BadRequestCopyWithImpl(
      _$BadRequest _value, $Res Function(_$BadRequest) _then)
      : super(_value, (v) => _then(v as _$BadRequest));

  @override
  _$BadRequest get _value => super._value as _$BadRequest;

  @override
  $Res call({
    Object? message = freezed,
    Object? isAction = freezed,
  }) {
    return _then(_$BadRequest(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isAction: isAction == freezed
          ? _value.isAction
          : isAction // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$BadRequest implements BadRequest {
  const _$BadRequest({required this.message, this.isAction = false});

  @override
  final String message;
  @override
  @JsonKey()
  final bool isAction;

  @override
  String toString() {
    return 'ClientFailure.badRequest(message: $message, isAction: $isAction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BadRequest &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.isAction, isAction));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(isAction));

  @JsonKey(ignore: true)
  @override
  _$$BadRequestCopyWith<_$BadRequest> get copyWith =>
      __$$BadRequestCopyWithImpl<_$BadRequest>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, bool isAction) unknown,
    required TResult Function(String message, bool isAction) resourceNotFound,
    required TResult Function(String message, bool isAction) badRequest,
    required TResult Function(String message, bool isAction) forbiddenAccess,
    required TResult Function(String message, bool isAction) unauthorizedAccess,
    required TResult Function(String message, bool isAction) networkError,
    required TResult Function(String message, bool isAction) cacheError,
  }) {
    return badRequest(message, isAction);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message, bool isAction)? unknown,
    TResult Function(String message, bool isAction)? resourceNotFound,
    TResult Function(String message, bool isAction)? badRequest,
    TResult Function(String message, bool isAction)? forbiddenAccess,
    TResult Function(String message, bool isAction)? unauthorizedAccess,
    TResult Function(String message, bool isAction)? networkError,
    TResult Function(String message, bool isAction)? cacheError,
  }) {
    return badRequest?.call(message, isAction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, bool isAction)? unknown,
    TResult Function(String message, bool isAction)? resourceNotFound,
    TResult Function(String message, bool isAction)? badRequest,
    TResult Function(String message, bool isAction)? forbiddenAccess,
    TResult Function(String message, bool isAction)? unauthorizedAccess,
    TResult Function(String message, bool isAction)? networkError,
    TResult Function(String message, bool isAction)? cacheError,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest(message, isAction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unknown value) unknown,
    required TResult Function(ResourceNotFound value) resourceNotFound,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(ForbiddenAccess value) forbiddenAccess,
    required TResult Function(UnAuthorizedAccess value) unauthorizedAccess,
    required TResult Function(NetworkError value) networkError,
    required TResult Function(CacheError value) cacheError,
  }) {
    return badRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(ResourceNotFound value)? resourceNotFound,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(ForbiddenAccess value)? forbiddenAccess,
    TResult Function(UnAuthorizedAccess value)? unauthorizedAccess,
    TResult Function(NetworkError value)? networkError,
    TResult Function(CacheError value)? cacheError,
  }) {
    return badRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(ResourceNotFound value)? resourceNotFound,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(ForbiddenAccess value)? forbiddenAccess,
    TResult Function(UnAuthorizedAccess value)? unauthorizedAccess,
    TResult Function(NetworkError value)? networkError,
    TResult Function(CacheError value)? cacheError,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest(this);
    }
    return orElse();
  }
}

abstract class BadRequest implements ClientFailure {
  const factory BadRequest(
      {required final String message, final bool isAction}) = _$BadRequest;

  @override
  String get message => throw _privateConstructorUsedError;
  @override
  bool get isAction => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$BadRequestCopyWith<_$BadRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ForbiddenAccessCopyWith<$Res>
    implements $ClientFailureCopyWith<$Res> {
  factory _$$ForbiddenAccessCopyWith(
          _$ForbiddenAccess value, $Res Function(_$ForbiddenAccess) then) =
      __$$ForbiddenAccessCopyWithImpl<$Res>;
  @override
  $Res call({String message, bool isAction});
}

/// @nodoc
class __$$ForbiddenAccessCopyWithImpl<$Res>
    extends _$ClientFailureCopyWithImpl<$Res>
    implements _$$ForbiddenAccessCopyWith<$Res> {
  __$$ForbiddenAccessCopyWithImpl(
      _$ForbiddenAccess _value, $Res Function(_$ForbiddenAccess) _then)
      : super(_value, (v) => _then(v as _$ForbiddenAccess));

  @override
  _$ForbiddenAccess get _value => super._value as _$ForbiddenAccess;

  @override
  $Res call({
    Object? message = freezed,
    Object? isAction = freezed,
  }) {
    return _then(_$ForbiddenAccess(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isAction: isAction == freezed
          ? _value.isAction
          : isAction // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ForbiddenAccess implements ForbiddenAccess {
  const _$ForbiddenAccess({required this.message, this.isAction = false});

  @override
  final String message;
  @override
  @JsonKey()
  final bool isAction;

  @override
  String toString() {
    return 'ClientFailure.forbiddenAccess(message: $message, isAction: $isAction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForbiddenAccess &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.isAction, isAction));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(isAction));

  @JsonKey(ignore: true)
  @override
  _$$ForbiddenAccessCopyWith<_$ForbiddenAccess> get copyWith =>
      __$$ForbiddenAccessCopyWithImpl<_$ForbiddenAccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, bool isAction) unknown,
    required TResult Function(String message, bool isAction) resourceNotFound,
    required TResult Function(String message, bool isAction) badRequest,
    required TResult Function(String message, bool isAction) forbiddenAccess,
    required TResult Function(String message, bool isAction) unauthorizedAccess,
    required TResult Function(String message, bool isAction) networkError,
    required TResult Function(String message, bool isAction) cacheError,
  }) {
    return forbiddenAccess(message, isAction);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message, bool isAction)? unknown,
    TResult Function(String message, bool isAction)? resourceNotFound,
    TResult Function(String message, bool isAction)? badRequest,
    TResult Function(String message, bool isAction)? forbiddenAccess,
    TResult Function(String message, bool isAction)? unauthorizedAccess,
    TResult Function(String message, bool isAction)? networkError,
    TResult Function(String message, bool isAction)? cacheError,
  }) {
    return forbiddenAccess?.call(message, isAction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, bool isAction)? unknown,
    TResult Function(String message, bool isAction)? resourceNotFound,
    TResult Function(String message, bool isAction)? badRequest,
    TResult Function(String message, bool isAction)? forbiddenAccess,
    TResult Function(String message, bool isAction)? unauthorizedAccess,
    TResult Function(String message, bool isAction)? networkError,
    TResult Function(String message, bool isAction)? cacheError,
    required TResult orElse(),
  }) {
    if (forbiddenAccess != null) {
      return forbiddenAccess(message, isAction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unknown value) unknown,
    required TResult Function(ResourceNotFound value) resourceNotFound,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(ForbiddenAccess value) forbiddenAccess,
    required TResult Function(UnAuthorizedAccess value) unauthorizedAccess,
    required TResult Function(NetworkError value) networkError,
    required TResult Function(CacheError value) cacheError,
  }) {
    return forbiddenAccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(ResourceNotFound value)? resourceNotFound,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(ForbiddenAccess value)? forbiddenAccess,
    TResult Function(UnAuthorizedAccess value)? unauthorizedAccess,
    TResult Function(NetworkError value)? networkError,
    TResult Function(CacheError value)? cacheError,
  }) {
    return forbiddenAccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(ResourceNotFound value)? resourceNotFound,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(ForbiddenAccess value)? forbiddenAccess,
    TResult Function(UnAuthorizedAccess value)? unauthorizedAccess,
    TResult Function(NetworkError value)? networkError,
    TResult Function(CacheError value)? cacheError,
    required TResult orElse(),
  }) {
    if (forbiddenAccess != null) {
      return forbiddenAccess(this);
    }
    return orElse();
  }
}

abstract class ForbiddenAccess implements ClientFailure {
  const factory ForbiddenAccess(
      {required final String message, final bool isAction}) = _$ForbiddenAccess;

  @override
  String get message => throw _privateConstructorUsedError;
  @override
  bool get isAction => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$ForbiddenAccessCopyWith<_$ForbiddenAccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnAuthorizedAccessCopyWith<$Res>
    implements $ClientFailureCopyWith<$Res> {
  factory _$$UnAuthorizedAccessCopyWith(_$UnAuthorizedAccess value,
          $Res Function(_$UnAuthorizedAccess) then) =
      __$$UnAuthorizedAccessCopyWithImpl<$Res>;
  @override
  $Res call({String message, bool isAction});
}

/// @nodoc
class __$$UnAuthorizedAccessCopyWithImpl<$Res>
    extends _$ClientFailureCopyWithImpl<$Res>
    implements _$$UnAuthorizedAccessCopyWith<$Res> {
  __$$UnAuthorizedAccessCopyWithImpl(
      _$UnAuthorizedAccess _value, $Res Function(_$UnAuthorizedAccess) _then)
      : super(_value, (v) => _then(v as _$UnAuthorizedAccess));

  @override
  _$UnAuthorizedAccess get _value => super._value as _$UnAuthorizedAccess;

  @override
  $Res call({
    Object? message = freezed,
    Object? isAction = freezed,
  }) {
    return _then(_$UnAuthorizedAccess(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isAction: isAction == freezed
          ? _value.isAction
          : isAction // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$UnAuthorizedAccess implements UnAuthorizedAccess {
  const _$UnAuthorizedAccess({required this.message, this.isAction = false});

  @override
  final String message;
  @override
  @JsonKey()
  final bool isAction;

  @override
  String toString() {
    return 'ClientFailure.unauthorizedAccess(message: $message, isAction: $isAction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnAuthorizedAccess &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.isAction, isAction));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(isAction));

  @JsonKey(ignore: true)
  @override
  _$$UnAuthorizedAccessCopyWith<_$UnAuthorizedAccess> get copyWith =>
      __$$UnAuthorizedAccessCopyWithImpl<_$UnAuthorizedAccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, bool isAction) unknown,
    required TResult Function(String message, bool isAction) resourceNotFound,
    required TResult Function(String message, bool isAction) badRequest,
    required TResult Function(String message, bool isAction) forbiddenAccess,
    required TResult Function(String message, bool isAction) unauthorizedAccess,
    required TResult Function(String message, bool isAction) networkError,
    required TResult Function(String message, bool isAction) cacheError,
  }) {
    return unauthorizedAccess(message, isAction);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message, bool isAction)? unknown,
    TResult Function(String message, bool isAction)? resourceNotFound,
    TResult Function(String message, bool isAction)? badRequest,
    TResult Function(String message, bool isAction)? forbiddenAccess,
    TResult Function(String message, bool isAction)? unauthorizedAccess,
    TResult Function(String message, bool isAction)? networkError,
    TResult Function(String message, bool isAction)? cacheError,
  }) {
    return unauthorizedAccess?.call(message, isAction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, bool isAction)? unknown,
    TResult Function(String message, bool isAction)? resourceNotFound,
    TResult Function(String message, bool isAction)? badRequest,
    TResult Function(String message, bool isAction)? forbiddenAccess,
    TResult Function(String message, bool isAction)? unauthorizedAccess,
    TResult Function(String message, bool isAction)? networkError,
    TResult Function(String message, bool isAction)? cacheError,
    required TResult orElse(),
  }) {
    if (unauthorizedAccess != null) {
      return unauthorizedAccess(message, isAction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unknown value) unknown,
    required TResult Function(ResourceNotFound value) resourceNotFound,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(ForbiddenAccess value) forbiddenAccess,
    required TResult Function(UnAuthorizedAccess value) unauthorizedAccess,
    required TResult Function(NetworkError value) networkError,
    required TResult Function(CacheError value) cacheError,
  }) {
    return unauthorizedAccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(ResourceNotFound value)? resourceNotFound,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(ForbiddenAccess value)? forbiddenAccess,
    TResult Function(UnAuthorizedAccess value)? unauthorizedAccess,
    TResult Function(NetworkError value)? networkError,
    TResult Function(CacheError value)? cacheError,
  }) {
    return unauthorizedAccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(ResourceNotFound value)? resourceNotFound,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(ForbiddenAccess value)? forbiddenAccess,
    TResult Function(UnAuthorizedAccess value)? unauthorizedAccess,
    TResult Function(NetworkError value)? networkError,
    TResult Function(CacheError value)? cacheError,
    required TResult orElse(),
  }) {
    if (unauthorizedAccess != null) {
      return unauthorizedAccess(this);
    }
    return orElse();
  }
}

abstract class UnAuthorizedAccess implements ClientFailure {
  const factory UnAuthorizedAccess(
      {required final String message,
      final bool isAction}) = _$UnAuthorizedAccess;

  @override
  String get message => throw _privateConstructorUsedError;
  @override
  bool get isAction => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$UnAuthorizedAccessCopyWith<_$UnAuthorizedAccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NetworkErrorCopyWith<$Res>
    implements $ClientFailureCopyWith<$Res> {
  factory _$$NetworkErrorCopyWith(
          _$NetworkError value, $Res Function(_$NetworkError) then) =
      __$$NetworkErrorCopyWithImpl<$Res>;
  @override
  $Res call({String message, bool isAction});
}

/// @nodoc
class __$$NetworkErrorCopyWithImpl<$Res>
    extends _$ClientFailureCopyWithImpl<$Res>
    implements _$$NetworkErrorCopyWith<$Res> {
  __$$NetworkErrorCopyWithImpl(
      _$NetworkError _value, $Res Function(_$NetworkError) _then)
      : super(_value, (v) => _then(v as _$NetworkError));

  @override
  _$NetworkError get _value => super._value as _$NetworkError;

  @override
  $Res call({
    Object? message = freezed,
    Object? isAction = freezed,
  }) {
    return _then(_$NetworkError(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isAction: isAction == freezed
          ? _value.isAction
          : isAction // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$NetworkError implements NetworkError {
  const _$NetworkError({required this.message, this.isAction = false});

  @override
  final String message;
  @override
  @JsonKey()
  final bool isAction;

  @override
  String toString() {
    return 'ClientFailure.networkError(message: $message, isAction: $isAction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkError &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.isAction, isAction));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(isAction));

  @JsonKey(ignore: true)
  @override
  _$$NetworkErrorCopyWith<_$NetworkError> get copyWith =>
      __$$NetworkErrorCopyWithImpl<_$NetworkError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, bool isAction) unknown,
    required TResult Function(String message, bool isAction) resourceNotFound,
    required TResult Function(String message, bool isAction) badRequest,
    required TResult Function(String message, bool isAction) forbiddenAccess,
    required TResult Function(String message, bool isAction) unauthorizedAccess,
    required TResult Function(String message, bool isAction) networkError,
    required TResult Function(String message, bool isAction) cacheError,
  }) {
    return networkError(message, isAction);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message, bool isAction)? unknown,
    TResult Function(String message, bool isAction)? resourceNotFound,
    TResult Function(String message, bool isAction)? badRequest,
    TResult Function(String message, bool isAction)? forbiddenAccess,
    TResult Function(String message, bool isAction)? unauthorizedAccess,
    TResult Function(String message, bool isAction)? networkError,
    TResult Function(String message, bool isAction)? cacheError,
  }) {
    return networkError?.call(message, isAction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, bool isAction)? unknown,
    TResult Function(String message, bool isAction)? resourceNotFound,
    TResult Function(String message, bool isAction)? badRequest,
    TResult Function(String message, bool isAction)? forbiddenAccess,
    TResult Function(String message, bool isAction)? unauthorizedAccess,
    TResult Function(String message, bool isAction)? networkError,
    TResult Function(String message, bool isAction)? cacheError,
    required TResult orElse(),
  }) {
    if (networkError != null) {
      return networkError(message, isAction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unknown value) unknown,
    required TResult Function(ResourceNotFound value) resourceNotFound,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(ForbiddenAccess value) forbiddenAccess,
    required TResult Function(UnAuthorizedAccess value) unauthorizedAccess,
    required TResult Function(NetworkError value) networkError,
    required TResult Function(CacheError value) cacheError,
  }) {
    return networkError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(ResourceNotFound value)? resourceNotFound,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(ForbiddenAccess value)? forbiddenAccess,
    TResult Function(UnAuthorizedAccess value)? unauthorizedAccess,
    TResult Function(NetworkError value)? networkError,
    TResult Function(CacheError value)? cacheError,
  }) {
    return networkError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(ResourceNotFound value)? resourceNotFound,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(ForbiddenAccess value)? forbiddenAccess,
    TResult Function(UnAuthorizedAccess value)? unauthorizedAccess,
    TResult Function(NetworkError value)? networkError,
    TResult Function(CacheError value)? cacheError,
    required TResult orElse(),
  }) {
    if (networkError != null) {
      return networkError(this);
    }
    return orElse();
  }
}

abstract class NetworkError implements ClientFailure {
  const factory NetworkError(
      {required final String message, final bool isAction}) = _$NetworkError;

  @override
  String get message => throw _privateConstructorUsedError;
  @override
  bool get isAction => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$NetworkErrorCopyWith<_$NetworkError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CacheErrorCopyWith<$Res>
    implements $ClientFailureCopyWith<$Res> {
  factory _$$CacheErrorCopyWith(
          _$CacheError value, $Res Function(_$CacheError) then) =
      __$$CacheErrorCopyWithImpl<$Res>;
  @override
  $Res call({String message, bool isAction});
}

/// @nodoc
class __$$CacheErrorCopyWithImpl<$Res> extends _$ClientFailureCopyWithImpl<$Res>
    implements _$$CacheErrorCopyWith<$Res> {
  __$$CacheErrorCopyWithImpl(
      _$CacheError _value, $Res Function(_$CacheError) _then)
      : super(_value, (v) => _then(v as _$CacheError));

  @override
  _$CacheError get _value => super._value as _$CacheError;

  @override
  $Res call({
    Object? message = freezed,
    Object? isAction = freezed,
  }) {
    return _then(_$CacheError(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isAction: isAction == freezed
          ? _value.isAction
          : isAction // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CacheError implements CacheError {
  const _$CacheError({required this.message, this.isAction = false});

  @override
  final String message;
  @override
  @JsonKey()
  final bool isAction;

  @override
  String toString() {
    return 'ClientFailure.cacheError(message: $message, isAction: $isAction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CacheError &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.isAction, isAction));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(isAction));

  @JsonKey(ignore: true)
  @override
  _$$CacheErrorCopyWith<_$CacheError> get copyWith =>
      __$$CacheErrorCopyWithImpl<_$CacheError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, bool isAction) unknown,
    required TResult Function(String message, bool isAction) resourceNotFound,
    required TResult Function(String message, bool isAction) badRequest,
    required TResult Function(String message, bool isAction) forbiddenAccess,
    required TResult Function(String message, bool isAction) unauthorizedAccess,
    required TResult Function(String message, bool isAction) networkError,
    required TResult Function(String message, bool isAction) cacheError,
  }) {
    return cacheError(message, isAction);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message, bool isAction)? unknown,
    TResult Function(String message, bool isAction)? resourceNotFound,
    TResult Function(String message, bool isAction)? badRequest,
    TResult Function(String message, bool isAction)? forbiddenAccess,
    TResult Function(String message, bool isAction)? unauthorizedAccess,
    TResult Function(String message, bool isAction)? networkError,
    TResult Function(String message, bool isAction)? cacheError,
  }) {
    return cacheError?.call(message, isAction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, bool isAction)? unknown,
    TResult Function(String message, bool isAction)? resourceNotFound,
    TResult Function(String message, bool isAction)? badRequest,
    TResult Function(String message, bool isAction)? forbiddenAccess,
    TResult Function(String message, bool isAction)? unauthorizedAccess,
    TResult Function(String message, bool isAction)? networkError,
    TResult Function(String message, bool isAction)? cacheError,
    required TResult orElse(),
  }) {
    if (cacheError != null) {
      return cacheError(message, isAction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unknown value) unknown,
    required TResult Function(ResourceNotFound value) resourceNotFound,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(ForbiddenAccess value) forbiddenAccess,
    required TResult Function(UnAuthorizedAccess value) unauthorizedAccess,
    required TResult Function(NetworkError value) networkError,
    required TResult Function(CacheError value) cacheError,
  }) {
    return cacheError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(ResourceNotFound value)? resourceNotFound,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(ForbiddenAccess value)? forbiddenAccess,
    TResult Function(UnAuthorizedAccess value)? unauthorizedAccess,
    TResult Function(NetworkError value)? networkError,
    TResult Function(CacheError value)? cacheError,
  }) {
    return cacheError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(ResourceNotFound value)? resourceNotFound,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(ForbiddenAccess value)? forbiddenAccess,
    TResult Function(UnAuthorizedAccess value)? unauthorizedAccess,
    TResult Function(NetworkError value)? networkError,
    TResult Function(CacheError value)? cacheError,
    required TResult orElse(),
  }) {
    if (cacheError != null) {
      return cacheError(this);
    }
    return orElse();
  }
}

abstract class CacheError implements ClientFailure {
  const factory CacheError(
      {required final String message, final bool isAction}) = _$CacheError;

  @override
  String get message => throw _privateConstructorUsedError;
  @override
  bool get isAction => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$CacheErrorCopyWith<_$CacheError> get copyWith =>
      throw _privateConstructorUsedError;
}
