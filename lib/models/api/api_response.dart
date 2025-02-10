import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_response.freezed.dart';
part 'api_response.g.dart';

@freezed
class ApiResponse with _$ApiResponse {
  factory ApiResponse({
    required bool success, // This should always be present
    String? message, // This should always be present
    dynamic data, // Can be null, used for different types of responses
    dynamic errorDetails, // Can be null, used for error information
  }) = _ApiResponse;

  factory ApiResponse.fromJson(Map<String, dynamic> json) =>
      _$ApiResponseFromJson(json);
}
