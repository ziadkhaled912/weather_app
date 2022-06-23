import 'package:dio/dio.dart';
import 'package:gam3ity/core/constants/cache_keys.dart';
import 'package:gam3ity/core/data/datasources/cache_helper.dart';
import 'package:gam3ity/di/injection_container.dart';

class LanguageInterceptor extends Interceptor {
  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final locale = await getIt<CacheHelper>().get(CacheKeys.locale);
    var currentLanguage = "en";
    if (locale != null) {
      currentLanguage = locale.split('_').first;
    }

    final newHeaders = Map.fromEntries([
      ...options.headers.entries,
      MapEntry('Accept-Language', currentLanguage)
    ]);
    handler.next(options.copyWith(headers: newHeaders));
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    handler.next(response);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    handler.next(err);
  }
}
