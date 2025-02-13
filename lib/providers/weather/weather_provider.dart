import 'package:flutter/foundation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:weather_chat_frontend/app/logger.dart';
import 'package:weather_chat_frontend/core/services/api_service.dart';
import 'package:weather_chat_frontend/core/services/weather/weather_service.dart';
import 'package:weather_chat_frontend/models/api/api_response.dart';
import 'package:weather_chat_frontend/models/hourly_weather.dart/hourly_weather.dart';
import 'package:weather_chat_frontend/models/weekly_weather/weekly_weather.dart';
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

  // Future<void> getHourlyWeather(String lat, String long) async {
  //   state = state.copyWith(isLoading: true, errorMessage: null);
  //   try {
  //     final response = await _weatherService.getHourlyWeather(lat, long);
  //     if (response == null) throw ("Get Hourly Weather failed.");

  //     if (response.success) {
  //       final weatherResponse = HourlyWeather.fromJson(response.data);
  //       state =
  //           state.copyWith(weatherResponse: weatherResponse, isLoading: false);
  //       logger.f("✅ Get Weather Successful: ${response.message}");
  //     } else {
  //       logger.e("❌ Get Weather Failed : ${response.message}");
  //       state =
  //           state.copyWith(errorMessage: response.message, isLoading: false);
  //     }
  //   } on Exception catch (e) {
  //     state = state.copyWith(
  //         errorMessage: "An error occurred. Try again.", isLoading: false);
  //     logger.e('❌ Get Weather error: $e');
  //   }
  // }
}

// Weekly Weather
final weeklyWeatherProvider =
    FutureProvider.autoDispose.family<WeeklyWeather?, Position>(
  (ref, Position position) async {
    try {
      final weatherservice = WeatherService(ApiService());
      final response = await weatherservice.getWeeklyWeather(
          position.latitude.toString(), position.longitude.toString());
      if (response == null) throw ("Get Weekly Weather failed.");

      if (response.success) {
        final weatherResponse = WeeklyWeather.fromJson(response.data);
        logger.f("✅ Get Weekly Weather Successful: ${response.message}");
        return weatherResponse;
      } else {
        logger.e("❌ Get Weather Failed : ${response.message}");
        return null;
      }
    } on Exception catch (e) {
      logger.e('❌ Get Weekly Weather error: $e');
      return null;
    }
  },
);

// Hourly Weather
final hourlyWeatherProvider =
    FutureProvider.autoDispose.family<HourlyWeather?, Position>(
  (ref, Position position) async {
    try {
      final weatherservice = WeatherService(ApiService());
      final response = await weatherservice.getHourlyWeather(
          position.latitude.toString(), position.longitude.toString());
      if (response == null) throw ("Get Hourly Weather failed.");

      if (response.success) {
        final weatherResponse = HourlyWeather.fromJson(response.data);
        logger.f("✅ Get Hourly Weather Successful: ${response.message}");
        return weatherResponse;
      } else {
        logger.e("❌ Get Weather Failed : ${response.message}");
        return null;
      }
    } on Exception catch (e) {
      logger.e('❌ Get Hourly Weather error: $e');
      return null;
    }
  },
);
