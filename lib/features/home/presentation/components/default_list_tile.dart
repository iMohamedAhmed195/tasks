import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/core/global/theme/light/light_theme_data.dart';
import 'package:task/core/utils/app_colors.dart';
import 'package:task/features/home/presentation/screens/utils/home_colors.dart';

Widget defaultListTile(
    {required String title,
    IconData trailingIcon = Icons.arrow_forward,
    required Widget leadingWidget}) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 8.0.h),
    child: Container(
      decoration: BoxDecoration(
          color: AppColors.tapBarItemColor, // Your desired background color
          borderRadius: BorderRadius.circular(8.r),
          boxShadow: [
            BoxShadow(
                color: AppColors.tapBarItemShadowColor,
                blurRadius: 3.r,
                offset: const Offset(0, 2),
                spreadRadius: 0.r),
          ]),
      child: ListTile(
        title: Text(
          title,
          style: getOutfitFontStyle(
              fontWeight: FontWeight.w400,
              fontSize: 16.sp,
              fontColor: HomeColors.categoriesItemsDescriptionTextColor),
        ),
        trailing: Icon(trailingIcon,
            size: 24.r, color: HomeColors.categoriesItemsGoIconColor),
        leading: leadingWidget,
      ),
    ),
  );
}
