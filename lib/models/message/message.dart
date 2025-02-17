import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_chat_frontend/utils/converters/date_converter.dart';

part 'message.freezed.dart';
part 'message.g.dart';

@freezed
class Message with _$Message {
  factory Message({
    @JsonKey(name: '_id') String? id,
    required String senderId,
    required String receiverId,
    required String message,
    @DateConverter() required DateTime createdAt,
    @DateConverter() DateTime? updatedAt,
  }) = _Message;

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);
}
