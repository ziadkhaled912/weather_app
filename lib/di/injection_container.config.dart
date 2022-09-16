// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i8;

import '../core/app/app_config.dart' as _i3;
import '../core/data/datasources/cache_helper.dart' as _i12;
import '../core/data/datasources/cache_helper_impl.dart' as _i13;
import '../features/auth/core/data/data_sources/auth_remote_data_source.dart'
    as _i9;
import '../features/auth/core/data/data_sources/auth_remote_data_source_impl.dart'
    as _i10;
import '../features/auth/core/data/repositories/auth_repository_impl.dart'
    as _i19;
import '../features/auth/core/data/services/auth_services.dart' as _i11;
import '../features/auth/core/data/services/firestore_services.dart' as _i6;
import '../features/auth/core/domain/repositories/auth_repository.dart' as _i18;
import '../features/auth/core/domain/use_cases/auth_state_use_case.dart'
    as _i20;
import '../features/auth/core/domain/use_cases/logout_use_case.dart' as _i24;
import '../features/auth/core/persentation/cubit/auth_cubit.dart' as _i26;
import '../features/auth/login/domain/use_cases/login_use_case.dart' as _i23;
import '../features/auth/register/domain/use_cases/register_use_case.dart'
    as _i25;
import '../features/home/data/data_sources/home_remote_data_source.dart'
    as _i14;
import '../features/home/data/data_sources/home_remote_data_source_impl.dart'
    as _i15;
import '../features/home/data/repositories/home_repository_impl.dart' as _i17;
import '../features/home/data/services/home_services.dart' as _i7;
import '../features/home/domain/repositories/home_repository.dart' as _i16;
import '../features/home/domain/use_cases/current_weather_use_case.dart'
    as _i21;
import '../features/home/presentation/bloc/home_cubit.dart' as _i22;
import 'app_module.dart' as _i27; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final appModule = _$AppModule();
  gh.lazySingleton<_i3.AppConfig>(() => _i3.AppConfig());
  gh.lazySingleton<_i4.Dio>(() => appModule.dio);
  gh.lazySingleton<_i5.FirebaseAuth>(() => appModule.firebaseAuth);
  gh.lazySingleton<_i6.FirestoreServices>(() => _i6.FirestoreServices());
  gh.lazySingleton<_i7.HomeServices>(() => _i7.HomeServices(get<_i4.Dio>()));
  await gh.factoryAsync<_i8.SharedPreferences>(() => appModule.prefs,
      preResolve: true);
  gh.lazySingleton<_i9.AuthRemoteDataSource>(
      () => _i10.AuthRemoteDataSourceImpl(get<_i6.FirestoreServices>()));
  gh.lazySingleton<_i11.AuthServices>(
      () => _i11.AuthServicesImpl(get<_i5.FirebaseAuth>()));
  gh.singleton<_i12.CacheHelper>(
      _i13.CacheHelperImpl(get<_i8.SharedPreferences>()));
  gh.lazySingleton<_i14.HomeRemoteDataSource>(
      () => _i15.HomeRemoteDataSourceImpl(get<_i7.HomeServices>()));
  gh.lazySingleton<_i16.HomeRepository>(
      () => _i17.HomeRepositoryImpl(get<_i14.HomeRemoteDataSource>()));
  gh.lazySingleton<_i18.AuthRepository>(() => _i19.AuthRepositoryImpl(
      get<_i11.AuthServices>(), get<_i9.AuthRemoteDataSource>()));
  gh.lazySingleton<_i20.AuthStateUseCase>(
      () => _i20.AuthStateUseCase(get<_i18.AuthRepository>()));
  gh.lazySingleton<_i21.CurrentWeatherUseCase>(
      () => _i21.CurrentWeatherUseCase(get<_i16.HomeRepository>()));
  gh.factory<_i22.HomeCubit>(
      () => _i22.HomeCubit(get<_i21.CurrentWeatherUseCase>()));
  gh.lazySingleton<_i23.LoginUseCase>(
      () => _i23.LoginUseCase(get<_i18.AuthRepository>()));
  gh.lazySingleton<_i24.LogoutUseCase>(
      () => _i24.LogoutUseCase(get<_i18.AuthRepository>()));
  gh.lazySingleton<_i25.RegisterUseCase>(
      () => _i25.RegisterUseCase(get<_i18.AuthRepository>()));
  gh.factory<_i26.AuthCubit>(() => _i26.AuthCubit(
      get<_i23.LoginUseCase>(),
      get<_i25.RegisterUseCase>(),
      get<_i20.AuthStateUseCase>(),
      get<_i24.LogoutUseCase>()));
  return get;
}

class _$AppModule extends _i27.AppModule {}
