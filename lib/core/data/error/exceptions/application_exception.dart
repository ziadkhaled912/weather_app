import 'package:dio/dio.dart';
import 'package:weather_app/core/data/error/exceptions/server_exception.dart';
import 'package:weather_app/generated/l10n.dart';

import 'client_exception.dart';

abstract class ApplicationException implements Exception {}

class GenericApplicationException extends ApplicationException {
  final String? message;

  GenericApplicationException({required this.message});
}

void dioErrorDecoder(DioError e, String resourceName) {
  if(e.type == DioErrorType.response) {
    decodeResponseError(e, resourceName: resourceName);
  } else {
    throw ClientException.networkError(message: S.current.internetError);
  }
}

void decodeResponseError(DioError e, {String resourceName = ''}) {
  if (e.response?.statusCode.toString()[0] == "4") {
    decodeClientErrors(e, resourceName: resourceName);
  } else if (e.response?.statusCode.toString()[0] == "5") {
    decodeServerErrors(e);
  } else {
    throw GenericApplicationException(message: S.current.somethingWentWrong);
  }
}

void decodeServerErrors(DioError e) {
  switch (e.response?.statusCode) {
    case 500:
      throw ServerException.internalError(message: S.current.somethingWentWrong);
    case 503:
      throw ServerException.serviceUnavailable(message: S.current.serviceError);
    default:
      throw ServerException.unknown(message: e.message);
  }
}

void decodeClientErrors(DioError e, {String resourceName = ''}) {
  switch (e.response?.statusCode) {
    case 401:
      throw const ClientException.unauthorizedAccess();
    case 403:
      throw ClientException.forbiddenAccess(
        message: S.current.forbiddenAccessError,
      );
    case 404:
      throw ClientException.resourceNotFound(
        resourceName: resourceName,
        message: S.current.contentError,
      );
    case 400:
      final response = e.response!.data['errorMessages'];
      final buffer = StringBuffer();
      buffer.write(S.current.somethingWentWrong);
      try {
        final errors = response?.entries;
        if (errors != null && errors.isNotEmpty) {
          buffer.clear();
          errors.forEach((entry) {
            final errorsAssociatedWithKey = entry.value;
            if (errorsAssociatedWithKey is List) {
              buffer.writeln(errorsAssociatedWithKey.join(" ,"));
            } else {
              buffer.writeln("$errorsAssociatedWithKey");
            }
          });
        }
      } catch (e) {
        throw ClientException.badRequest(message: buffer.toString());
      }
      throw ClientException.badRequest(message: buffer.toString());
    default:
      throw ClientException.unknown(message: S.current.somethingWentWrong);
  }
}
