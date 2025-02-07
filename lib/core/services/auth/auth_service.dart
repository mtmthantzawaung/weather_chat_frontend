import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:weather_chat_frontend/core/constants/api_constants.dart';
import 'package:weather_chat_frontend/core/services/api_service.dart';
import 'package:weather_chat_frontend/core/storage/secure_storage.dart';

class AuthService {
  final _api = ApiService();

  // Loign
  Future<Map<String, dynamic>> login(String email, String password) async {
    try {
      final data = {
        "email": email,
        "password": password,
      };
      final response = await _api.postRequest(ApiConstants.loginEndpoint, data);

      if (response.statusCode == 200) {
        final responseData = jsonDecode(response.body);
        final accessToken = responseData["accessToken"];
        final refreshToken = responseData["refreshToken"];

        // Store tokens securely
        await SecureStorage.saveTokens(accessToken, refreshToken);

        return responseData;
      } else {
        final responseBody = jsonDecode(response.body);
        throw Exception(
            responseBody["message"] ?? "Login failed. Please try again.");
      }
    } catch (e) {
      debugPrint("Login Error: $e");
      rethrow;
    }
  }

  // Register
  Future<Map<String, dynamic>> register(
      String email, String password, String username, int age) async {
    try {
      final data = {
        "email": email,
        "password": password,
        "username": username,
        "age": age,
      };
      final response =
          await _api.postRequest(ApiConstants.registerEndpoint, data);

      if (response.statusCode == 200) {
        final responseData = jsonDecode(response.body);
        return responseData;
      } else {
        final responseBody = jsonDecode(response.body);
        throw Exception(
            responseBody["message"] ?? "Register failed. Please try again.");
      }
    } catch (e) {
      debugPrint("Register Error: $e");
      rethrow;
    }
  }
}
