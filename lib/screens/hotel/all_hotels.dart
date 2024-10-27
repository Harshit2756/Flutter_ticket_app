import 'package:flutter/material.dart';
import 'package:ticket_app/base/data/models/hotel_model.dart';
import 'package:ticket_app/screens/hotel/widget/hotel_grid_view.dart';

import '../../base/res/Theme/colors.dart';
import '../../base/data/app_json.dart';

class AllHotels extends StatelessWidget {

  const AllHotels({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HColors.backgroundColor,
      appBar: AppBar(
        title: const Text("All Hotels"),
        backgroundColor: HColors.backgroundColor,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(8),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.9,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
        ),
        itemCount: hotelList.length,
        itemBuilder: (context, index) =>
            HotelCardGridView(hotel: HotelModel.fromJson(hotelList[index])),
      ),
    );
  }
}
