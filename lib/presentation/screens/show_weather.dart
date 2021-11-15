// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:weatherapp/bloc/weather/weather_bloc.dart';
import 'package:weatherapp/bloc/weather/weather_event.dart';
import 'package:weatherapp/data/models/weather_model.dart';
import 'package:weatherapp/locator/locator.dart';

class ShowWeather extends StatefulWidget {
  final List argArray;

  const ShowWeather(this.argArray, {Key? key}) : super(key: key);

  @override
  State<ShowWeather> createState() => _ShowWeatherState(argArray);
}

class _ShowWeatherState extends State<ShowWeather> {
  WeatherModel weather = WeatherModel(0, 0, 0, 0, 0);
  List argArray = [];

  _ShowWeatherState(this.argArray);
  @override
  void initState() {
    if (argArray[1] is WeatherModel) {
      weather = argArray[1];
    }
    print('here');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(right: 32, left: 32, top: 10),
        child: Column(
          children: <Widget>[
            Text(
              argArray[0],
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              weather.getTemp.round().toString() + "°C",
              style: TextStyle(color: Colors.grey, fontSize: 50),
            ),
            Text(
              "Temperature",
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text(
                      weather.getMinTemp.round().toString() + "°C",
                      style: TextStyle(color: Colors.grey, fontSize: 30),
                    ),
                    Text(
                      "Min Temperature",
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text(
                      weather.getMaxTemp.round().toString() + "°C",
                      style: TextStyle(color: Colors.grey, fontSize: 30),
                    ),
                    Text(
                      "Max Temperature",
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                onPressed: () {
                  locator.get<WeatherBloc>().add(ResetWeather(""));
                  //BlocProvider.of<WeatherBloc>(context).add(ResetWeather(""));
                },
                color: Colors.red,
                child: Text(
                  "Return",
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
              ),
            )
          ],
        ));
  }
}
