part of 'lang_changer_bloc.dart';

@immutable
abstract class LangChangerState {
  abstract final String locale;
}

class LangChangerInitial extends LangChangerState {
  @override
  final String locale;

  LangChangerInitial({String? locale})
      : locale = locale ?? $storage.getString(StorageKeys.locale.key) ?? "en";
}
