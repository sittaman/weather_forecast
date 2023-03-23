import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:weather_forecast/data/datasources/weather_data_local_datasource.dart';

import '../../fixtures/weather_data_fixture.dart';
import '../../mocks.mocks.dart';

void main() {
  late WeatherDataLocalDataSourceImpl datasource;
  MockSharedPreferences sharedPreferences = MockSharedPreferences();

  setUp(() {
    datasource = WeatherDataLocalDataSourceImpl(sharedPreferences);
  });

  test('GetLastWeatherData', () async {
    when(sharedPreferences.getString(any))
        .thenAnswer((_) => WeatherDataFixture.json);

    final result = await datasource.getLastWeatherData();

    expect(result, WeatherDataFixture.entity);
  });
}
