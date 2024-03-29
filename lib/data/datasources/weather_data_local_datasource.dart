import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:weather_forecast/app_config.dart';
import 'package:weather_forecast/data/models/current_weather_model.dart';
import 'package:weather_forecast/domain/entities/weather_data.dart';

abstract class WeatherDataLocalDataSource {
  Future<WeatherData> getLastWeatherData(double lat, double lon);
}

class WeatherDataLocalDataSourceImpl implements WeatherDataLocalDataSource {
  WeatherDataLocalDataSourceImpl(this.sharedPreferences);

  final SharedPreferences sharedPreferences;

  @override
  Future<WeatherData> getLastWeatherData(double lat, double lon) async {
    try {
      final r = sharedPreferences.getString('cached_weather_data');
      if (r.isEmpty) {
        throw Exception();
      }

      return CurrentWeatherModel.fromJson(
          json.decode(r) as Map<String, dynamic>);
    } catch (e) {
      rethrow;
    }
  }
}
