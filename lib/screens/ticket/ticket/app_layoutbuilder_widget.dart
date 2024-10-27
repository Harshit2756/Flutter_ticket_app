import 'package:flutter/material.dart';

class AppLayoutBuilder extends StatelessWidget {
  final double? width;
  final bool isColor;
  final int randomDivider;
  const AppLayoutBuilder({
    super.key,
    this.width = 3,
    this.isColor = true,
    required this.randomDivider,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
          children: List.generate(
            (constraints.constrainWidth() / randomDivider).floor(),
            (index) => SizedBox(
              width: width,
              height: 2,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: isColor ? Colors.white : Colors.grey.shade300,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
