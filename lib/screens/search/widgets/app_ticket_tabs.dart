import 'package:flutter/material.dart';

import 'app_tab.dart';

class AppTicketTabs extends StatelessWidget {
  const AppTicketTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: const Color(0xfff4f6fd),
      ),
      child: const Row(
        children: [
          AppTabs(title: "Airline Tickets", isBorder: true, isSelected: true),
          AppTabs(title: "Hotels"),
        ],
      ),
    );
  }
}
