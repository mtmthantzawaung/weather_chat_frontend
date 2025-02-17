import 'package:weather_chat_frontend/app/logger.dart';
import 'package:weather_chat_frontend/core/constants/api_constants.dart';
import 'package:weather_chat_frontend/core/services/api_service.dart';
import 'package:weather_chat_frontend/models/api/api_response.dart';

class ChatService {
  final ApiService _api;

  ChatService(this._api);

  Future<ApiResponse?> fetchMessage(String userId, String receiverId) async {
    try {
      final response = await _api
          .getRequest("${ApiConstants.getMessages}/$userId/$receiverId");
      final apiResponse = ApiResponse.fromJson(response);

      if (response["success"] == true) {
        return apiResponse;
      } else {
        logger.e("Get message failed. Please try again.");
        return apiResponse;
      }
    } on Exception catch (e) {
      logger.e("Get Message Error: $e");
      throw Exception(" Get Message Error: $e");
    }
  }

  Future<ApiResponse?> fetchRecentMessage(String userId) async {
    try {
      final response =
          await _api.getRequest("${ApiConstants.getRecentMessages}/$userId");
      final apiResponse = ApiResponse.fromJson(response);

      if (response["success"] == true) {
        return apiResponse;
      } else {
        logger.e("Get message failed. Please try again.");
        return apiResponse;
      }
    } on Exception catch (e) {
      logger.e("Get Message Error: $e");
      throw Exception(" Get Message Error: $e");
    }
  }

  Future<ApiResponse?> sendMessage(
      String senderId, String receiverId, String message) async {
    try {
      final request = {
        "senderId": senderId,
        "receiverId": receiverId,
        "message": message
      };
      final response =
          await _api.postRequest(ApiConstants.sendMessages, request);
      final apiResponse = ApiResponse.fromJson(response);

      if (response["success"] == true) {
        return apiResponse;
      } else {
        logger.e("Get message failed. Please try again.");
        return apiResponse;
      }
    } on Exception catch (e) {
      logger.e("Get Message Error: $e");
      throw Exception(" Get Message Error: $e");
    }
  }
}
