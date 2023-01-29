import 'package:weather_forecast/data/models/current_weather_model.dart';

class WeatherDataFixture {
  static final entity = CurrentWeatherModel(
    temp: 21.47,
    tempMax: 23.7,
    tempMin: 20.76,
    timestamp: DateTime.fromMillisecondsSinceEpoch(1671911572 * 1000),
    locationName: 'Santo André',
  );

  static const json = '''
  {
    "coord": {
        "lon": -46.5323,
        "lat": -23.6573
    },
    "weather": [
        {
            "id": 211,
            "main": "Thunderstorm",
            "description": "thunderstorm",
            "icon": "11d"
        }
    ],
    "base": "stations",
    "main": {
        "temp": 21.47,
        "feels_like": 21.76,
        "temp_min": 20.76,
        "temp_max": 23.7,
        "pressure": 1016,
        "humidity": 80
    },
    "visibility": 10000,
    "wind": {
        "speed": 7.2,
        "deg": 180
    },
    "clouds": {
        "all": 75
    },
    "dt": 1671911572,
    "sys": {
        "type": 2,
        "id": 2033898,
        "country": "BR",
        "sunrise": 1671869870,
        "sunset": 1671918804
    },
    "timezone": -10800,
    "id": 3449701,
    "name": "Santo André",
    "cod": 200
  }
''';
}
