import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/features/home/domain/entities/weather.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = Initial;

  const factory HomeState.loading() = HomeLoading;

  const factory HomeState.weatherSuccess({required Weather weather}) = WeatherSuccess;

  const factory HomeState.error({required String message}) = Error;

}
