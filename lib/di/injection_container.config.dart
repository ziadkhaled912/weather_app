// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i5;

import '../core/app/app_config.dart' as _i3;
import '../core/data/datasources/cache_helper.dart' as _i6;
import '../core/data/datasources/cache_helper_impl.dart' as _i7;
import 'app_module.dart' as _i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final appModule = _$AppModule();
  gh.lazySingleton<_i3.AppConfig>(() => _i3.AppConfig());
  gh.lazySingleton<_i4.Dio>(() => appModule.dio);
  await gh.factoryAsync<_i5.SharedPreferences>(() => appModule.prefs,
      preResolve: true);
  gh.singleton<_i6.CacheHelper>(
      _i7.CacheHelperImpl(get<_i5.SharedPreferences>()));
  return get;
}

class _$AppModule extends _i8.AppModule {}
