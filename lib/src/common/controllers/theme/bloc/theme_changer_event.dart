part of 'theme_changer_bloc.dart';

@immutable
abstract class ThemeChangerEvent {}

class DarkThemeEvent extends ThemeChangerEvent {}

class LightThemeEvent extends ThemeChangerEvent {}

class SystemThemeEvent extends ThemeChangerEvent {}
