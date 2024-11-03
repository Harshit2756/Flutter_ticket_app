import 'package:flutter_bloc/flutter_bloc.dart';

import 'readme_events.dart';
import 'readmore_states.dart';

class TextExpansionBloc extends Bloc<TextExpansionEvent, TextExpansionState> {
  TextExpansionBloc() : super(IsExpandedState(false)) {
    on<IsExpandedEvent>((event, emit) {
      emit(IsExpandedState(event.isExpanded));
    });
  }
}
