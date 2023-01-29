import 'package:weather_forecast/domain/entities/weather_data.dart';

abstract class WeatherRepository {
  Future<WeatherData> getCurrentWeather(double latitude, double longitude);
}
