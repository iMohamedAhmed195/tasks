import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/core/utils/enums.dart';
import 'package:task/features/home/presentation/controller/home_bloc.dart';
import 'package:task/features/home/presentation/screens/views/no_list_found.dart';
import 'package:task/features/home/presentation/screens/views/order_view.dart';
import 'package:task/features/home/presentation/screens/views/service_view.dart';
import 'package:task/features/home/presentation/screens/views/users_list_view.dart';

class TabBarPageView extends StatelessWidget {
  const TabBarPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeScreenState>(
      builder: (context, state) {
        return ConditionalBuilder(
          condition: _shouldShowView(state),
          builder: (context) {
            return _buildSelectedView(state);
          },
          fallback: (context) => const NoListFound(),
        );
      },
    );
  }

  bool _shouldShowView(HomeScreenState state) {
    switch (state.selectedTabBarItem) {
      case TabBarItemType.users:
        return state.userList.isNotEmpty;
      case TabBarItemType.services:
        return state.serviceList.isNotEmpty;
      case TabBarItemType.orders:
        return state.ordersList.isNotEmpty;
      default:
        return false;
    }
  }

  Widget _buildSelectedView(HomeScreenState state) {
    switch (state.selectedTabBarItem) {
      case TabBarItemType.users:
        return const UsersListView();
      case TabBarItemType.services:
        return const ServiceView();
      case TabBarItemType.orders:
        return const OrderView();
      default:
        return Container();
    }
  }
}
