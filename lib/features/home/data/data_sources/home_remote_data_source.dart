import 'package:weather_app/features/home/data/models/weather_api_response.dart';

abstract class HomeRemoteDataSource {
  Future<WeatherApiResponse> getCurrentWeather(double lon, double lat, String apiKey);
}