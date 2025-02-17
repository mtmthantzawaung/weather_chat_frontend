import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_chat_frontend/models/chat/chat.dart';
import 'package:weather_chat_frontend/models/user/User.dart';

part 'chat_tab_state.freezed.dart';

@freezed
class ChatTabState with _$ChatTabState {
  factory ChatTabState({
    @Default([]) List<Chat> chats,
    @Default([]) List<User> activeUsers,
    @Default(false) bool isLoading,
    String? errorMessage,
  }) = _ChatState;
}
