import 'package:flutter/material.dart';

import '../../../base/res/Theme/app_styles.dart';
import '../../../base/res/Theme/colors.dart';
import '../../../base/utils/constants/images.dart';

class TicketPromotion extends StatelessWidget {
  const TicketPromotion({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: size.width * 0.42,
          height: 405,
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade200,
                blurRadius: 10,
                spreadRadius: 5,
              ),
            ],
          ),
          child: Column(
            children: [
              Container(
                height: 180,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(HImages.planeSit),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                '20% Discount on the early booking of this flight. Don\'t miss.',
                style: HStyles.headLineStyle2,
              ),
            ],
          ),
        ),
        Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 210,
                  width: size.width * 0.42,
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: const Color(0xff3ab8b8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Discount\nfor survey.',
                        style: HStyles.headLineStyle2.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Take the survey about our services and get a discount.',
                        style: HStyles.headLineStyle2.copyWith(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: -40,
                  right: -45,
                  child: Container(
                    padding: const EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: HColors.circleColor, width: 18),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Container(
              height: 180,
              width: size.width * 0.42,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: const Color(0xffec6545),
                borderRadius: BorderRadius.circular(24),
              ),
              child: Column(
                children: [
                  Text(
                    'Take Love',
                    style: HStyles.headLineStyle2.copyWith(color: Colors.white),
                  ),
                  const SizedBox(height: 10),
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(text: '😍', style: TextStyle(fontSize: 25)),
                        TextSpan(text: '🥰', style: TextStyle(fontSize: 35)),
                        TextSpan(text: '😘', style: TextStyle(fontSize: 25)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
