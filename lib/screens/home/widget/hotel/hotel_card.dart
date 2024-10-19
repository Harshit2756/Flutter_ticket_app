import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/Theme/app_styles.dart';
import 'package:ticket_app/base/res/Theme/colors.dart';

class HotelCard extends StatelessWidget {
  final Map<String, dynamic> hotel;

  const HotelCard({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        height: 350,
        width: size.width * 0.65,
        padding: const EdgeInsets.all(12),
        margin: const EdgeInsets.only(right: 17),
        decoration: BoxDecoration(
          color: HColors.primaryColor,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 180,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    "assets/images/${hotel['image']}",
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              hotel['place'],
              style: HStyles.headLineStyle2.copyWith(
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              hotel['destination'],
              style: HStyles.headLineStyle3.copyWith(
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              '\$${hotel['price']} / night',
              style: HStyles.headLineStyle2.copyWith(
                color: Colors.white,
              ),
            ),
          ],
        ));
  }
}
