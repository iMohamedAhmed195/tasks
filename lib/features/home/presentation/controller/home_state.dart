part of 'home_bloc.dart';

@immutable
class HomeScreenState extends Equatable {
  final List<User> userList;
  final RequestState getUsersRequestState;
  final String getUsersMessage;
  final int selectedBottomNavBatItem;
  final TabBarItemType selectedTabBarItem;
  final List<String> serviceList;
  final List<String> ordersList;
  final List<String> categoryList;

  const HomeScreenState(
      {this.userList = const [],
      this.getUsersRequestState = RequestState.loading,
      this.getUsersMessage = "",
      this.selectedBottomNavBatItem = 0,
      this.selectedTabBarItem = TabBarItemType.users,
      this.ordersList = const [],
      this.serviceList = const [],
      this.categoryList = const [
        HomeString.constructions,
        HomeString.insurances,
        HomeString.legal,
        HomeString.buyAndSell,
        HomeString.accountingServices
      ]});

  HomeScreenState copyWith(
      {List<User>? userList,
      RequestState? getUsersRequestState,
      String? getUsersMessage,
      int? selectedBottomNavBatItem,
      TabBarItemType? selectedTabBarItem,
      List<String>? serviceList,
      List<String>? ordersList,
      List<String>? categoryList}) {
    return HomeScreenState(
        userList: userList ?? this.userList,
        getUsersRequestState: getUsersRequestState ?? this.getUsersRequestState,
        getUsersMessage: getUsersMessage ?? this.getUsersMessage,
        selectedBottomNavBatItem:
            selectedBottomNavBatItem ?? this.selectedBottomNavBatItem,
        selectedTabBarItem: selectedTabBarItem ?? this.selectedTabBarItem,
        ordersList: ordersList ?? this.ordersList,
        serviceList: serviceList ?? this.serviceList,
        categoryList: categoryList ?? this.categoryList);
  }

  @override

  List<Object?> get props => [
        userList,
        getUsersRequestState,
        getUsersMessage,
        selectedBottomNavBatItem,
        selectedTabBarItem,
        serviceList,
        ordersList,
        categoryList
      ];
}
