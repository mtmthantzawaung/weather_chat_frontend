import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_chat_frontend/models/user/User.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    User? user,
    @Default(false) bool isLoading,
    String? errorMessage,
  }) = _AuthState;
}
