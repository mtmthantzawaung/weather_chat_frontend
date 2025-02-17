import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_chat_frontend/models/message/message.dart';

part 'message_state.freezed.dart';

@freezed
class MessageState with _$MessageState {
  factory MessageState({
    @Default([]) List<Message> messages,
    @Default(false) bool isLoading,
    String? errorMessage,
  }) = _MessageState;
}
