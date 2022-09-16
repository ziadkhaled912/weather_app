import 'package:weather_app/features/home/data/models/weather_api_response.dart';
import 'package:weather_app/features/home/domain/entities/weather.dart';
import 'package:weather_app/core/extensions/celsius.dart';

extension WeatherApiResponseMapper on WeatherApiResponse {
  Weather get mapper => Weather(
        location: name ?? "",
        temp: main?.temp?.toCelsius() ?? 0,
        feelsLike: main?.feelsLike?.toCelsius() ?? 0,
        windSpeed: wind?.speed ?? 0,
        humidity: main?.humidity ?? 0,
      );
}
