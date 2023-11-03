import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/core/utils/enums.dart';
import 'package:task/features/home/presentation/screens/utils/home_strings.dart';


part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeScreenState> {
  final pageViewController = PageController();

  HomeBloc() : super(const HomeScreenState()) {
    on<TabBarItemsClickedEvent>(_tabBarItemsClicked);
  }

  FutureOr<void> _tabBarItemsClicked(
      TabBarItemsClickedEvent event, Emitter<HomeScreenState> emit) {
    emit(state.copyWith(selectedTabBarItem: event.tabBarItemType));
  }
}
