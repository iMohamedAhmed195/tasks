import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/features/home/presentation/screens/utils/home_strings.dart';

class WelcomeMessage extends StatelessWidget {
  const WelcomeMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  EdgeInsets.symmetric(vertical: 8.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            height: 40.h,
            child: Text(
              HomeString.welcomeMessageHeader,
              maxLines: 2,
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontSize: 18.sp ,overflow: TextOverflow.ellipsis),
            ),
          ),
           SizedBox(height: 4.h),
          SizedBox(
            width: double.infinity,
            child: Text(
              HomeString.welcomeMessageBody,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }
}
