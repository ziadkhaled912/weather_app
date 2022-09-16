import 'package:dartz/dartz.dart';
import 'package:weather_app/core/data/error/failures/failure.dart';
import 'package:weather_app/features/home/domain/entities/weather.dart';

abstract class HomeRepository {
  Future<Either<Failure, Weather>> getCurrentWeather(double lat, double lon);
}