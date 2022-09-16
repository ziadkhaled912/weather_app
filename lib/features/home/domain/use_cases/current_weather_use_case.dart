import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app/core/data/error/failures/failure.dart';
import 'package:weather_app/core/domain/usecases/usecase.dart';
import 'package:weather_app/features/home/domain/entities/weather.dart';
import 'package:weather_app/features/home/domain/repositories/home_repository.dart';

@lazySingleton
class CurrentWeatherUseCase extends UseCase<Future<Either<Failure, Weather>>, CurrentWeatherParams> {
  final HomeRepository _homeRepository;

  CurrentWeatherUseCase(this._homeRepository);

  @override
  Future<Either<Failure, Weather>> call(CurrentWeatherParams params) async =>
      _homeRepository.getCurrentWeather(params.lat, params.lon);
}

class CurrentWeatherParams extends Equatable {
  final double lon;
  final double lat;

  const CurrentWeatherParams(this.lon, this.lat);

  @override
  List<Object?> get props => [lon, lat];
}