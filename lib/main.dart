import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:weatherapp/bloc/internet/internet_bloc.dart';
import 'package:weatherapp/bloc/internet/internet_event.dart';
import 'package:weatherapp/bloc/theme/theme_cubit.dart';
import 'package:weatherapp/bloc/theme/theme_state.dart';
import 'package:weatherapp/constants/theme.dart';
import 'package:weatherapp/presentation/router/app_router.dart';
import 'package:weatherapp/repository/weather_repository.dart';
import 'package:weatherapp/utility/app_bloc_observer.dart';
import 'bloc/weather/weather_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: await getApplicationDocumentsDirectory(),
  );

  Bloc.observer = AppBlocObserver();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final AppRouter _appRouter = AppRouter();
  static WeatherRepo weatherRepo = WeatherRepo();

  MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<InternetBloc>(
          create: (context) => InternetBloc()..add(ListenConnectionEvent()),
        ),
        BlocProvider<ThemeCubit>(
          create: (context) => ThemeCubit(),
        ),
        BlocProvider<WeatherBloc>(
          create: (context) => WeatherBloc(weatherRepo),
        )
      ],
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          return MaterialApp(
              theme: state.isDarkThemeEnabled == true
                  ? MyThemes.darkTheme
                  : MyThemes.lightTheme,
              onGenerateRoute: _appRouter.onGenerateRoute);
        },
      ),
    );
  }
}
