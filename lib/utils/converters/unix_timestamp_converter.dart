import 'package:freezed_annotation/freezed_annotation.dart';

class UnixTimestampConverter implements JsonConverter<DateTime, int> {
  const UnixTimestampConverter();

  @override
  DateTime fromJson(int json) =>
      DateTime.fromMillisecondsSinceEpoch(json * 1000, isUtc: true);

  @override
  int toJson(DateTime object) => object.toUtc().millisecondsSinceEpoch ~/ 1000;
}
