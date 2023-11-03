import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:task/core/routing/routes.dart';
import 'package:task/core/services/dio_helper.dart';
import 'package:task/features/home/data/datasource/get_users_remote_data_source.dart';
import 'package:task/features/home/data/repo/get_users_repo.dart';
import 'package:task/features/home/domain/repo/base_get_users_repo.dart';
import 'package:task/features/home/domain/usecases/get_users_usecase.dart';
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
    sl.registerLazySingleton<BaseGetUsersRemoteDataSource>(
        () => GetUsersRemoteDataSource());

    /// Repository
    sl.registerLazySingleton<BaseGetUsersRepo>(() => GetUsersRepo(sl()));

    /// Use Cases
    sl.registerLazySingleton<GetUsersUseCase>(() => GetUsersUseCase(sl()));

    /// Bloc
    sl.registerLazySingleton<HomeBloc>(() => HomeBloc(sl()));
    sl.registerLazySingleton<LayoutBloc>(() => LayoutBloc());
  }
}
