import 'package:flutter/material.dart';
import 'package:ticket_app/screens/search/widgets/ticket_promotion.dart';

import '../../base/res/Theme/app_styles.dart';
import '../../base/res/Theme/colors.dart';
import '../../base/res/routes/routes_name.dart';
import '../../base/utils/constants/icons.dart';
import '../../base/widgets/section_heading.dart';
import 'widgets/app_ticket_tabs.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HColors.backgroundColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [
          const SizedBox(height: 40),
          Text(
            "What are\nyou looking for?",
            style: HStyles.headLineStyle1.copyWith(fontSize: 35),
          ),
          const SizedBox(height: 20),
          const AppTicketTabs(tabs: ["Airline Tickets", "Hotels"]),
          const SizedBox(height: 20),
          TextFormField(
            decoration: InputDecoration(
              filled: true,
              hintText: "Departure",
              fillColor: Colors.white,
              hintStyle: HStyles.textStyle,
              prefixIcon: const Icon(HIcons.planeIconDeparture,
                  color: HColors.planeIconColor),
              border: const OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
            ),
          ),
          const SizedBox(height: 20),
          TextFormField(
            decoration: InputDecoration(
              filled: true,
              hintText: "Arrival",
              fillColor: Colors.white,
              hintStyle: HStyles.textStyle,
              prefixIcon: const Icon(HIcons.planeIconArival,
                  color: HColors.planeIconColor),
              border: const OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: HColors.buttonColor,
                minimumSize: const Size(double.infinity, 50),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                )),
            child: Text(
              "Find Tickets",
              style: HStyles.textStyle.copyWith(color: Colors.white),
            ),
          ),
          const SizedBox(height: 40),
          SectionHeading(
            title: "Upcoming Flights",
            onTap: () {
              Navigator.pushNamed(context, RoutesName.allTickets);
            },
          ),
          const SizedBox(height: 20),
          const TicketPromotion(),
        ],
      ),
    );
  }
}
