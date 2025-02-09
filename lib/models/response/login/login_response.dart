import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_chat_frontend/models/user/User.dart';

part 'login_response.freezed.dart';
part 'login_response.g.dart';

@freezed
class LoginResponse with _$LoginResponse {
  factory LoginResponse({
    bool? success,
    String? message,
    String? accessToken,
    String? refreshToken,
    User? user,
  }) = _LoginResponse;

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}
