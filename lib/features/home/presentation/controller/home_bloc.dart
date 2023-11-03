import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/core/usecase/base_usecase.dart';
import 'package:task/core/utils/enums.dart';
import 'package:task/features/home/domain/entities/user.dart';
import 'package:task/features/home/domain/usecases/get_users_usecase.dart';
import 'package:task/features/home/presentation/screens/utils/home_strings.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeScreenState> {
  final pageViewController = PageController();
  GetUsersUseCase getUsersUseCase;
  HomeBloc(this.getUsersUseCase) : super(const HomeScreenState()) {
    on<TabBarItemsClickedEvent>(_tabBarItemsClicked);
    on<GetUsersEvent>(_getUsers);
  }
  FutureOr<void> _tabBarItemsClicked(
      TabBarItemsClickedEvent event, Emitter<HomeScreenState> emit) {
    emit(state.copyWith(selectedTabBarItem: event.tabBarItemType));
  }

  FutureOr<void> _getUsers(event, Emitter<HomeScreenState> emit) async {
    final result = await getUsersUseCase.call(const NoParameters());

    result.fold(
        (leftError) => emit(state.copyWith(
            getUsersRequestState: RequestState.error,
            getUsersMessage: leftError.message)),
        (rightUserList) => emit(state.copyWith(
            getUsersRequestState: RequestState.loaded,
            userList: rightUserList)));
  }
}
