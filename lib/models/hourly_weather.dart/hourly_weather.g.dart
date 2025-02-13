// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hourly_weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HourlyWeatherImpl _$$HourlyWeatherImplFromJson(Map<String, dynamic> json) =>
    _$HourlyWeatherImpl(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      generationtimeMs: (json['generationtime_ms'] as num).toDouble(),
      utcOffsetSeconds: (json['utc_offset_seconds'] as num).toInt(),
      timezone: json['timezone'] as String,
      timezoneAbbreviation: json['timezone_abbreviation'] as String,
      elevation: (json['elevation'] as num).toDouble(),
      hourlyUnits:
          HourlyUnits.fromJson(json['hourly_units'] as Map<String, dynamic>),
      hourly: Hourly.fromJson(json['hourly'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HourlyWeatherImplToJson(_$HourlyWeatherImpl instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'generationtime_ms': instance.generationtimeMs,
      'utc_offset_seconds': instance.utcOffsetSeconds,
      'timezone': instance.timezone,
      'timezone_abbreviation': instance.timezoneAbbreviation,
      'elevation': instance.elevation,
      'hourly_units': instance.hourlyUnits,
      'hourly': instance.hourly,
    };

_$HourlyImpl _$$HourlyImplFromJson(Map<String, dynamic> json) => _$HourlyImpl(
      time: (json['time'] as List<dynamic>).map((e) => e as String).toList(),
      temperature2M: (json['temperature_2m'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      weatherCode: (json['weather_code'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$$HourlyImplToJson(_$HourlyImpl instance) =>
    <String, dynamic>{
      'time': instance.time,
      'temperature_2m': instance.temperature2M,
      'weather_code': instance.weatherCode,
    };

_$HourlyUnitsImpl _$$HourlyUnitsImplFromJson(Map<String, dynamic> json) =>
    _$HourlyUnitsImpl(
      time: json['time'] as String,
      temperature2M: json['temperature_2m'] as String,
      weatherCode: json['weather_code'] as String,
    );

Map<String, dynamic> _$$HourlyUnitsImplToJson(_$HourlyUnitsImpl instance) =>
    <String, dynamic>{
      'time': instance.time,
      'temperature_2m': instance.temperature2M,
      'weather_code': instance.weatherCode,
    };
