import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget getUserIdWidget({required int id}) {
  return Container(
      width: 32.0.w,
      height: 32.0.h,
      decoration: BoxDecoration(
        color: Colors.transparent,
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.red,
          width: 3.0.w,
          style: BorderStyle.solid,
        ),
      ),
      child: Center(
          child: Text(id.toString(),
              style:  TextStyle(
                color: Colors.black87,
                fontSize: 16.0.sp,
                fontWeight: FontWeight.w600,
              ))));
}
