import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_chat_frontend/models/message/message.dart';
import 'package:weather_chat_frontend/models/user/User.dart';

part 'chat_state.freezed.dart';

@freezed
class ChatState with _$ChatState {
  factory ChatState({
    @Default([]) List<Message> messages,
    List<User>? users,
    List<User>? activeUsers,
    @Default(false) bool isLoading,
    String? errorMessage,
  }) = _ChatState;
}
