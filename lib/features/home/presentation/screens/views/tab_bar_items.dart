import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/core/services/services_locator.dart';
import 'package:task/core/utils/app_colors.dart';
import 'package:task/core/utils/enums.dart';
import 'package:task/features/home/presentation/components/default_button.dart';
import 'package:task/features/home/presentation/controller/home_bloc.dart';
import 'package:task/features/home/presentation/screens/utils/home_strings.dart';

class TabBarItems extends StatelessWidget {
  const TabBarItems({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeScreenState>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
                child: defaultButton(
                    radius: 360.r,
                    background: state.selectedTabBarItem ==
                            TabBarItemType.categories
                        ? AppColors.activeTapBarColor
                        : AppColors.inActiveTapBarColor,
                    textStyle:
                        state.selectedTabBarItem == TabBarItemType.categories
                            ? Theme.of(context)
                                .textTheme
                                .labelMedium!
                                .copyWith(overflow: TextOverflow.ellipsis)
                            : Theme.of(context).textTheme.labelMedium!.copyWith(
                                color: AppColors.inActiveTapBarHintTextColor,
                                overflow: TextOverflow.ellipsis),
                    function: () {
                      sl<HomeBloc>().add(const TabBarItemsClickedEvent(
                          tabBarItemType: TabBarItemType.categories));
                    },
                    text: HomeString.categories,
                    height: 30.h)),
            SizedBox(
              width: 6.w,
            ),
            Expanded(
                child: defaultButton(
                    radius: 360.r,
                    background:
                        state.selectedTabBarItem == TabBarItemType.services
                            ? AppColors.activeTapBarColor
                            : AppColors.semiActiveTapBarColor,
                    textStyle:
                        state.selectedTabBarItem == TabBarItemType.services
                            ? Theme.of(context).textTheme.labelMedium
                            : Theme.of(context).textTheme.labelMedium!.copyWith(
                                color: AppColors.semiActiveTapBarHintTextColor),
                    function: () {
                      sl<HomeBloc>().add(const TabBarItemsClickedEvent(
                          tabBarItemType: TabBarItemType.services));
                    },
                    text: HomeString.services,
                    height: 30.h)),
            SizedBox(
              width: 6.w,
            ),
            Expanded(
                child: defaultButton(
                    radius: 360.r,
                    function: () {
                      sl<HomeBloc>().add(const TabBarItemsClickedEvent(
                          tabBarItemType: TabBarItemType.orders));
                    },
                    text: HomeString.getOrders(0),
                    background:
                        state.selectedTabBarItem == TabBarItemType.orders
                            ? AppColors.activeTapBarColor
                            : AppColors.inActiveTapBarColor,
                    textStyle: state.selectedTabBarItem == TabBarItemType.orders
                        ? Theme.of(context).textTheme.labelMedium
                        : Theme.of(context).textTheme.labelMedium!.copyWith(
                            color: AppColors.inActiveTapBarHintTextColor),
                    height: 30.h)),
          ],
        );
      },
    );
  }
}
