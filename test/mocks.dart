import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:mockito/annotations.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:weather_forecast/core/network_info.dart';
import 'package:weather_forecast/data/datasources/weather_data_local_datasource.dart';
import 'package:weather_forecast/data/datasources/weather_data_remote_datasource.dart';
import 'package:weather_forecast/domain/repositories/weather_repository.dart';

@GenerateMocks([
  WeatherRepository,
  WeatherDataRemoteDataSource,
  WeatherDataLocalDataSource,
  Connectivity,
  NetworkInfo,
  SharedPreferences
])
void main() {}
