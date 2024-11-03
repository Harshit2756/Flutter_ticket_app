abstract class BottomNavEvent {}

class OnItemTapped extends BottomNavEvent {
  final int index;
  OnItemTapped(this.index);
}
