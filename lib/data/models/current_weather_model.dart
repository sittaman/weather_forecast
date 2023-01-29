import 'package:weather_forecast/domain/entities/weather_data.dart';

class CurrentWeatherModel extends WeatherData {
  const CurrentWeatherModel({
    double? temp,
    double? tempMin,
    double? tempMax,
    DateTime? timestamp,
    String? locationName,
  }) : super(
          temp: temp,
          tempMin: tempMin,
          tempMax: tempMax,
          timestamp: timestamp,
          locationName: locationName,
        );

  factory CurrentWeatherModel.fromJson(Map<String, dynamic> json) =>
      CurrentWeatherModel(
        temp: json['main']['temp'],
        tempMin: json['main']['temp_min'],
        tempMax: json['main']['temp_max'],
        timestamp: DateTime.fromMillisecondsSinceEpoch(json['dt'] * 1000),
        locationName: json['name'],
      );
}
