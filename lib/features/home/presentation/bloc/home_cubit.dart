import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app/core/data/error/failures/client_failure.dart';
import 'package:weather_app/core/data/error/failures/failure.dart';
import 'package:weather_app/core/data/error/failures/server_failure.dart';
import 'package:weather_app/features/home/domain/use_cases/current_weather_use_case.dart';

import 'home_state.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  final CurrentWeatherUseCase _currentWeatherUseCase;

  HomeCubit(this._currentWeatherUseCase) : super(const HomeState.initial());

  Future<void> getCurrentWeather(double lon, double lat) async {
    emit(const HomeState.loading());
    final result = await _currentWeatherUseCase(CurrentWeatherParams(lon, lat));
    result.fold(
      (failure) => _resolveFailure(failure),
      (weather) => emit(HomeState.weatherSuccess(weather: weather)),
    );
  }

  void _resolveFailure(Failure failure) {
    if (failure is ServerFailure) {
      emit(HomeState.error(message: failure.message));
    } else if(failure is ClientFailure) {
      emit(HomeState.error(message: failure.message));
    } else {
      emit(const HomeState.error(message: 'Unknown error'));
    }
  }
}
