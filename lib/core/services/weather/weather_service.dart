import 'package:weather_chat_frontend/app/logger.dart';
import 'package:weather_chat_frontend/core/constants/api_constants.dart';
import 'package:weather_chat_frontend/core/repository/db_helper.dart';
import 'package:weather_chat_frontend/core/services/api_service.dart';
import 'package:weather_chat_frontend/models/api/api_response.dart';
import 'package:weather_chat_frontend/models/weather/weather_response.dart';

class WeatherService {
  final ApiService _api;

  WeatherService(this._api);

  // Get Weather By City
  Future<ApiResponse?> getWeatherByCities(String city) async {
    final response =
        await _api.getRequest("${ApiConstants.weatherByCityEndPoint}$city");
    final apiResponse = ApiResponse.fromJson(response);
    if (response["success"] == true) {
      final weatherResponse = WeatherResponse.fromJson(apiResponse.data);
      final dbHelper = DatabaseHelper();
      await dbHelper.insertWeatherResponse(weatherResponse);
      return apiResponse;
    } else {
      logger.e("Get Weather failed. Please try again.");
      return apiResponse;
    }
  }

  // Get weekly Weather By City
  Future<ApiResponse?> getWeeklyWeather(String lat, String long) async {
    final response = await _api
        .getRequest("${ApiConstants.weeklyWeatherEndPoint}lat=$lat&long=$long");
    final apiResponse = ApiResponse.fromJson(response);

    if (response["success"] == true) {
      return apiResponse;
    } else {
      logger.e("Get Weekly Weather failed. Please try again.");
      return apiResponse;
    }
  }

  // Get hourly Weather By City
  Future<ApiResponse?> getHourlyWeather(String lat, String long) async {
    final response = await _api
        .getRequest("${ApiConstants.hourlyWeatherEndPoint}lat=$lat&long=$long");
    final apiResponse = ApiResponse.fromJson(response);

    if (response["success"] == true) {
      return apiResponse;
    } else {
      logger.e("Get Hourly Weather failed. Please try again.");
      return apiResponse;
    }
  }
}
