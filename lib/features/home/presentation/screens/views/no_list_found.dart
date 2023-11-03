import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/core/utils/app_constance.dart';
import 'package:task/features/home/presentation/controller/home_bloc.dart';
import 'package:task/features/home/presentation/screens/utils/home_colors.dart';
import 'package:task/features/home/presentation/screens/utils/home_strings.dart';

class NoListFound extends StatelessWidget {
  const NoListFound({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeScreenState>(
      builder: (context, state) {
        return Expanded(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  AppConstance.noListFoundImage,
                  width: 250.w,
                  height: 200.h,
                ),
                Text(
                  HomeString.noListFound(
                    state.selectedTabBarItem,
                  ),
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontSize: 22.sp,
                      fontWeight: FontWeight.w700,
                      color: HomeColors.noListFoundTextColor),
                ),
                Text(
                  textAlign: TextAlign.center,
                  HomeString.noListFoundHint(state.selectedTabBarItem),
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: HomeColors.noListFoundHintTextColor,
                      fontSize: 20.sp),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
