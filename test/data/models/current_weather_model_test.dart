import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:weather_forecast/data/models/current_weather_model.dart';
import 'package:weather_forecast/domain/entities/current_weather.dart';

import '../../fixtures/current_weather_fixture.dart';

void main() {
  final model = CurrentWheaterFixture.entity;

  group('CurrentWeatherModel', () {
    test('should extend CurrentWeather', () async {
      expect(model, isA<CurrentWeather>());
    });

    test('fromJson should parse to a valid model', () async {
      final map = json.decode(CurrentWheaterFixture.json);
      final result = CurrentWeatherModel.fromJson(map);

      expect(result, model);
    });
  });
}
