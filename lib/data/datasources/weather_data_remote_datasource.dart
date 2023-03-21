import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:weather_forecast/app_config.dart';
import 'package:weather_forecast/data/models/current_weather_model.dart';
import 'package:weather_forecast/domain/entities/weather_data.dart';

abstract class WeatherDataRemoteDataSource {
  Future<WeatherData> getCurrentWeather(double lat, double lon);
}

class WeatherDataRemoteDataSourceImpl implements WeatherDataRemoteDataSource {
  WeatherDataRemoteDataSourceImpl(this.client);

  final Dio client;

  @override
  Future<WeatherData> getCurrentWeather(double lat, double lon) async {
    try {
      final r = await client.get(
        '$openWeatherApiEndpoint/weather',
        queryParameters: {
          'lat': lat,
          'lon': lon,
          'units': 'metric',
          'appid': openWeatherApiKey,
        },
      );

      return CurrentWeatherModel.fromJson(
          json.decode(r.data) as Map<String, dynamic>);
    } catch (e) {
      rethrow;
    }
  }
}
