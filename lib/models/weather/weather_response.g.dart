// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherResponseImpl _$$WeatherResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$WeatherResponseImpl(
      coord: Coordinates.fromJson(json['coord'] as Map<String, dynamic>),
      weather: (json['weather'] as List<dynamic>)
          .map((e) => WeatherCondition.fromJson(e as Map<String, dynamic>))
          .toList(),
      base: json['base'] as String,
      main: TemperatureData.fromJson(json['main'] as Map<String, dynamic>),
      visibility: (json['visibility'] as num).toInt(),
      wind: Wind.fromJson(json['wind'] as Map<String, dynamic>),
      clouds: Clouds.fromJson(json['clouds'] as Map<String, dynamic>),
      dt: (json['dt'] as num).toInt(),
      sys: SunInfo.fromJson(json['sys'] as Map<String, dynamic>),
      timezone: (json['timezone'] as num).toInt(),
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      cod: (json['cod'] as num).toInt(),
    );

Map<String, dynamic> _$$WeatherResponseImplToJson(
        _$WeatherResponseImpl instance) =>
    <String, dynamic>{
      'coord': instance.coord,
      'weather': instance.weather,
      'base': instance.base,
      'main': instance.main,
      'visibility': instance.visibility,
      'wind': instance.wind,
      'clouds': instance.clouds,
      'dt': instance.dt,
      'sys': instance.sys,
      'timezone': instance.timezone,
      'id': instance.id,
      'name': instance.name,
      'cod': instance.cod,
    };

_$CloudsImpl _$$CloudsImplFromJson(Map<String, dynamic> json) => _$CloudsImpl(
      all: (json['all'] as num).toInt(),
    );

Map<String, dynamic> _$$CloudsImplToJson(_$CloudsImpl instance) =>
    <String, dynamic>{
      'all': instance.all,
    };

_$CoordinatesImpl _$$CoordinatesImplFromJson(Map<String, dynamic> json) =>
    _$CoordinatesImpl(
      lon: (json['lon'] as num).toDouble(),
      lat: (json['lat'] as num).toDouble(),
    );

Map<String, dynamic> _$$CoordinatesImplToJson(_$CoordinatesImpl instance) =>
    <String, dynamic>{
      'lon': instance.lon,
      'lat': instance.lat,
    };

_$TemperatureDataImpl _$$TemperatureDataImplFromJson(
        Map<String, dynamic> json) =>
    _$TemperatureDataImpl(
      temp: (json['temp'] as num).toDouble(),
      feelsLike: (json['feels_like'] as num).toDouble(),
      tempMin: (json['temp_min'] as num).toDouble(),
      tempMax: (json['temp_max'] as num).toDouble(),
      pressure: (json['pressure'] as num).toInt(),
      humidity: (json['humidity'] as num).toInt(),
      seaLevel: (json['sea_level'] as num?)?.toInt(),
      grndLevel: (json['grnd_level'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$TemperatureDataImplToJson(
        _$TemperatureDataImpl instance) =>
    <String, dynamic>{
      'temp': instance.temp,
      'feels_like': instance.feelsLike,
      'temp_min': instance.tempMin,
      'temp_max': instance.tempMax,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
      'sea_level': instance.seaLevel,
      'grnd_level': instance.grndLevel,
    };

_$SunInfoImpl _$$SunInfoImplFromJson(Map<String, dynamic> json) =>
    _$SunInfoImpl(
      country: json['country'] as String,
      sunrise: (json['sunrise'] as num).toInt(),
      sunset: (json['sunset'] as num).toInt(),
    );

Map<String, dynamic> _$$SunInfoImplToJson(_$SunInfoImpl instance) =>
    <String, dynamic>{
      'country': instance.country,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
    };

_$WeatherConditionImpl _$$WeatherConditionImplFromJson(
        Map<String, dynamic> json) =>
    _$WeatherConditionImpl(
      id: (json['id'] as num).toInt(),
      main: json['main'] as String,
      description: json['description'] as String,
      icon: json['icon'] as String,
    );

Map<String, dynamic> _$$WeatherConditionImplToJson(
        _$WeatherConditionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'main': instance.main,
      'description': instance.description,
      'icon': instance.icon,
    };

_$WindImpl _$$WindImplFromJson(Map<String, dynamic> json) => _$WindImpl(
      speed: (json['speed'] as num).toDouble(),
      deg: (json['deg'] as num).toInt(),
      gust: (json['gust'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$WindImplToJson(_$WindImpl instance) =>
    <String, dynamic>{
      'speed': instance.speed,
      'deg': instance.deg,
      'gust': instance.gust,
    };
