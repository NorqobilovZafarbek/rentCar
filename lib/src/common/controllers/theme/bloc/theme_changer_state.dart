part of 'theme_changer_bloc.dart';

@immutable
abstract class ThemeChangerState {
  abstract final ThemeMode themeMode;
}

class ThemeState extends ThemeChangerState {
  ThemeState({ThemeMode? themeMode})
      : themeMode = themeMode ?? switch ($storage.getBool(StorageKeys.isDark.key)) {
          true => ThemeMode.dark,
          false => ThemeMode.light,
          null => ThemeMode.system,
        };

  @override
  final ThemeMode themeMode;
}
