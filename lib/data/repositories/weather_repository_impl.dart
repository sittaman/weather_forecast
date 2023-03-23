import 'package:weather_forecast/core/network_info.dart';
import 'package:weather_forecast/data/datasources/weather_data_local_datasource.dart';
import 'package:weather_forecast/data/datasources/weather_data_remote_datasource.dart';
import 'package:weather_forecast/domain/entities/weather_data.dart';
import 'package:weather_forecast/domain/repositories/weather_repository.dart';

class WeatherRepositoryImpl implements WeatherRepository {
  WeatherRepositoryImpl(
      this.remoteDatasource, this.localDatasource, this.networkInfo);

  final WeatherDataRemoteDataSource remoteDatasource;
  final WeatherDataLocalDataSource localDatasource;
  final NetworkInfo networkInfo;

  @override
  Future<WeatherData> getCurrentWeather(double lat, double lon) async {
    if (await networkInfo.isConnected) {
      try {
        return await remoteDatasource.getCurrentWeather(lat, lon);
      } catch (e) {
        rethrow;
      }
    } else {
      try {
        return await localDatasource.getLastWeatherData();
      } catch (e) {
        rethrow;
      }
    }
  }
}
