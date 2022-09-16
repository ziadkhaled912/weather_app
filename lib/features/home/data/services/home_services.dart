import 'dart:io';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:weather_app/core/data/datasources/endpoints.dart';
import 'package:weather_app/features/home/data/models/weather_api_response.dart';

part 'home_services.g.dart';

@lazySingleton
@RestApi()
abstract class HomeServices {
  @factoryMethod
  factory HomeServices(Dio dio) = _HomeServices;

  @GET(EndPoints.currentWeather)
  Future<WeatherApiResponse> getCurrentWeather(
    @Query("lat") double lat,
    @Query("lon") double lon,
    @Query("appid") String apiKey,
  );
}
