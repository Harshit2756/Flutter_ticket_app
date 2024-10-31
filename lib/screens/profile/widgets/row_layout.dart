import 'package:flutter/material.dart';

import '../../../base/res/Theme/app_styles.dart';

class RowLayout extends StatelessWidget {
  final String heading1, heading2, text1, text2;
  const RowLayout({
    super.key,
    required this.heading1,
    required this.heading2,
    required this.text1,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              heading1,
              style: HStyles.headLineStyle3,
            ),
            const SizedBox(height: 5),
            Text(
              text1,
              style: HStyles.headLineStyle4,
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              heading2,
              style: HStyles.headLineStyle3,
            ),
            const SizedBox(height: 5),
            Text(
              text2,
              style: HStyles.headLineStyle4,
            ),
          ],
        ),
      ],
    );
  }
}
