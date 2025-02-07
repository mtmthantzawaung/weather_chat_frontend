import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:weather_chat_frontend/core/constants/app_constants.dart';
import 'package:weather_chat_frontend/models/user/User.dart';

class SecureStorage {
  static const _storage = FlutterSecureStorage();

  // Save tokens
  static Future<void> saveTokens(
      String accessToken, String refreshToken) async {
    await _storage.write(key: AppConstants.accessToekn, value: accessToken);
    await _storage.write(key: AppConstants.refreshToekn, value: refreshToken);
  }

  // Read tokens
  static Future<String?> getAccessToken() async =>
      await _storage.read(key: AppConstants.accessToekn);
  static Future<String?> getRefreshToken() async =>
      await _storage.read(key: AppConstants.refreshToekn);
  // Remove tokens
  static Future<void> deleteTokens() async {
    await _storage.delete(key: AppConstants.accessToekn);
    await _storage.delete(key: AppConstants.refreshToekn);
  }

  // Save User
  static Future<void> saveUser(User user) async {
    await _storage.write(
        key: AppConstants.user, value: jsonEncode(user.toJson()));
  }

  // Read User
  static Future<String?> getUser() async =>
      await _storage.read(key: AppConstants.user);
  // Remove user
  static Future<void> deleteUser() async {
    await _storage.delete(key: AppConstants.user);
  }
}
