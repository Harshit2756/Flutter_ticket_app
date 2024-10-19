import 'package:flutter/material.dart';

import '../../res/Theme/app_styles.dart';

class TextStyleThird extends StatelessWidget {
  final String text;
  final bool isColor;
  const TextStyleThird({
    super.key,
    required this.text,
    this.isColor = true,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: isColor
          ? HStyles.headLineStyle3.copyWith(color: Colors.white)
          : HStyles.headLineStyle3,
    );
  }
}
