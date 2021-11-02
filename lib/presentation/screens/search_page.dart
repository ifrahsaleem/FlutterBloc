// ignore_for_file: prefer_const_constructors
import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp/bloc/internet/internet_bloc.dart';
import 'package:weatherapp/bloc/internet/internet_state.dart';
import 'package:weatherapp/bloc/weather/weather_bloc.dart';
import 'package:weatherapp/bloc/weather/weather_event.dart';
import 'package:weatherapp/bloc/weather/weather_state.dart';
import 'package:weatherapp/constants/constants.dart';
import 'package:weatherapp/presentation/screens/internet_connection.dart';
import 'package:weatherapp/presentation/screens/settings_page.dart';
import 'package:weatherapp/presentation/screens/show_weather.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cityController = TextEditingController();
    final weatherBloc = BlocProvider.of<WeatherBloc>(context);

    return BlocListener<InternetBloc, InternetState>(
      listener: (context, state) {
        // ignore: avoid_print
        print(state);
        if (state is InternetConnected) {
          CoolAlert.show(
            context: context,
            type: CoolAlertType.success,
            text: 'Internet is connected!',
            autoCloseDuration: Duration(seconds: 2),
          );
        } else if (state is InternetLoading) {
          Navigator.pushNamed(context, internetConnection);
        } else {
          CoolAlert.show(
            context: context,
            type: CoolAlertType.warning,
            text: 'Internet is disconnected!',
            autoCloseDuration: Duration(seconds: 2),
          );
        }
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(title: Text('Weather Application')),
        drawer: Drawer(child: SettingsPage()),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                  child: SizedBox(
                child: Image.asset('assets/earth.png'),
                height: 300,
                width: 300,
              )),
              BlocBuilder<WeatherBloc, WeatherState>(builder: (context, state) {
                if (state is WeatherIsNotSearched) {
                  return Container(
                    padding: EdgeInsets.only(
                      left: 32,
                      right: 32,
                    ),
                    child: Column(
                      children: <Widget>[
                        Text(
                          "Search Weather",
                          style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                        Text(
                          "Instantly",
                          style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w200,
                              color: Colors.black),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        TextFormField(
                          controller: cityController,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.black,
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(
                                    color: Colors.black,
                                    style: BorderStyle.solid)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(
                                    color: Colors.blue,
                                    style: BorderStyle.solid)),
                            hintText: "City Name",
                            hintStyle: TextStyle(color: Colors.black),
                          ),
                          style: TextStyle(color: Colors.black),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: 50,
                          child: FlatButton(
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            onPressed: () {
                              weatherBloc
                                  .add(FetchWeather(cityController.text));
                            },
                            color: Colors.red,
                            child: Text(
                              "Search",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                } else if (state is WeatherIsLoading) {
                  return Center(child: CircularProgressIndicator());
                } else if (state is WeatherIsLoaded) {
                  return ShowWeather([cityController.text, state.getWeather]);
                }
                return Column(
                  children: [
                    Center(
                      child: Text(
                        'Results not found!',
                        style: TextStyle(color: Colors.black, fontSize: 25),
                      ),
                    ),
                    SizedBox(height: 30),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        onPressed: () {
                          BlocProvider.of<WeatherBloc>(context)
                              .add(ResetWeather(""));
                        },
                        color: Colors.red,
                        child: Text(
                          "Return",
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                      ),
                    )
                  ],
                );
              })
            ]),
      ),
    );
  }
}
