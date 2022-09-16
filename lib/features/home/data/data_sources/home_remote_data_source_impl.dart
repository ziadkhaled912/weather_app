import 'package:injectable/injectable.dart';
import 'package:weather_app/core/data/datasources/utils.dart';
import 'package:weather_app/features/home/data/data_sources/home_remote_data_source.dart';
import 'package:weather_app/features/home/data/models/weather_api_response.dart';
import 'package:weather_app/features/home/data/services/home_services.dart';

@LazySingleton(as: HomeRemoteDataSource)
class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final HomeServices _homeServices;

  HomeRemoteDataSourceImpl(this._homeServices);

  @override
  Future<WeatherApiResponse> getCurrentWeather(double lon, double lat, String apiKey) async =>
      await resolveOrThrow(() => _homeServices.getCurrentWeather(lat, lon, apiKey));
}