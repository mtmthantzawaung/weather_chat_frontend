import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'hourly_weather.freezed.dart';
part 'hourly_weather.g.dart';

HourlyWeather hourlyWeatherFromJson(String str) =>
    HourlyWeather.fromJson(json.decode(str));

String hourlyWeatherToJson(HourlyWeather data) => json.encode(data.toJson());

@freezed
class HourlyWeather with _$HourlyWeather {
  const factory HourlyWeather({
    required double latitude,
    required double longitude,
    @JsonKey(name: 'generationtime_ms') required double generationtimeMs,
    @JsonKey(name: 'utc_offset_seconds') required int utcOffsetSeconds,
    required String timezone,
    @JsonKey(name: 'timezone_abbreviation')
    required String timezoneAbbreviation,
    required double elevation,
    @JsonKey(name: 'hourly_units') required HourlyUnits hourlyUnits,
    required Hourly hourly,
  }) = _HourlyWeather;

  factory HourlyWeather.fromJson(Map<String, dynamic> json) =>
      _$HourlyWeatherFromJson(json);
}

@freezed
class Hourly with _$Hourly {
  const factory Hourly({
    required List<String> time,
    @JsonKey(name: 'temperature_2m') required List<double> temperature2M,
    @JsonKey(name: 'weather_code') required List<int> weatherCode,
  }) = _Hourly;

  factory Hourly.fromJson(Map<String, dynamic> json) => _$HourlyFromJson(json);
}

@freezed
class HourlyUnits with _$HourlyUnits {
  const factory HourlyUnits({
    required String time,
    @JsonKey(name: 'temperature_2m') required String temperature2M,
    @JsonKey(name: 'weather_code') required String weatherCode,
  }) = _HourlyUnits;

  factory HourlyUnits.fromJson(Map<String, dynamic> json) =>
      _$HourlyUnitsFromJson(json);
}
