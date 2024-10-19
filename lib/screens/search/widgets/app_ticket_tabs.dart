import 'package:flutter/material.dart';

import 'app_tab.dart';

class AppTicketTabs extends StatelessWidget {
  final List<String> tabs;
  const AppTicketTabs({super.key, required this.tabs});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: const Color(0xfff4f6fd),
      ),
      child: Row(
        children: [
          AppTabs(title: tabs[0], isBorder: true, isSelected: true),
          AppTabs(title: tabs[1]),
        ],
      ),
    );
  }
}
