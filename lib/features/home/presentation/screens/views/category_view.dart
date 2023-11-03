import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/core/utils/app_constance.dart';
import 'package:task/features/home/presentation/screens/utils/home_colors.dart';
import 'package:task/features/home/presentation/screens/utils/home_strings.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Padding(
            padding:  EdgeInsets.only(left: 20.0.w, bottom: 8.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(HomeString.categoriesView,
                    style: Theme.of(context).textTheme.labelMedium!.copyWith(
                        color: HomeColors.categoriesViewTextColor)),
                const Spacer(),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      HomeString.seeAll,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: HomeColors.seeAllTextColor,
                          decoration: TextDecoration.underline),
                    ))
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return AppConstance.categoryListView[index];
              },
              itemCount: AppConstance.categoryListView.length,

            ),
          ),
        ],
      ),
    );
  }
}
