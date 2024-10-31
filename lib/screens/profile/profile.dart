import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/widgets/text/text_style_third.dart';

import '../../base/res/Theme/app_styles.dart';
import '../../base/res/Theme/colors.dart';
import '../../base/utils/constants/images.dart';
import 'widgets/row_layout.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HColors.backgroundColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [
          const SizedBox(height: 40),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 86,
                width: 86,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(HImages.logo),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Book Tickets", style: HStyles.headLineStyle1),
                  Text("New-York", style: HStyles.headLineStyle4),
                  SizedBox(height: 5),
                  DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color(0xfffef4f3),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Row(
                        children: [
                          DecoratedBox(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Color(0xff526799),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Icon(
                                size: 15,
                                color: Colors.white,
                                FluentSystemIcons.ic_fluent_shield_filled,
                              ),
                            ),
                          ),
                          const SizedBox(width: 5),
                          Text(
                            "Premium status ",
                            style: TextStyle(
                                color: Color(0xff526799),
                                fontSize: 15,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Spacer(),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Edit",
                  style: HStyles.textStyle.copyWith(
                    color: HColors.primaryColor,
                  ),
                ),
              ),
            ],
          ),
          Divider(color: Colors.grey.shade300),
          Stack(
            children: [
              Container(
                height: 90,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: HColors.primaryColor,
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                      child: Icon(
                        size: 27,
                        color: HColors.primaryColor,
                        FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextStyleThird(text: 'You\'v got a new reward'),
                        Text(
                          'You have 87 flights in a year',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                top: -40,
                right: -45,
                child: Container(
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: HColors.buttonColor, width: 18),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 25),
          Text(
            "Accumulated miles",
            style: HStyles.headLineStyle2,
          ),
          const SizedBox(height: 5),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                const SizedBox(height: 15),
                Text(
                  "13080",
                  style: HStyles.headLineStyle1.copyWith(fontSize: 45),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Miles accured",
                      style: HStyles.headLineStyle4.copyWith(fontSize: 16),
                    ),
                    Text(
                      "11 JAN 2022",
                      style: HStyles.headLineStyle4.copyWith(fontSize: 16),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Divider(thickness: 1, color: Colors.grey),
                const SizedBox(height: 10),
                RowLayout(
                  heading1: "23 042",
                  text1: "Miles",
                  heading2: "Airline CO",
                  text2: "Received from",
                ),
                const SizedBox(height: 10),
                Divider(thickness: 1, color: Colors.grey.shade400),
                const SizedBox(height: 10),
                RowLayout(
                  heading1: "24",
                  text1: "Miles",
                  heading2: "McDonal's",
                  text2: "Received from",
                ),
                const SizedBox(height: 4),
                Divider(thickness: 1, color: Colors.grey.shade400),
                const SizedBox(height: 4),
                RowLayout(
                  heading1: "52 340",
                  text1: "Miles",
                  heading2: "Exuma",
                  text2: "Received from",
                ),
                const SizedBox(height: 25),
                TextButton(
                  child: Text("How to get more miles",
                      style: HStyles.textStyle
                          .copyWith(color: HColors.primaryColor)),
                  onPressed: () {},
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
