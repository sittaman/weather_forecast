import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:weather_forecast/core/network_info.dart';

import '../mocks.mocks.dart';

void main() {
  MockConnectivity mockConnectivity = MockConnectivity();
  NetworkInfo networkInfo = NetworkInfoImpl(mockConnectivity);

  test('isConnected', () async {
    when(mockConnectivity.checkConnectivity())
        .thenAnswer((_) async => ConnectivityResult.mobile);

    final result = await networkInfo.isConnected;

    verify(mockConnectivity.checkConnectivity());
    expect(result, true);
  });
}
