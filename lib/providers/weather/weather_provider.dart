import 'package:flutter/foundation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:weather_chat_frontend/app/logger.dart';
import 'package:weather_chat_frontend/core/services/api_service.dart';
import 'package:weather_chat_frontend/core/services/weather/weather_service.dart';
import 'package:weather_chat_frontend/models/weather/weather_response.dart';
import 'package:weather_chat_frontend/providers/weather/weather_state.dart';
import 'package:weather_chat_frontend/utils/helpers/helper_function.dart';

final currentLocationProvider = FutureProvider<String?>((ref) async {
  try {
    Position position = await HelperFunction.getCurrentLocation();
    return await HelperFunction.getCityFromCoordinates(
        position.latitude, position.longitude);
  } catch (e) {
    debugPrint("Error getting current location: $e");
    return null;
  }
});

final weatherStateProvider =
    StateNotifierProvider<WeatherNotifier, WeatherState>((ref) {
  return WeatherNotifier(WeatherService(ApiService()));
});

class WeatherNotifier extends StateNotifier<WeatherState> {
  final WeatherService _weatherService;
  WeatherNotifier(this._weatherService) : super(WeatherState()) {
    // _loadWeather();
  }

  Future<void> _loadWeather() async {
    Position position = await HelperFunction.getCurrentLocation();
    final userCity = await HelperFunction.getCityFromCoordinates(
        position.latitude, position.longitude);
    if (userCity != null) {
      await getWeatherByCity(userCity);
    }
  }

  Future<void> getWeatherByCity(String city) async {
    state = state.copyWith(isLoading: true, errorMessage: null);
    try {
      final response = await _weatherService.getWeatherByCities(city);
      if (response == null) throw ("Get Weather failed.");

      if (response.success) {
        final weatherResponse = WeatherResponse.fromJson(response.data);
        state =
            state.copyWith(weatherResponse: weatherResponse, isLoading: false);
        logger.f("✅ Get Weather Successful: ${response.message}");
      } else {
        logger.e("❌ Get Weather Failed : ${response.message}");
        state =
            state.copyWith(errorMessage: response.message, isLoading: false);
      }
    } on Exception catch (e) {
      state = state.copyWith(
          errorMessage: "An error occurred. Try again.", isLoading: false);
      logger.e('❌ Get Weather error: $e');
    }
  }
}

// Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Text(
//                   'My Location',
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 30,
//                     color: Colors.white,
//                   ),
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Text(
//                   'Yangon',
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 15,
//                     color: Colors.white,
//                   ),
//                 ),
//                 Text(
//                   '32',
//                   style: TextStyle(
//                     fontWeight: FontWeight.w300,
//                     fontSize: 95,
//                     color: Colors.white,
//                   ),
//                 ),
//                 Text(
//                   'Sunny',
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 15,
//                     color: Colors.white,
//                   ),
//                 ),
//               ],
//             )
//           ],
//         ),
//       ),
