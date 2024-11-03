import 'package:flutter/material.dart';
import 'package:ticket_app/base/data/app_json.dart';
import 'package:ticket_app/base/data/models/ticket_model.dart';
import 'package:ticket_app/base/res/Theme/app_styles.dart';
import 'package:ticket_app/base/res/Theme/colors.dart';
import 'package:ticket_app/base/res/routes/routes_name.dart';
import 'package:ticket_app/base/utils/constants/icons.dart';
import 'package:ticket_app/base/utils/constants/images.dart';
import 'package:ticket_app/base/widgets/section_heading.dart';
import 'package:ticket_app/screens/hotel/widget/hotel_card.dart';
import 'package:ticket_app/screens/ticket/ticket/ticket_card.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HColors.backgroundColor,
      body: ListView(
        children: [
          const SizedBox(height: 40),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Good morning", style: HStyles.headLineStyle3),
                        const SizedBox(height: 5),
                        Text("Book Tickets", style: HStyles.headLineStyle1),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(HImages.logo),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xfff4f6fd),
                  ),
                  child: const Row(
                    children: [
                      Icon(
                        HIcons.searchIconRegular,
                        color: HColors.searchIconColor,
                      ),
                      Text("Search"),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                SectionHeading(
                  title: "Upcoming Flights",
                  onTap: () =>
                      Navigator.pushNamed(context, RoutesName.allTickets),
                ),
                const SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: ticketList
                        .take(3)
                        .map(
                          (ticket) => GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(
                                  context,
                                  arguments: {"ticket": ticket},
                                  RoutesName.ticketScreen);
                            },
                            child: TicketCard(
                              ticket: TicketModel.fromJson(ticket),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
                const SizedBox(height: 40),
                SectionHeading(
                    title: "Hotels",
                    onTap: () =>
                        Navigator.pushNamed(context, RoutesName.allHotels)),
                const SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: hotelList
                        .take(3)
                        .map(
                          (hotel) => GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(
                                  context,
                                  arguments: {"hotel": hotel},
                                  RoutesName.hotelDetail);
                            },
                            child: HotelCard(hotel: hotel),
                          ),
                        )
                        .toList(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
