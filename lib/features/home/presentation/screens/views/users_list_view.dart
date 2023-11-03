import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/core/utils/app_colors.dart';
import 'package:task/features/home/presentation/components/default_id_text.dart';
import 'package:task/features/home/presentation/components/default_list_tile.dart';
import 'package:task/features/home/presentation/controller/home_bloc.dart';

class UsersListView extends StatelessWidget {
  const UsersListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeScreenState>(builder: (context, state) {
      return ConditionalBuilder(
        condition: state.userList.isNotEmpty,
        builder: (context) {
          return Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return defaultListTile(
                    title: state.userList[index].name,
                    leadingWidget:
                        getUserIdWidget(id: state.userList[index].id));
              },
              itemCount: state.userList.length,
            ),
          );
        },
        fallback: (context) {
          return const Center(
            child: CircularProgressIndicator(
                color: AppColors.progressIndicatorColor),
          );
        },
      );
    });
  }
}
