import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:rentcar/src/common/controllers/storage/storage.dart';

part 'theme_changer_event.dart';

part 'theme_changer_state.dart';

class ThemeChangerBloc extends Bloc<ThemeChangerEvent, ThemeChangerState> {
  ThemeChangerBloc() : super(ThemeState()) {
    on<DarkThemeEvent>((event, emit) {
      $storage.setBool(StorageKeys.isDark.key, true);
      emit(ThemeState(themeMode: ThemeMode.dark));
    });
    on<LightThemeEvent>((event, emit) {
      $storage.setBool(StorageKeys.isDark.key, false);
      emit(ThemeState(themeMode: ThemeMode.light));
    });
    on<SystemThemeEvent>((event, emit) {
      $storage.remove(StorageKeys.isDark.key);
      emit(ThemeState());
    });
  }
}
