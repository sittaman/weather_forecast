import 'package:weather_forecast/domain/entities/weather_data.dart';
import 'package:weather_forecast/domain/repositories/weather_repository.dart';

class GetCurrentWeather {
  GetCurrentWeather(this.repository);

  final WeatherRepository repository;

  Future<WeatherData> call(double latitude, double longitude) async =>
      await repository.getCurrentWeather(latitude, longitude);
}
