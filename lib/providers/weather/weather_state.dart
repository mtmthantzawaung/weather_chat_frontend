import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_chat_frontend/models/weather/weather_response.dart';

part 'weather_state.freezed.dart';

@freezed
class WeatherState with _$WeatherState {
  const factory WeatherState({
    WeatherResponse? weatherResponse,
    @Default(false) bool isLoading,
    String? errorMessage,
  }) = _WeatherState;
}
