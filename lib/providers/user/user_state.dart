import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_chat_frontend/models/user/User.dart';
import 'package:weather_chat_frontend/models/weather/weather_response.dart';

part 'user_state.freezed.dart';

@freezed
class UserState with _$UserState {
  const factory UserState({
    List<User>? users,
    @Default(false) bool isLoading,
    String? errorMessage,
  }) = _UserState;
}
