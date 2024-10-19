import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/Theme/colors.dart';

import '../../../../base/widgets/text/text_style_fourth.dart';
import '../../../../base/widgets/text/text_style_third.dart';
import 'app_layoutbuilder_widget.dart';
import 'big_circle.dart';
import 'big_dot.dart';

class TicketCard extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool isFullSize;
  const TicketCard({super.key, required this.ticket, this.isFullSize = false});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.85,
      height: 189,
      child: Container(
        margin: EdgeInsets.only(right: isFullSize ? 0 : 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // blue part
            Container(
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                color: HColors.ticketBlue,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(21),
                    topRight: Radius.circular(21)),
              ),
              child: Column(
                children: [
                  // Departure & Arrival shortform
                  Row(
                    children: [
                      TextStyleThird(text: ticket['from']['code']),
                      const Spacer(),
                      const BigDot(),
                      Expanded(
                        child: Stack(
                          children: [
                            const SizedBox(
                              height: 24,
                              child: AppLayoutBuilder(randomDivider: 6),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.5,
                                child: const Icon(
                                  color: Colors.white,
                                  Icons.local_airport_rounded,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const BigDot(),
                      const Spacer(),
                      TextStyleThird(text: ticket['to']['code']),
                    ],
                  ),
                  const SizedBox(height: 3),
                  // Departure & Arrival fullform
                  Row(
                    children: [
                      SizedBox(
                        width: 70,
                        child: TextStyleFourth(text: ticket['from']['name']),
                      ),
                      const Spacer(),
                      TextStyleFourth(text: ticket['flying_time']),
                      const Spacer(),
                      SizedBox(
                        width: 70,
                        child: TextStyleFourth(
                          text: ticket['to']['name'],
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // lines
            Container(
              color: HColors.ticketOrange,
              child: const Row(
                children: [
                  BigCirlce(),
                  Expanded(
                      child: AppLayoutBuilder(randomDivider: 10, width: 5)),
                  BigCirlce(isRight: false),
                ],
              ),
            ),
            // orange part
            Container(
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                color: HColors.ticketOrange,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(21),
                    bottomRight: Radius.circular(21)),
              ),
              child: Column(
                children: [
                  // Departure & Arrival shortform
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextStyleThird(text: ticket['date']),
                          const SizedBox(height: 5),
                          const TextStyleFourth(text: "Date"),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextStyleThird(text: ticket['departure_time']),
                          const SizedBox(height: 5),
                          const TextStyleFourth(text: "Departure Time"),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          TextStyleThird(text: ticket['number'].toString()),
                          const SizedBox(height: 5),
                          const TextStyleFourth(text: "Number"),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
