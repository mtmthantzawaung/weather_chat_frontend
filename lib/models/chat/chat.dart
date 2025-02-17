import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_chat_frontend/models/user/User.dart';
import 'package:weather_chat_frontend/utils/converters/date_converter.dart';

part 'chat.freezed.dart';
part 'chat.g.dart';

@freezed
class Chat with _$Chat {
  factory Chat({
    String? chatName,
    User? user,
    List<User>? userList,
    @Default(false) bool isGroup,
    required String lastMessage,
    @DateConverter() required DateTime createdAt,
    @Default(false) bool isActive,
  }) = _Chat;

  factory Chat.fromJson(Map<String, dynamic> json) => _$ChatFromJson(json);
}
