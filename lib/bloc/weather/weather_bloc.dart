import 'package:bloc/bloc.dart';
import 'package:weatherapp/bloc/weather/weather_event.dart';
import 'package:weatherapp/bloc/weather/weather_state.dart';
import 'package:weatherapp/data/models/weather_model.dart';
import 'package:weatherapp/repository/weather_repository.dart';
import 'dart:async';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  WeatherRepo weatherRepo = WeatherRepo();

  WeatherBloc(this.weatherRepo) : super(WeatherIsNotSearched());
  // {
  //   //on<FetchWeather>((event, emit) => emit());
  //   on<ResetWeather>((event, emit) => emit(WeatherIsNotSearched()));
  // }

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
