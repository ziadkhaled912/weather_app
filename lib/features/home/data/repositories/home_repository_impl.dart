import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app/core/constants/constants.dart';
import 'package:weather_app/core/data/error/exceptions/application_exception.dart';
import 'package:weather_app/core/data/error/failures/failure.dart';
import 'package:weather_app/features/home/data/data_sources/home_remote_data_source.dart';
import 'package:weather_app/features/home/data/mappers/weather_api_response_mapper.dart';
import 'package:weather_app/features/home/domain/entities/weather.dart';
import 'package:weather_app/features/home/domain/repositories/home_repository.dart';

@LazySingleton(as: HomeRepository)
class HomeRepositoryImpl implements HomeRepository {
  final HomeRemoteDataSource _homeRemoteDataSource;

  HomeRepositoryImpl(this._homeRemoteDataSource);

  @override
  Future<Either<Failure, Weather>> getCurrentWeather(double lat, double lon) async {
    try {
      final result = await _homeRemoteDataSource.getCurrentWeather(lon, lat, Constants.apiKey);
      final weather = result.mapper;
      return Right(weather);
    } on ApplicationException catch(e) {
      return(Left(dioExceptionsDecoder(e, () { })));
    }
  }
}
