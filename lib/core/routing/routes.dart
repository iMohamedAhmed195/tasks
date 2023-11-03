import 'package:go_router/go_router.dart';
import 'package:task/core/routing/route_names.dart';
import 'package:task/core/routing/route_paths.dart';
import 'package:task/features/assets/presentation/screens/assets_screen.dart';
import 'package:task/features/home/presentation/screens/home_screen.dart';
import 'package:task/features/layout/presentation/screens/layout_screen.dart';
import 'package:task/features/profile/presentation/screens/profile_screen.dart';
import 'package:task/features/support/presentation/screens/support_screen.dart';

class Routes {
  static List<RouteBase> routes = <RouteBase>[
    GoRoute(
      name: RouteNames.layout,
      path: RoutePath.initialRoutePath,
      builder: (context, state) => const LayoutScreen(),
    ),
    GoRoute(
      name: RouteNames.home,
      path: RoutePath.homeRoutePath,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      name: RouteNames.assets,
      path: RoutePath.assetsRoutePath,
      builder: (context, state) => const AssetsScreen(),
    ),
    GoRoute(
      name: RouteNames.support,
      path: RoutePath.supportRoutePath,
      builder: (context, state) => const SupportScreen(),
    ),
    GoRoute(
      name: RouteNames.profile,
      path: RoutePath.profileRoutePath,
      builder: (context, state) => const ProfileScreen(),
    ),
  ];
}
