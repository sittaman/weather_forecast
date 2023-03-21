import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:weather_forecast/app_config.dart';
import 'package:weather_forecast/data/datasources/weather_data_remote_datasource.dart';

import '../../fixtures/weather_data_fixture.dart';

void main() {
  late WeatherDataRemoteDataSourceImpl datasource;
  late Dio dio;
  late DioAdapter dioAdapter;

  const double lat = -23.6573395;
  const double lon = -46.5322504;

  setUp(() {
    dio = Dio();
    dioAdapter = DioAdapter(dio: dio);
    dio.httpClientAdapter = dioAdapter;
    datasource = WeatherDataRemoteDataSourceImpl(dio);
  });

  test('GetWeatherData', () async {
    dioAdapter.onGet(
      '$openWeatherApiEndpoint/weather',
      (server) => server.reply(200, WeatherDataFixture.json),
    );

    final result = await datasource.getCurrentWeather(lat, lon);

    expect(result, WeatherDataFixture.entity);
  });
}
