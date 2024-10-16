import 'package:flutter/material.dart';

import '../res/styles/app_styles.dart';

class SectionHeading extends StatelessWidget {
  final String title, actionText;

  const SectionHeading({
    super.key,
    required this.title,
    this.actionText = "View all",
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: AppStyles.headLineStyle2,
        ),
        InkWell(
          onTap: () {},
          child: Text(
            actionText,
            style: AppStyles.textStyle.copyWith(
              color: AppStyles.primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
