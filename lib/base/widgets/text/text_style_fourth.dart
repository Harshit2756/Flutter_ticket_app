import 'package:flutter/material.dart';

import '../../res/Theme/app_styles.dart';

class TextStyleFourth extends StatelessWidget {
  final String text;
  final bool isColor;
  final TextAlign? textAlign;

  const TextStyleFourth({
    super.key,
    this.textAlign,
    this.isColor = true,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: textAlign,
      text,
      style: isColor
          ? HStyles.headLineStyle4.copyWith(color: Colors.white)
          : HStyles.headLineStyle4,
    );
  }
}
