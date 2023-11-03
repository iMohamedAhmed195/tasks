import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/core/utils/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task/features/home/presentation/screens/utils/home_colors.dart';

ThemeData getThemeDataLight() => ThemeData(
      primarySwatch: const MaterialColor(0xFFD61116, {
        50: Color(0xFFFFECEC),
        100: Color(0xFFFFD2D2),
        200: Color(0xFFFFACAC),
        300: Color(0xFFFF8585),
        400: Color(0xFFFF5E5E),
        500: Color(0xFFD61116),
        600: Color(0xFFFF3D3D),
        700: Color(0xFFFF2C2C),
        800: Color(0xFFFF1A1A),
        900: Color(0xFFFF0909),
      }),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: AppColors.bottomNavBarColor,
          selectedItemColor: AppColors.bottomNavBarActiveItemColor,
          unselectedItemColor: AppColors.bottomNavBarDisableItemColor),
      appBarTheme: AppBarTheme(
          elevation: 0,
          iconTheme: const IconThemeData(
            color: AppColors.drawerIconColor,
          ),
          color: AppColors.appBarColor,
          centerTitle: true,
          titleTextStyle: getOutfitFontStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20.sp,
              fontColor: HomeColors.appBarHeaderTextColor)),
      textTheme: TextTheme(
          titleLarge: getOutfitFontStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16.sp,
              fontColor: HomeColors.heyUserTextColor),
          bodyMedium: getOutfitFontStyle(
              fontSize: 14.sp,
              fontColor: HomeColors.welcomeUserBodyTextColor,
              fontWeight: FontWeight.w300),
          labelLarge: getOutfitFontStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14.sp,
              fontColor: AppColors.cardButtonHintTextColor),
          labelMedium: getOutfitFontStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
              fontColor: AppColors.activeTapBarHintTextColor),
          titleMedium: getOutfitFontStyle(
              fontWeight: FontWeight.w400,
              fontSize: 16.sp,
              fontColor: HomeColors.categoriesItemsDescriptionTextColor)),
    );

TextStyle getOutfitFontStyle(
    {required FontWeight fontWeight,
    required double fontSize,
    required Color fontColor}) {
  return GoogleFonts.outfit(
      fontWeight: fontWeight, fontSize: fontSize, color: fontColor);
}
