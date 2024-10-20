import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/Theme/app_styles.dart';
import 'package:ticket_app/base/res/Theme/colors.dart';

class HotelCardGridView extends StatelessWidget {
  final Map<String, dynamic> hotel;

  const HotelCardGridView({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 350,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: HColors.primaryColor,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1.3,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      "assets/images/${hotel['image']}",
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              hotel['place'],
              style: HStyles.headLineStyle3.copyWith(
                color: Colors.white,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  hotel['destination'],
                  style: HStyles.headLineStyle3.copyWith(
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 5),
                Text(
                  '\$${hotel['price']} / night',
                  style: HStyles.headLineStyle4.copyWith(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
