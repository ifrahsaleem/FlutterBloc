import 'package:equatable/equatable.dart';
import 'package:weatherapp/data/models/weather_model.dart';

class WeatherState extends Equatable {
  @override
  List<Object> get props => [];
}

class WeatherIsNotSearched extends WeatherState {}

class WeatherIsLoading extends WeatherState {}

class NoNetwork extends WeatherState {}

class WeatherIsLoaded extends WeatherState {
  final WeatherModel _weather;

  WeatherIsLoaded(this._weather);

  WeatherModel get getWeather => _weather;

  @override
  List<Object> get props => [_weather];
}

class WeatherIsNotLoaded extends WeatherState {}
