// import 'package:get_it/get_it.dart';
// import 'package:weatherapp/bloc/internet/internet_bloc.dart';
// import 'package:weatherapp/bloc/theme/theme_cubit.dart';
// import 'package:weatherapp/bloc/weather/weather_bloc.dart';

// final locator = GetIt.instance;

// void setup() {
//   locator.registerSingleton<WeatherBloc>(WeatherBloc());
//   locator.registerLazySingleton<InternetBloc>(() => InternetBloc());
//   locator.registerSingleton<ThemeCubit>(ThemeCubit());
// }

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:weatherapp/locator/locator.config.dart';

final locator = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)
void setup() => $initGetIt(locator);
