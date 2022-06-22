import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:gam3ity/core/data/error/exceptions/application_exception.dart';
import 'package:gam3ity/generated/l10n.dart';
import 'package:logging/logging.dart';

Future<T> resolveOrThrow<T>(
  Future<T> Function() target, {
    String? context,
}) async {
  try {
    return await target();
  } on DioError catch(e, s) {
    dioErrorDecoder(e, context ?? '');
  } on Exception catch (e, s) {
    if(kDebugMode) {
      log("DataSourceError:\n $e", level: Level.SEVERE.value, stackTrace: s);
    }
    throw GenericApplicationException(message: S.current.somethingWentWrong);
  } catch (e, s) {
    if (kDebugMode) {
      log("DataSourceError:\n $e", level: Level.SEVERE.value, stackTrace: s);
    }
    throw GenericApplicationException(message: S.current.somethingWentWrong);
  }
  throw GenericApplicationException(message: S.current.somethingWentWrong);
}
