class BottomNavInitial extends BottomNavState {}

class BottomNavSelected extends BottomNavState {
  final int selectedIndex;
  BottomNavSelected(this.selectedIndex);
}

abstract class BottomNavState {}
