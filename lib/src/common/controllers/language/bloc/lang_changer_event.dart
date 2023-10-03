part of 'lang_changer_bloc.dart';

@immutable
abstract class LangChangerEvent {
  abstract final String locale;
}

class LangEvent extends LangChangerEvent {
  @override
  final String locale;

  LangEvent({String? locale}) : locale = locale ?? "en";
}
