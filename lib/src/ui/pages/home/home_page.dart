import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rentcar/src/common/constants/app_images.dart';
import 'package:rentcar/src/common/controllers/language/bloc/lang_changer_bloc.dart';
import 'package:rentcar/src/common/controllers/theme/app_theme.dart';
import 'package:rentcar/src/common/controllers/theme/bloc/theme_changer_bloc.dart';
import 'package:rentcar/src/common/localization/app_localizations.dart';
import 'package:rentcar/src/ui/tools/translate.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Builder(
              builder: (context) {
                return Container(
                  alignment: Alignment.center,
                  width: 200,
                  height: 200,
                  color: Theme.of(context).colorScheme.inversePrimary,
                  child: Translate(
                    builder: (context, l10n, _) {
                      return Text(
                        l10n.hello("RentCar"),
                      );
                    },
                  ),
                );
              },
            ),
            const SizedBox(
              width: 200,
              height: 200,
              child: Image(
                image: AssetImage(AppImages.car3),
              ),
            ),
            BlocBuilder<ThemeChangerBloc, ThemeChangerState>(
              builder: (context, state) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: AppTheme.themes.map((e) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Radio(
                          value: e.$1,
                          groupValue: state.themeMode,
                          onChanged: (value) =>
                              context.read<ThemeChangerBloc>().add(e.$2),
                        ),
                        Text(e.$3),
                      ],
                    );
                  }).toList(),
                );
              },
            ),
            BlocBuilder<LangChangerBloc, LangChangerState>(
              builder: (context, state) {
                return DropdownButton(
                  value: state.locale,
                  items: AppLocalizations.supportedLocales.map((e) {
                    return DropdownMenuItem(
                      value: e.languageCode,
                      child: Text(
                        e.languageCode,
                      ),
                    );
                  }).toList(),
                  onChanged: (value) => context
                      .read<LangChangerBloc>()
                      .add(LangEvent(locale: value)),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
