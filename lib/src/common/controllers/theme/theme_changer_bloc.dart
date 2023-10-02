
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'theme_changer_event.dart';

part 'theme_changer_state.dart';

class ThemeChangerBloc extends Bloc<ThemeChangerEvent, ThemeChangerState> {
  ThemeChangerBloc() : super(ThemeDarkState()) {
    on<DarkThemeEvent>((event, emit) => emit(ThemeDarkState()));
    on<LightThemeEvent>((event, emit) => emit(ThemeLightState()));
  }
}
