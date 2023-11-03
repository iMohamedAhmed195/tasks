import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/core/services/services_locator.dart';
import 'package:task/core/utils/app_constance.dart';
import 'package:task/features/layout/presentation/controller/layout_bloc.dart';

class DefaultBottomNavBar extends StatelessWidget {
  const DefaultBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LayoutBloc, LayoutScreenState>(
      builder: (context, state) {
        return BottomNavigationBar(
          items: AppConstance.bottomNavBarItems,
          currentIndex: state.selectedBottomNavBatItem,
          type: BottomNavigationBarType.fixed,
          onTap: (value) {
            sl<LayoutBloc>().add(
                ChangeBottomNavBarItemEvent(selectedBottomNavBatItem: value));
          },
        );
      },
    );
  }
}
