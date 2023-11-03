import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/core/utils/app_constance.dart';
import 'package:task/features/layout/presentation/screens/views/default_bottom_nav_bar.dart';
import 'package:task/features/layout/presentation/controller/layout_bloc.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LayoutBloc, LayoutScreenState>(
      builder: (context, state) {
        return Scaffold(
          drawer: const Drawer(),
          appBar: AppBar(
            title: Text(
                AppConstance.appBarHeaders[state.selectedBottomNavBatItem]),
          ),
          bottomNavigationBar: const DefaultBottomNavBar(),
          body:
          AppConstance.bottomNavBarScreens[state.selectedBottomNavBatItem],
        );
      },
    );
  }
}
