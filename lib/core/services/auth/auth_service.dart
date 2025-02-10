import 'dart:convert';
import 'package:weather_chat_frontend/app/logger.dart';
import 'package:weather_chat_frontend/core/constants/api_constants.dart';
import 'package:weather_chat_frontend/core/services/api_service.dart';
import 'package:weather_chat_frontend/core/storage/secure_storage.dart';
import 'package:weather_chat_frontend/models/request/login/login_request.dart';
import 'package:weather_chat_frontend/models/request/register/register_request.dart';
import 'package:weather_chat_frontend/models/api/api_response.dart';
import 'package:weather_chat_frontend/models/user/User.dart';

class AuthService {
  final ApiService _api;

  AuthService(this._api);

  // Loign
  Future<ApiResponse?> login(LoginRequest request) async {
    try {
      final response =
          await _api.postRequest(ApiConstants.loginEndpoint, request.toJson());
      final apiResponse = ApiResponse.fromJson(response);

      if (response["success"] == true) {
        final accessToken = apiResponse.data['accessToken'];
        final refreshToken = apiResponse.data['refreshToken'];
        final user = User.fromJson(apiResponse.data['user']);

        // Store tokens & user securely
        await SecureStorage.saveTokens(accessToken, refreshToken);
        await SecureStorage.saveUser(user);

        return apiResponse;
      } else {
        logger.e("Login failed. Please try again.");
        return apiResponse;
      }
    } catch (e) {
      logger.e("Login Error: $e");
      throw Exception(" Login Error: $e");
    }
  }

  // Register
  Future<ApiResponse?> register(RegisterRequest request) async {
    try {
      final response = await _api.postRequest(
          ApiConstants.registerEndpoint, request.toJson());
      final apiResponse = ApiResponse.fromJson(response);

      if (response["success"] == false) {
        return apiResponse;
      } else {
        logger.e("Registration failed. Please try again.");
        return apiResponse;
      }
    } catch (e) {
      logger.e("Register Error: $e");
      throw Exception("Registration failed. Please try again.");
    }
  }

  // Get current user
  Future<User?> getCurrentUser() async {
    final userJson = await SecureStorage.getUser();

    if (userJson != null) {
      return User.fromJson(jsonDecode(userJson));
    }
    return null;
  }
}
