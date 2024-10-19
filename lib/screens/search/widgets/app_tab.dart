import 'package:flutter/material.dart';

class AppTabs extends StatelessWidget {
  final bool isSelected, isBorder;
  final String title;

  const AppTabs({
    super.key,
    this.isSelected = false,
    this.isBorder = false,
    this.title = "",
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
        padding: const EdgeInsets.symmetric(vertical: 7),
        width: size.width * 0.44,
        decoration: BoxDecoration(
            color: isSelected ? Colors.white : Colors.transparent,
            borderRadius: isBorder
                ? const BorderRadius.horizontal(left: Radius.circular(50))
                : const BorderRadius.horizontal(right: Radius.circular(50))),
        child: Text(title, textAlign: TextAlign.center));
  }
}
