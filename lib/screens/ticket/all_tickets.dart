import 'package:flutter/material.dart';
import 'package:ticket_app/base/data/models/ticket_model.dart';
import 'package:ticket_app/screens/ticket/ticket/ticket_card.dart';

import '../../base/data/app_json.dart';
import '../../base/res/routes/routes_name.dart';

class AllTickets extends StatelessWidget {
  const AllTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All Tickets'),
      ),
      body: ListView(
        children: ticketList
            .map(
              (ticket) => Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(
                        context,
                        arguments: {"ticket": ticket},
                        RoutesName.ticketScreen);
                  },
                  child: TicketCard(
                      ticket: TicketModel.fromJson(ticket), isFullSize: true),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
