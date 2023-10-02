part of 'theme_changer_bloc.dart';

@immutable
abstract class ThemeChangerState {
  abstract final ThemeMode themeMode;
}

class ThemeDarkState extends ThemeChangerState {
  @override
  ThemeMode get themeMode => ThemeMode.dark;
}

class ThemeLightState extends ThemeChangerState {
  @override
  ThemeMode get themeMode => ThemeMode.light;

}
