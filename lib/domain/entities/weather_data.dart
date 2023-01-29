import 'package:equatable/equatable.dart';

class WeatherData extends Equatable {
  final double? temp;
  final double? tempMin;
  final double? tempMax;
  final DateTime? timestamp;
  final String? locationName;

  const WeatherData({
    this.temp,
    this.tempMin,
    this.tempMax,
    this.timestamp,
    this.locationName,
  });

  @override
  List<Object?> get props => [temp, tempMin, tempMax, timestamp, locationName];
}
