part of 'layout_bloc.dart';

@immutable
class LayoutScreenState extends Equatable {
  final int selectedBottomNavBatItem;
  const LayoutScreenState({this.selectedBottomNavBatItem = 0});

  LayoutScreenState copyWith({int? selectedBottomNavBatItem}) =>
      LayoutScreenState(
          selectedBottomNavBatItem:
              selectedBottomNavBatItem ?? this.selectedBottomNavBatItem);
  @override
  // TODO: implement props
  List<Object?> get props => [selectedBottomNavBatItem];
}
