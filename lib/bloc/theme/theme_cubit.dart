import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'theme_state.dart';

@singleton
class ThemeCubit extends HydratedCubit<ThemeState> {
  ThemeCubit() : super(ThemeState(isDarkThemeEnabled: false));

  void toggleMode() {
    if (!state.isDarkThemeEnabled) {
      emit(ThemeState(isDarkThemeEnabled: true));
    } else {
      emit(ThemeState(isDarkThemeEnabled: false));
    }
  }

  @override
  ThemeState? fromJson(Map<String, dynamic> json) {
    return ThemeState.fromMap(json);
  }

  @override
  Map<String, dynamic>? toJson(ThemeState state) {
    return state.toMap();
  }
}
