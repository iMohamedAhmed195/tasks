import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:task/core/routing/routes.dart';
import 'package:task/core/services/dio_helper.dart';
import 'package:task/features/home/presentation/controller/home_bloc.dart';
import 'package:task/features/layout/presentation/controller/layout_bloc.dart';

final sl = GetIt.instance;

class ServicesLocator {
  void init() {
    ///Go router
    sl.registerLazySingleton<GoRouter>(() => GoRouter(routes: Routes.routes));

    ///Dio helper
    sl.registerLazySingleton<DioHelper>(() => DioHelper());

    /// DATA SOURCE

    /// Repository

    /// Use Cases


    /// Bloc
    sl.registerLazySingleton<HomeBloc>(() => HomeBloc());
    sl.registerLazySingleton<LayoutBloc>(() => LayoutBloc());


  }
}
