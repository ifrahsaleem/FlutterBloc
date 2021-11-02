import 'package:flutter/material.dart';
import 'package:weatherapp/constants/constants.dart';
import 'package:weatherapp/presentation/screens/internet_connection.dart';
import 'package:weatherapp/presentation/screens/search_page.dart';
import 'package:weatherapp/presentation/screens/show_weather.dart';

class AppRouter {
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case searchPageRoute:
        return MaterialPageRoute(
          builder: (_) => const SearchPage(),
        );
      case internetConnection:
        return MaterialPageRoute(
          builder: (_) => const InternetConnection(),
        );
      case showWeatherRoute:
        if (args is List) {
          return MaterialPageRoute(
            builder: (_) => ShowWeather(args),
          );
        }
        return MaterialPageRoute(
            builder: (_) => const Scaffold(
                  body: Center(child: Text('Incorrect arguments passed!')),
                ));
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
