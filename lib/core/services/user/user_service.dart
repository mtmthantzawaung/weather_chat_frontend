import 'package:weather_chat_frontend/app/logger.dart';
import 'package:weather_chat_frontend/core/constants/api_constants.dart';
import 'package:weather_chat_frontend/core/services/api_service.dart';
import 'package:weather_chat_frontend/models/api/api_response.dart';

class UserService {
  final ApiService _api;

  UserService(this._api);

  // Get All User
  Future<ApiResponse?> getAllUser() async {
    try {
      final response = await _api.getRequest(ApiConstants.getAllUserEndpoint);
      final apiResponse = ApiResponse.fromJson(response);

      if (response["success"] == true) {
        return apiResponse;
      } else {
        logger.e("Get User failed. Please try again.");
        return apiResponse;
      }
    } catch (e) {
      logger.e("Get User Error: $e");
      throw Exception("Get User Error: $e");
    }
  }
}
