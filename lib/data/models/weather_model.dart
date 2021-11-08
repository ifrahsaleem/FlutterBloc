import 'package:freezed_annotation/freezed_annotation.dart';
part 'weather_model.freezed.dart';
part 'weather_model.g.dart';

@freezed
@immutable
abstract class WeatherModel with _$WeatherModel {
  const WeatherModel._();
  const factory WeatherModel(dynamic temp, dynamic pressure, dynamic humidity,
      dynamic temp_max, dynamic temp_min) = _WeatherModel;
  factory WeatherModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherModelFromJson(json);
  double get getTemp => temp - 272.5;
  double get getMaxTemp => temp_max - 272.5;
  double get getMinTemp => temp_min - 272.5;
}
