import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/core/utils/app_colors.dart';
import 'package:task/features/home/presentation/screens/views/card_slider.dart';
import 'package:task/features/home/presentation/screens/views/tab_bar_items.dart';
import 'package:task/features/home/presentation/screens/views/tab_bar_page_view.dart';
import 'package:task/features/home/presentation/screens/views/welcom_user.dart';
import 'package:task/features/home/presentation/screens/views/wlecome_message.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
            padding: EdgeInsets.only(left: 20.0.w, right: 20.w, top: 12.h),
            child: Column(children: [
              const WelcomeUser(),
              const WelcomeMessage(),
              SizedBox(
                height: 16.h,
              ),
              const CardSlider(),
              SizedBox(
                height: 16.h,
              ),
            ])),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(bottom: 8.0.h),
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 16.0.h),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                        border: Border.all(
                            width: 1.w, color: AppColors.tapBarBorderColor),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(8.0.r),
                        child: const TabBarItems(),
                      ),
                    ),
                  ),
                  const TabBarPageView(),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
