import 'package:flutter/material.dart';
import 'package:task/core/icons/custom_icons.dart';
import 'package:task/core/utils/app_strings.dart';
import 'package:task/features/assets/presentation/screens/assets_screen.dart';
import 'package:task/features/home/presentation/components/default_icon.dart';
import 'package:task/features/home/presentation/components/default_list_tile.dart';
import 'package:task/features/home/presentation/screens/home_screen.dart';
import 'package:task/features/home/presentation/screens/utils/home_strings.dart';
import 'package:task/features/home/presentation/screens/views/card_page_view.dart';
import 'package:task/features/profile/presentation/screens/profile_screen.dart';
import 'package:task/features/support/presentation/screens/support_screen.dart';

class AppConstance {
  static const clappingHandsImage = "assets/images/clappingHand.png";
  static const manHoldingBuildingImage = "assets/images/manHoldingBuilding.png";
  static const noListFoundImage = "assets/images/emptyState.png";

  static const appBarHeaders = [
    AppString.bottomNavBarHome,
    AppString.appBarHeaderAssets,
    AppString.appBarHeaderSupport,
    AppString.appBarHeaderProfile
  ];
  static const defaultUserImageUrl =
      "https://img.freepik.com/free-psd/3d-illustration-human-avatar-profile_23-2150671142.jpg?w=740&t=st=1698870380~exp=1698870980~hmac=a7bd3a3c0ff243fdd01ef12877aa15ae74ded19fd7ab7e8279dc427d93ddc295";

  static const bottomNavBarItems = [
    BottomNavigationBarItem(
        icon: Icon(CustomIcons.home), label: AppString.bottomNavBarHome),
    BottomNavigationBarItem(
        icon: Icon(CustomIcons.dashboardCustomize),
        label: AppString.bottomNavBarAssets),
    BottomNavigationBarItem(
        icon: Icon(CustomIcons.supportAgent),
        label: AppString.bottomNavBarSupport),
    BottomNavigationBarItem(
        icon: Icon(CustomIcons.person), label: AppString.bottomNavBarProfile),
  ];

  static const bottomNavBarScreens = [
    HomeScreen(),
    AssetsScreen(),
    SupportScreen(),
    ProfileScreen(),
  ];

  static const pageViewChildren = [
    CardPageView(),
    CardPageView(),
    CardPageView()
  ];

  static List<Widget> categoryListView = [
    defaultListTile(
        title: HomeString.constructions,
        leadingWidget: defaultIcon(icon: CustomIcons.constructions)),
    defaultListTile(
        title: HomeString.insurances,
        leadingWidget: defaultIcon(icon: CustomIcons.insurances)),
    defaultListTile(
        title: HomeString.legal,
        leadingWidget: defaultIcon(icon: CustomIcons.legal)),
    defaultListTile(
        title: HomeString.buyAndSell,
        leadingWidget: defaultIcon(icon: CustomIcons.shop)),
    defaultListTile(
        title: HomeString.accountingServices,
        leadingWidget: defaultIcon(icon: CustomIcons.accounting)),
  ];
}
