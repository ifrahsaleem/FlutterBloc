import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:weatherapp/bloc/weather/weather_event.dart';
import 'package:weatherapp/bloc/weather/weather_state.dart';
import 'package:weatherapp/data/models/weather_model.dart';
import 'package:weatherapp/repository/weather_repository.dart';
import 'dart:async';

@singleton
class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  WeatherRepo weatherRepo = WeatherRepo();

  WeatherBloc() : super(WeatherIsNotSearched());

  WeatherState get initialState => WeatherIsNotSearched();

  @override
  Stream<WeatherState> mapEventToState(WeatherEvent event) async* {
    if (event is FetchWeather) {
      yield WeatherIsLoading();
      try {
        WeatherModel weather = await weatherRepo.getWeather(event.city);
        yield WeatherIsLoaded(weather);
      } catch (_) {
        // ignore: avoid_print
        print(_);
        yield WeatherIsNotLoaded();
      }
    } else if (event is ResetWeather) {
      yield WeatherIsNotSearched();
    }
  }
}
