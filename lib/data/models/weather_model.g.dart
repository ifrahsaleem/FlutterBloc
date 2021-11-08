// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeatherModel _$$_WeatherModelFromJson(Map<String, dynamic> json) =>
    _$_WeatherModel(
      json['temp'],
      json['pressure'],
      json['humidity'],
      json['temp_max'],
      json['temp_min'],
    );

Map<String, dynamic> _$$_WeatherModelToJson(_$_WeatherModel instance) =>
    <String, dynamic>{
      'temp': instance.temp,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
      'temp_max': instance.temp_max,
      'temp_min': instance.temp_min,
    };
