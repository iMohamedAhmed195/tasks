import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/core/utils/app_constance.dart';
import 'package:task/features/home/presentation/screens/utils/home_strings.dart';

class WelcomeUser extends StatelessWidget {
  const WelcomeUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(bottom: 8.0.h),
      child: Row(
        children: [
           CircleAvatar(
            radius: 14.r,
            backgroundImage:
            const NetworkImage(AppConstance.defaultUserImageUrl),
          ),
          Padding(
            padding:  EdgeInsets.only(left: 4.0.w, right: 2.w),
            child: Text(
              HomeString.welcomeUser("Ahmed"),
              style: Theme
                  .of(context)
                  .textTheme
                  .titleLarge,
            ),
          ),
          Image.asset(
            AppConstance.clappingHandsImage,
            width: 20.w,
            height: 20.h,
          )
        ],
      ),
    );
  }
}
