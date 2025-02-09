import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_chat_frontend/core/constants/api_constants.dart';
import 'package:weather_chat_frontend/core/storage/secure_storage.dart';

class ApiService {
  Future<http.Response> getRequest(String endpoint) async {
    String? accessToken = await SecureStorage.getAccessToken();
    final response = await http.get(
      Uri.parse("${ApiConstants.baseUrl}$endpoint"),
      headers: {
        "Content-type": "application/json",
        if (accessToken != null) "Authorization": "Bearer $accessToken",
      },
    );

    // Handle token expiration (401 error)
    if (response.statusCode == 401) {
      bool refreshed = await refreshAccessToken();
      if (refreshed) {
        return getRequest(endpoint); // Retry the request
      }
    }

    return response;
  }

  Future<http.Response> postRequest(
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
  
    // Handle token expiration (401 error)
    if (response.statusCode == 401) {
      bool refreshed = await refreshAccessToken();
      if (refreshed) {
        return postRequest(endpoint, data); // Retry the request
      }
    }

    return response;
  }

  Future<bool> refreshAccessToken() async {
    String? refreshToken = await SecureStorage.getRefreshToken();

    final response = await http.post(
        Uri.parse("${ApiConstants.baseUrl}${ApiConstants.refreshEndpoint}"),
        headers: {
          "Content-type": "application/json",
        },
        body: {
          jsonEncode({"refreshToken": refreshToken})
        });

    if (response.statusCode == 200) {
      final newAccessToken = jsonDecode(response.body)["accessToken"];
      await SecureStorage.saveTokens(newAccessToken, refreshToken!);
      return true;
    }
    return false;
  }
}
