import 'package:flutter/material.dart';
import 'package:task/core/utils/app_colors.dart';

Widget defaultButton({
  double width = double.infinity,
  double height = 50.0,
  Color background = AppColors.cardButtonColor,
  bool isUpperCase = true,
  double radius = 3.0,
  TextStyle? textStyle,
  required VoidCallback function,
  required String text,
}) =>
    Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          radius,
        ),
        color: background,
      ),
      child: MaterialButton(
        onPressed: function,
        child: Text(
          text,
          style: textStyle,
        ),
      ),
    );
