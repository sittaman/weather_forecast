import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:weather_forecast/data/models/current_weather_model.dart';
import 'package:weather_forecast/domain/entities/weather_data.dart';

import '../../fixtures/weather_data_fixture.dart';

void main() {
  final model = WeatherDataFixture.entity;

  group('CurrentWeatherModel', () {
    test('should extend WeatherData', () async {
      expect(model, isA<WeatherData>());
    });

    test('fromJson should parse to a valid model', () async {
      final map = json.decode(WeatherDataFixture.json);
      final result = CurrentWeatherModel.fromJson(map);

      expect(result, model);
    });
  });
}
