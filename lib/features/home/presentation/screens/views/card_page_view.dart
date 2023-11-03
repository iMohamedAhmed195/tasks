import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/core/utils/app_constance.dart';
import 'package:task/features/home/presentation/components/default_button.dart';
import 'package:task/features/home/presentation/screens/utils/home_strings.dart';

class CardPageView extends StatelessWidget {
  const CardPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                HomeString.cardMessageHeader,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SizedBox(
                height: 16.h,
              ),
              defaultButton(
                height: 32.h,
                width: 128.w,
                function: () {},
                text: HomeString.order,
                textStyle: Theme.of(context).textTheme.labelLarge,
                radius: 360.r,
              )
            ],
          ),
        ),
        Expanded(child: Image.asset(AppConstance.manHoldingBuildingImage))
      ],
    );
  }
}
