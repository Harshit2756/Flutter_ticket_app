import 'package:flutter/material.dart';

import '../../res/Theme/app_styles.dart';

class TextStyleThird extends StatelessWidget {
  final String text;
  const TextStyleThird({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: HStyles.headLineStyle3.copyWith(color: Colors.white),
    );
  }
}
