import 'package:flutter/material.dart';

import '../../res/Theme/app_styles.dart';

class TextStyleFourth extends StatelessWidget {
  final String text;
  final TextAlign? textAlign;
  const TextStyleFourth({
    super.key,
    required this.text,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: textAlign,
      text,
      style: HStyles.headLineStyle4.copyWith(color: Colors.white),
    );
  }
}
