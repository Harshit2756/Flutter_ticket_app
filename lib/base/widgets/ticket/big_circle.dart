import 'package:flutter/material.dart';

class BigCirlce extends StatelessWidget {
  final bool isRight;
  const BigCirlce({
    super.key,
    this.isRight = true,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      width: 10,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: isRight
              ? const BorderRadius.horizontal(right: Radius.circular(10))
              : const BorderRadius.horizontal(left: Radius.circular(10)),
        ),
      ),
    );
  }
}
