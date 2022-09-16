import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/core/data/error/exceptions/application_exception.dart';

part 'firebase_auth_exception.freezed.dart';

@freezed
abstract class FirebaseServicesException extends ApplicationException
    with _$FirebaseServicesException {
  const factory FirebaseServicesException.unknown({required String message}) = Unknown;

  const factory FirebaseServicesException.internalError({required String message}) =
      InternalError;

  const factory FirebaseServicesException.invalidEmail(
      {required String message}) = InvalidEmail;

  const factory FirebaseServicesException.userAlreadyExists(
      {required String message}) = UserAlreadyExists;

  const factory FirebaseServicesException.userNotFound(
      {required String message}) = UserNotFound;
}
