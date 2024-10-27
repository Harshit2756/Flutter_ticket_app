import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/data/models/ticket_model.dart';
import 'package:ticket_app/base/utils/constants/images.dart';
import 'package:ticket_app/screens/ticket/ticket/app_layoutbuilder_widget.dart';
import 'package:ticket_app/screens/ticket/ticket/ticket_card.dart';

import '../../base/data/app_json.dart';
import '../../base/res/Theme/colors.dart';
import '../../base/widgets/text/text_style_fourth.dart';
import '../../base/widgets/text/text_style_third.dart';
import '../search/widgets/app_ticket_tabs.dart';

class TicketScreen extends StatefulWidget {
  final TicketModel? ticket;

  const TicketScreen({super.key, this.ticket});

  @override
  State<TicketScreen> createState() => _TicketScreenState();
}

class _TicketScreenState extends State<TicketScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ticket"),
        backgroundColor: HColors.backgroundColor,
      ),
      backgroundColor: HColors.backgroundColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          // const SizedBox(height: 40),
          // Text(
          //   "Tickets",
          //   style: HStyles.headLineStyle1.copyWith(fontSize: 35),
          // ),
          // const SizedBox(height: 20),
          const AppTicketTabs(tabs: ["Upcoming", "Previous"]),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                TicketCard(
                  ticket: widget.ticket ?? TicketModel.fromJson(ticketList[0]),
                  isColor: false,
                  isFullSize: true,
                ),
                const SizedBox(height: 1),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  color: Colors.white,
                  child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextStyleThird(
                                  text: 'Flutter Dart', isColor: false),
                              SizedBox(height: 5),
                              TextStyleFourth(
                                  text: "Passenger", isColor: false),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              TextStyleThird(
                                  text: '5221 478566', isColor: false),
                              SizedBox(height: 5),
                              TextStyleFourth(text: "Passport", isColor: false),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      const AppLayoutBuilder(
                        width: 5,
                        isColor: false,
                        randomDivider: 15,
                      ),
                      const SizedBox(height: 20),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextStyleThird(
                                  text: '0055 444 77147', isColor: false),
                              SizedBox(height: 5),
                              TextStyleFourth(
                                  text: "Number of E-ticket", isColor: false),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              TextStyleThird(text: 'B2SG28', isColor: false),
                              SizedBox(height: 5),
                              TextStyleFourth(
                                  text: "Booking Code", isColor: false),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      const AppLayoutBuilder(
                        width: 5,
                        isColor: false,
                        randomDivider: 15,
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Image.asset(HImages.visaCard, scale: 10),
                                  const SizedBox(width: 5),
                                  const TextStyleThird(
                                      text: '*** 2462', isColor: false),
                                ],
                              ),
                              const SizedBox(height: 5),
                              const TextStyleFourth(
                                  text: "Payment Method", isColor: false),
                            ],
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              TextStyleThird(text: '\$249.99', isColor: false),
                              SizedBox(height: 5),
                              TextStyleFourth(text: "Price", isColor: false),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 1),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(24),
                      bottomRight: Radius.circular(24),
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: BarcodeWidget(
                      height: 70,
                      drawText: false,
                      barcode: Barcode.code128(),
                      data: "https://github.com/Harshit2756",
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                TicketCard(
                  isFullSize: true,
                  ticket: widget.ticket ?? TicketModel.fromJson(ticketList[0]),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
