import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp/bloc/theme/theme_cubit.dart';
import 'package:weatherapp/bloc/theme/theme_state.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: ListView(
        children: <Widget>[
          BlocBuilder<ThemeCubit, ThemeState>(
            builder: (context, state) {
              return ListTile(
                title: const Text('Light Mode'),
                isThreeLine: true,
                subtitle: const Text(
                  'Switch between light and dark mode.',
                ),
                trailing: Switch(
                  value: state.isDarkThemeEnabled,
                  onChanged: (_) =>
                      {BlocProvider.of<ThemeCubit>(context).toggleMode()},
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
