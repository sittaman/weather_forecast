import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:weather_forecast/domain/usecases/get_current_weather.dart';

import '../../fixtures/weather_data_fixture.dart';
import '../../mocks.mocks.dart';

void main() {
  late MockWeatherRepository weatherRepository;
  late GetCurrentWeather usecase;

  const double lat = -23.6573395;
  const double lon = -46.5322504;

  setUp(() {
    weatherRepository = MockWeatherRepository();
    usecase = GetCurrentWeather(weatherRepository);
  });

  test('weatherRepository.getCurrentWeather should return WeatherData',
      () async {
    when(weatherRepository.getCurrentWeather(lat, lon))
        .thenAnswer((_) async => WeatherDataFixture.entity);

    final weather = await usecase(lat, lon);

    expect(WeatherDataFixture.entity, weather);
    verify(weatherRepository.getCurrentWeather(lat, lon));
    verifyNoMoreInteractions(weatherRepository);
  });
}
