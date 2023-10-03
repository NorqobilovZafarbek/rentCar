import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:rentcar/src/common/controllers/storage/storage.dart';

part 'lang_changer_event.dart';

part 'lang_changer_state.dart';

class LangChangerBloc extends Bloc<LangChangerEvent, LangChangerState> {
  LangChangerBloc() : super(LangChangerInitial()) {
    on<LangEvent>((event, emit) {
      $storage.setString(StorageKeys.locale.key, event.locale);
      emit(LangChangerInitial(locale: event.locale));
    });
  }
}
