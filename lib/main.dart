import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:task/core/global/theme/light/light_theme_data.dart';
import 'package:task/core/services/dio_helper.dart';
import 'package:task/core/services/services_locator.dart';
import 'package:task/features/home/presentation/controller/home_bloc.dart';
import 'package:task/features/layout/presentation/controller/layout_bloc.dart';

void main() {
  ServicesLocator().init();
  sl<DioHelper>().init();

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<HomeBloc>(
          create: (BuildContext context) => sl<HomeBloc>(),
        ),
        BlocProvider<LayoutBloc>(
          create: (BuildContext context) => sl<LayoutBloc>(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use the library outside ScreenUtilInit context
      builder: (_, child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: sl<GoRouter>(),
          theme: getThemeDataLight(),
        );
      },
    );
  }
}
