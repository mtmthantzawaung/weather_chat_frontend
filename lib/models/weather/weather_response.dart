import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'weather_response.freezed.dart';
part 'weather_response.g.dart';

WeatherResponse weatherResponseFromJson(String str) =>
    WeatherResponse.fromJson(json.decode(str));

String weatherResponseToJson(WeatherResponse data) =>
    json.encode(data.toJson());

@freezed
class WeatherResponse with _$WeatherResponse {
  const factory WeatherResponse({
    required Coordinates coord,
    required List<WeatherCondition> weather,
    required String base,
    required TemperatureData main,
    required int visibility,
    required Wind wind,
    required Clouds clouds,
    required int dt,
    required SunInfo sys,
    required int timezone,
    required int id,
    required String name,
    required int cod,
  }) = _WeatherResponse;

  factory WeatherResponse.fromJson(Map<String, dynamic> json) =>
      _$WeatherResponseFromJson(json);
}

@freezed
class Clouds with _$Clouds {
  const factory Clouds({
    required int all,
  }) = _Clouds;

  factory Clouds.fromJson(Map<String, dynamic> json) => _$CloudsFromJson(json);
}

@freezed
class Coordinates with _$Coordinates {
  const factory Coordinates({
    required double lon,
    required double lat,
  }) = _Coordinates;

  factory Coordinates.fromJson(Map<String, dynamic> json) =>
      _$CoordinatesFromJson(json);
}

@freezed
class TemperatureData with _$TemperatureData {
  const factory TemperatureData({
    required double temp,
    @JsonKey(name: "feels_like") required double feelsLike,
    @JsonKey(name: "temp_min") required double tempMin,
    @JsonKey(name: "temp_max") required double tempMax,
    required int pressure,
    required int humidity,
    @JsonKey(name: "sea_level") int? seaLevel,
    @JsonKey(name: "grnd_level") int? grndLevel,
  }) = _TemperatureData;

  factory TemperatureData.fromJson(Map<String, dynamic> json) =>
      _$TemperatureDataFromJson(json);
}

@freezed
class SunInfo with _$SunInfo {
  const factory SunInfo({
    required String country,
    required int sunrise,
    required int sunset,
  }) = _SunInfo;

  factory SunInfo.fromJson(Map<String, dynamic> json) =>
      _$SunInfoFromJson(json);
}

@freezed
class WeatherCondition with _$WeatherCondition {
  const factory WeatherCondition({
    required int id,
    required String main,
    required String description,
    required String icon,
  }) = _WeatherCondition;

  factory WeatherCondition.fromJson(Map<String, dynamic> json) =>
      _$WeatherConditionFromJson(json);
}

@freezed
class Wind with _$Wind {
  const factory Wind({
    required double speed,
    required int deg,
    double? gust,
  }) = _Wind;

  factory Wind.fromJson(Map<String, dynamic> json) => _$WindFromJson(json);
}
