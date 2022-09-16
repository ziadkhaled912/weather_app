import 'package:equatable/equatable.dart';

class Weather extends Equatable {
  final String location;
  final double temp;
  final double feelsLike;
  final double windSpeed;
  final int humidity;

  const Weather({
    required this.location,
    required this.temp,
    required this.feelsLike,
    required this.windSpeed,
    required this.humidity,
  });

  @override
  List<Object?> get props => [location, temp, feelsLike, windSpeed, humidity];
}

class WeatherInfo extends Equatable {
  final String name;
  final String description;

  const WeatherInfo({
    required this.name,
    required this.description,
  });

  @override
  List<Object?> get props => [name, description];
}
