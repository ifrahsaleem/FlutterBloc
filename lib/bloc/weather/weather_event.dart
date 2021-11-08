import 'package:equatable/equatable.dart';

abstract class WeatherEvent extends Equatable {}

// class NoNetworkEvent extends WeatherEvent {
//   @override
//   noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
// }

class FetchWeather extends WeatherEvent {
  final String city;

  FetchWeather(this.city);

  @override
  List<Object> get props => [city];
}

// class GetDetailedWeather extends WeatherEvent {
//   final String city;

//   GetDetailedWeather(this.city);

//   @override
//   List<Object> get props => [city];
// }

class ResetWeather extends WeatherEvent {
  final String city;

  ResetWeather(this.city);
  @override
  List<Object> get props => [city];
}
