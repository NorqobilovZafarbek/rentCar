import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rentcar/src/common/controllers/language/bloc/lang_changer_bloc.dart';
import 'package:rentcar/src/common/controllers/theme/app_theme.dart';
import 'package:rentcar/src/common/controllers/theme/bloc/theme_changer_bloc.dart';
import '../localization/app_localizations.dart';
import '../../ui/pages/home/home_page.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _App();
}

class _App extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ThemeChangerBloc(),
        ),
        BlocProvider(
          create: (context) => LangChangerBloc(),
        ),
      ],
      child: BlocBuilder<ThemeChangerBloc, ThemeChangerState>(
        builder: (context, themeChanger) {
          return BlocBuilder<LangChangerBloc, LangChangerState>(
            builder: (context, langChanger) {
              return MaterialApp(
                localizationsDelegates: AppLocalizations.localizationsDelegates,
                supportedLocales: AppLocalizations.supportedLocales,
                theme: AppTheme.lightTheme,
                darkTheme: AppTheme.darkTheme,
                themeMode: themeChanger.themeMode,
                locale: Locale(langChanger.locale),
                home: const HomePage(),
              );
            },
          );
        },
      ),
    );
  }
}
