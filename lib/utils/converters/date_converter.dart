import 'package:json_annotation/json_annotation.dart';

class DateConverter implements JsonConverter<DateTime, String> {
  const DateConverter();

  @override
  DateTime fromJson(String dateString) {
    // Parse the ISO-8601 string into a DateTime object
    return DateTime.parse(dateString);
  }

  @override
  String toJson(DateTime dateTime) {
    // Convert the DateTime object back to an ISO-8601 string
    return dateTime.toIso8601String();
  }
}
