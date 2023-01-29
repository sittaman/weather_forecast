import 'package:weather_forecast/data/datasources/weather_data_datasource.dart';
import 'package:weather_forecast/domain/entities/weather_data.dart';
import 'package:weather_forecast/domain/repositories/weather_repository.dart';

class WeatherRepositoryImpl implements WeatherRepository {
  WeatherRepositoryImpl({required this.datasource});

  final WeatherDataDataSource datasource;

  @override
  Future<WeatherData> getCurrentWeather(double lat, double lon) async {
    try {
      return await datasource.getCurrentWeather(lat, lon);
    } catch (e) {
      rethrow;
    }
  }
}
