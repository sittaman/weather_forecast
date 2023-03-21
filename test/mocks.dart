import 'package:mockito/annotations.dart';
import 'package:weather_forecast/data/datasources/weather_data_remote_datasource.dart';
import 'package:weather_forecast/domain/repositories/weather_repository.dart';

@GenerateMocks([
  WeatherRepository,
  WeatherDataRemoteDataSource,
])
void main() {}
