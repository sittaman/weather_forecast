import 'package:mockito/annotations.dart';
import 'package:weather_forecast/data/datasources/weather_data_datasource.dart';
import 'package:weather_forecast/domain/repositories/weather_repository.dart';

@GenerateMocks([
  WeatherRepository,
  WeatherDataDataSource,
])
void main() {}
