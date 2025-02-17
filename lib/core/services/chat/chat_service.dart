import 'package:weather_chat_frontend/core/constants/api_constants.dart';
import 'package:weather_chat_frontend/core/services/api_service.dart';
import 'package:weather_chat_frontend/models/api/api_response.dart';

class ChatService {
  final ApiService _api;

  ChatService(this._api);

  Future<ApiResponse?> fetchMessage() async {
    final response = await _api.getRequest(ApiConstants.getAllMessages);
  }
}
