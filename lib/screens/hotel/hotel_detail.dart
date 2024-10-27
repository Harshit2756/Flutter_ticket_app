import 'package:flutter/material.dart';
import 'package:ticket_app/base/data/models/hotel_model.dart';

import '../../base/res/Theme/app_styles.dart';
import '../../base/res/Theme/colors.dart';
import '../../base/widgets/text/readmore.dart';

class Hoteldetail extends StatelessWidget {
  final HotelModel hotel;

  const Hoteldetail({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 300,
            leading: Container(
              margin: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: HColors.primaryColor,
              ),
              child: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  Positioned.fill(
                    child: Image.asset(
                      "assets/images/${hotel.image}",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    right: 20,
                    child: ColoredBox(
                      color: Colors.black.withOpacity(0.5),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 4.0),
                        child: Text(
                          hotel.place!,
                          style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                              shadows: [
                                Shadow(
                                  color: HColors.primaryColor,
                                  offset: const Offset(2, 2),
                                  blurRadius: 10.0,
                                ),
                              ]),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ReadMoreText(hotel.description!),
                      const SizedBox(height: 20),
                      Text(
                        "More Images",
                        style: HStyles.headLineStyle2
                            .copyWith(color: Colors.black),
                      ),
                      SizedBox(
                        height: 200.0,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 3,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: EdgeInsets.all(16),
                              child: Image.asset(
                                "assets/images/${hotel.images![index]}",
                              ),
                            );
                          },
                        ),
                      ),
                    ],
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
