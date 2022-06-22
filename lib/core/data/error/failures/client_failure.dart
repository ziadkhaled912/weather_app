import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gam3ity/core/data/error/failures/failure.dart';

part 'client_failure.freezed.dart';

@freezed
abstract class ClientFailure extends Failure with _$ClientFailure {
  const factory ClientFailure.unknown(
      {required String message, @Default(false) bool isAction}) = Unknown;

  const factory ClientFailure.resourceNotFound(
      {required String message,
      @Default(false) bool isAction}) = ResourceNotFound;

  const factory ClientFailure.badRequest(
      {required String message, @Default(false) bool isAction}) = BadRequest;

  const factory ClientFailure.forbiddenAccess(
      {required String message,
      @Default(false) bool isAction}) = ForbiddenAccess;

  const factory ClientFailure.unauthorizedAccess(
      {@Default(false) bool isAction}) = UnAuthorizedAccess;

  const factory ClientFailure.networkError(
      {required String message, @Default(false) bool isAction}) = NetworkError;

  const factory ClientFailure.cacheError(
      {required String message, @Default(false) bool isAction}) = CacheError;

  const factory ClientFailure.inactiveUserProfile(
      {@Default(false) bool isAction}) = InactiveProfile;
}
