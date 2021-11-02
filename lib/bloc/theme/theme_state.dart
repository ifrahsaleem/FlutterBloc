import 'dart:convert';

class ThemeState {
  bool isDarkThemeEnabled;
  ThemeState({
    required this.isDarkThemeEnabled,
  });

  Map<String, dynamic> toMap() {
    return {
      'isDarkThemeEnabled': isDarkThemeEnabled,
    };
  }

  factory ThemeState.fromMap(Map<String, dynamic> map) {
    return ThemeState(
      isDarkThemeEnabled: map['isDarkThemeEnabled'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ThemeState.fromJson(String source) =>
      ThemeState.fromMap(json.decode(source));
}
