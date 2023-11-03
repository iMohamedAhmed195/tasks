import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:task/core/services/services_locator.dart';
import 'package:task/core/utils/app_colors.dart';
import 'package:task/core/utils/app_constance.dart';
import 'package:task/features/home/presentation/controller/home_bloc.dart';

class CardSlider extends StatelessWidget {
  const CardSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 10.0.h),
          child: Container(
            height: 152.h,
            padding: EdgeInsets.only(left: 8.w, top: 8.h, bottom: 12.h),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                color: AppColors.cardColor),
            child: PageView(
              controller: sl<HomeBloc>().pageViewController,
              children: AppConstance.pageViewChildren,
            ),
          ),
        ),
        SmoothPageIndicator(
          controller: sl<HomeBloc>().pageViewController,
          count: AppConstance.pageViewChildren.length,
          effect: ExpandingDotsEffect(
              activeDotColor: AppColors.activeDotColor,
              dotColor: AppColors.inActiveDotColor,
              dotHeight: 8.h,
              dotWidth: 8.w,
              expansionFactor: 4.w),
        )
      ],
    );
  }
}
