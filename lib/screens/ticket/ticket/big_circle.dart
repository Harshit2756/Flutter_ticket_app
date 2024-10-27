import 'package:flutter/material.dart';

class BigCirlce extends StatelessWidget {
  final bool isRight;
  final bool isColor;
  const BigCirlce({
    super.key,
    this.isRight = true,
    this.isColor = true,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      width: 10,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: isColor ? Colors.white : Colors.grey.shade200,
          borderRadius: isRight
              ? const BorderRadius.horizontal(right: Radius.circular(10))
              : const BorderRadius.horizontal(left: Radius.circular(10)),
        ),
      ),
    );
  }
}
