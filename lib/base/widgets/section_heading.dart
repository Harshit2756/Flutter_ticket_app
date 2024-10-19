import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/Theme/colors.dart';

import '../res/Theme/app_styles.dart';

class SectionHeading extends StatelessWidget {
  final String title, actionText;
  final void Function()? onTap;
  const SectionHeading({
    super.key,
    this.actionText = "View all",
    this.onTap,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: HStyles.headLineStyle2,
        ),
        InkWell(
          onTap: onTap,
          child: Text(
            actionText,
            style: HStyles.textStyle.copyWith(
              color: HColors.primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
