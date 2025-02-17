import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_chat_frontend/core/constants/api_constants.dart';
import 'package:weather_chat_frontend/core/storage/secure_storage.dart';
import 'package:weather_chat_frontend/models/api/api_response.dart';

class ApiService {
  // GET
  Future<Map<String, dynamic>> getRequest(String endpoint) async {
    String? accessToken = await SecureStorage.getAccessToken();
    final response = await http.get(
      Uri.parse("${ApiConstants.baseUrl}$endpoint"),
      headers: {
        "Content-type": "application/json",
        if (accessToken != null) "Authorization": "Bearer $accessToken",
      },
    );

    if (response.statusCode == 401) {
      bool refreshed = await refreshAccessToken();
      if (refreshed) {
        return getRequest(endpoint);
      }
    }

    try {
      final dd = jsonDecode(response.body);
      return jsonDecode(response.body) as Map<String, dynamic>;
    } catch (e) {
      return {
        "success": false,
        "message": "Invalid JSON response",
        "error": e.toString()
      };
    }
  }

  // POST
  Future<Map<String, dynamic>> postRequest(
      String endpoint, Map<String, dynamic> data) async {
    String? accessToken = await SecureStorage.getAccessToken();
    final response = await http.post(
      Uri.parse("${ApiConstants.baseUrl}$endpoint"),
      headers: {
        "Content-type": "application/json",
        if (accessToken != null) "Authorization": "Bearer $accessToken"
      },
      body: jsonEncode(data),
    );

    if (response.statusCode == 401) {
      bool refreshed = await refreshAccessToken();
      if (refreshed) {
        return postRequest(endpoint, data);
      }
    }

    try {
      return jsonDecode(response.body) as Map<String, dynamic>;
    } catch (e) {
      return {
        "success": false,
        "message": "Invalid JSON response",
        "error": e.toString()
      };
    }
  }

  // REFRESH
  Future<bool> refreshAccessToken() async {
    String? refreshToken = await SecureStorage.getRefreshToken();

    final response = await http.post(
      Uri.parse("${ApiConstants.baseUrl}${ApiConstants.refreshEndpoint}"),
      headers: {
        "Content-type": "application/json",
      },
      body: jsonEncode({"refreshToken": refreshToken}),
    );

    if (response.statusCode == 200) {
      final decodedData = jsonDecode(response.body);

      final apiResponse = ApiResponse.fromJson(decodedData);
      await SecureStorage.saveTokens(
          apiResponse.data["accessToken"], refreshToken!);
      return true;
    }
    return false;
  }
}
