import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:weather_chat_frontend/core/constants/api_constants.dart';
import 'package:weather_chat_frontend/core/services/api_service.dart';
import 'package:weather_chat_frontend/core/storage/secure_storage.dart';
import 'package:weather_chat_frontend/models/request/login/login_request.dart';
import 'package:weather_chat_frontend/models/request/register/register_request.dart';
import 'package:weather_chat_frontend/models/response/login/login_response.dart';
import 'package:weather_chat_frontend/models/user/User.dart';

class AuthService {
  final ApiService _api;

  AuthService(this._api);

  // Loign
  Future<LoginResponse?> login(LoginRequest request) async {
    try {
      final response =
          await _api.postRequest(ApiConstants.loginEndpoint, request.toJson());
      final responseData = jsonDecode(response.body);

      if (responseData["success"] == true) {
        final transformedJson = Map<String, dynamic>.from(responseData)
          ..addAll({
            'accessToken': responseData['data']['accessToken'],
            'refreshToken': responseData['data']['refreshToken'],
            'user': responseData['data']['user'],
          });
        final loginResponse = LoginResponse.fromJson(transformedJson);

        // Store tokens & user securely
        await SecureStorage.saveTokens(
            loginResponse.accessToken!, loginResponse.refreshToken!);
        await SecureStorage.saveUser(loginResponse.user!);

        return loginResponse;
      } else {
        throw Exception(
            responseData["message"] ?? "Login failed. Please try again.");
      }
    } catch (e) {
      debugPrint("Login Error: $e");
      return null;
    }
  }

  // Register
  Future<LoginResponse?> register(RegisterRequest request) async {
    try {
      final response = await _api.postRequest(
          ApiConstants.registerEndpoint, request.toJson());
      final responseData = jsonDecode(response.body);

      if (responseData["success"] == true) {
        final transformedJson = Map<String, dynamic>.from(responseData)
          ..addAll({
            'accessToken': responseData['data']['accessToken'],
            'refreshToken': responseData['data']['refreshToken'],
            'user': responseData['data']['user'],
          });
        final loginResponse = LoginResponse.fromJson(transformedJson);

        // Store tokens & user securely
        await SecureStorage.saveTokens(
            loginResponse.accessToken!, loginResponse.refreshToken!);
        await SecureStorage.saveUser(loginResponse.user!);

        return loginResponse;
      } else {
        throw Exception(responseData["message"] ??
            "Registration failed. Please try again.");
      }
    } catch (e) {
      debugPrint("Register Error: $e");
      return null;
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
