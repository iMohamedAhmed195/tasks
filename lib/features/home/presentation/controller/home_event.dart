part of 'home_bloc.dart';

@immutable
abstract class HomeEvent extends Equatable {
  const HomeEvent();
}

class TabBarItemsClickedEvent extends HomeEvent {
  final TabBarItemType tabBarItemType;
  const TabBarItemsClickedEvent({required this.tabBarItemType});
  @override
  // TODO: implement props
  List<Object?> get props => [tabBarItemType];
}
