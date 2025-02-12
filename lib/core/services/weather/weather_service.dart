import 'package:weather_chat_frontend/app/logger.dart';
import 'package:weather_chat_frontend/core/constants/api_constants.dart';
import 'package:weather_chat_frontend/core/services/api_service.dart';
import 'package:weather_chat_frontend/models/api/api_response.dart';

class WeatherService {
  final ApiService _api;

  WeatherService(this._api);

  // Get Weather By City
  Future<ApiResponse?> getWeatherByCities(String city) async {
    final response =
        await _api.getRequest("${ApiConstants.weatherByCityEndPoint}$city");
    final apiResponse = ApiResponse.fromJson(response);

    if (response["success"] == true) {
      return apiResponse;
    } else {
      logger.e("Get Weather failed. Please try again.");
      return apiResponse;
    }
  }
}
