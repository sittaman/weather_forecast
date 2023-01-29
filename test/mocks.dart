import 'package:mockito/mockito.dart';
import 'package:weather_forecast/data/datasources/weather_data_datasource.dart';
import 'package:weather_forecast/domain/repositories/weather_repository.dart';

class MockWeatherRepository extends Mock implements WeatherRepository {}

class MockWeatherDataDataSource extends Mock implements WeatherDataDataSource {}
