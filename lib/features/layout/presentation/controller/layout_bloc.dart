import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'layout_event.dart';
part 'layout_state.dart';

class LayoutBloc extends Bloc<LayoutEvent, LayoutScreenState> {
  LayoutBloc() : super(const LayoutScreenState()) {
    on<ChangeBottomNavBarItemEvent>(_changeBottomNavBarItem);

  }

  FutureOr<void> _changeBottomNavBarItem(ChangeBottomNavBarItemEvent event, Emitter<LayoutScreenState> emit) {
    final updatedState = state.copyWith(
        selectedBottomNavBatItem: event.selectedBottomNavBatItem);
    emit(updatedState);
  }
}

