import 'package:flutter_bloc/flutter_bloc.dart';

import 'bottom_nav_events.dart';
import 'bottom_nav_states.dart';

class BottomNavBloc extends Bloc<BottomNavEvent, BottomNavState> {
  BottomNavBloc() : super(BottomNavSelected(0)) {
    on<OnItemTapped>((event, emit) {
      emit(BottomNavSelected(event.index));
    });
  }
}
