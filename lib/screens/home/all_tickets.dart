import 'package:flutter/material.dart';
import 'package:ticket_app/screens/home/widget/ticket/ticket_card.dart';

import '../../base/utils/app_json.dart';

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
                child: TicketCard(ticket: ticket, isFullSize: true),
              ),
            )
            .toList(),
      ),
    );
  }
}
