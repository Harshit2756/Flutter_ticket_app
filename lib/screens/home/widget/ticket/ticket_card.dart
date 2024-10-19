import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/Theme/colors.dart';

import '../../../../base/widgets/text/text_style_fourth.dart';
import '../../../../base/widgets/text/text_style_third.dart';
import 'app_layoutbuilder_widget.dart';
import 'big_circle.dart';
import 'big_dot.dart';

class TicketCard extends StatelessWidget {
  final bool isFullSize, isColor;
  final Map<String, dynamic> ticket;
  const TicketCard({
    super.key,
    required this.ticket,
    this.isFullSize = false,
    this.isColor = true,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.85,
      height: 180,
      child: Container(
        margin: EdgeInsets.only(right: isFullSize ? 0 : 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // blue part
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: isColor ? HColors.ticketBlue : Colors.white,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(21),
                    topRight: Radius.circular(21)),
              ),
              child: Column(
                children: [
                  // Departure & Arrival shortform
                  Row(
                    children: [
                      TextStyleThird(
                          text: ticket['from']['code'], isColor: isColor),
                      const Spacer(),
                      BigDot(isColor: isColor),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: 24,
                              child: AppLayoutBuilder(
                                randomDivider: 6,
                                isColor: isColor,
                              ),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.5,
                                child: Icon(
                                  color: isColor
                                      ? Colors.white
                                      : const Color(0xff8accf7),
                                  Icons.local_airport_rounded,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      BigDot(isColor: isColor),
                      const Spacer(),
                      TextStyleThird(
                          text: ticket['to']['code'], isColor: isColor),
                    ],
                  ),
                  const SizedBox(height: 3),
                  // Departure & Arrival fullform
                  Row(
                    children: [
                      SizedBox(
                        width: 70,
                        child: TextStyleFourth(
                            text: ticket['from']['name'], isColor: isColor),
                      ),
                      const Spacer(),
                      TextStyleFourth(
                          text: ticket['flying_time'], isColor: isColor),
                      const Spacer(),
                      SizedBox(
                        width: 70,
                        child: TextStyleFourth(
                          text: ticket['to']['name'],
                          textAlign: TextAlign.end,
                          isColor: isColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // lines
            Container(
              color: isColor ? HColors.ticketOrange : Colors.white,
              child: Row(
                children: [
                  BigCirlce(isColor: isColor),
                  Expanded(
                      child: AppLayoutBuilder(
                          randomDivider: 10, width: 5, isColor: isColor)),
                  BigCirlce(isRight: false, isColor: isColor),
                ],
              ),
            ),
            // orange part
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: isColor ? HColors.ticketOrange : Colors.white,
                borderRadius: isColor
                    ? const BorderRadius.only(
                        bottomLeft: Radius.circular(21),
                        bottomRight: Radius.circular(21))
                    : null,
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
                          TextStyleThird(
                              text: ticket['date'], isColor: isColor),
                          const SizedBox(height: 5),
                          TextStyleFourth(text: "Date", isColor: isColor),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextStyleThird(
                              text: ticket['departure_time'], isColor: isColor),
                          const SizedBox(height: 5),
                          TextStyleFourth(
                              text: "Departure Time", isColor: isColor),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          TextStyleThird(
                              text: ticket['number'].toString(),
                              isColor: isColor),
                          const SizedBox(height: 5),
                          TextStyleFourth(text: "Number", isColor: isColor),
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
