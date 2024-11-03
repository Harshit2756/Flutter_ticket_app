class IsExpandedEvent extends TextExpansionEvent {
  final bool isExpanded;
  IsExpandedEvent(this.isExpanded);
}

abstract class TextExpansionEvent {}
