import 'package:flutter/material.dart';
import 'package:rentcar/src/common/controllers/theme/bloc/theme_changer_bloc.dart';

abstract class AppTheme {
  static final themes = [
    (ThemeMode.system, SystemThemeEvent(), "System"),
    (ThemeMode.dark, DarkThemeEvent(), "Dark"),
    (ThemeMode.light, LightThemeEvent(), "Light"),
  ];

  static final lightTheme  = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: Colors.green,
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
    radioTheme: const RadioThemeData(
      fillColor: MaterialStatePropertyAll(Colors.black),
    )
  );
  static final darkTheme  = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: Colors.blue,
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
      radioTheme: const RadioThemeData(
        fillColor: MaterialStatePropertyAll(Colors.white),
      )
  );
}