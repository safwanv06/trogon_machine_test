import 'package:flutter/material.dart';
import 'package:trogon_machine_test/screens/flash_card_listing_screen/screen/widget/listing_tile_view.dart';
import 'package:trogon_machine_test/screens/flash_card_listing_screen/screen/widget/search_field.dart';
import 'package:trogon_machine_test/screens/flash_card_screen/screen/flash_card_view.dart';

import 'widget/app_bar.dart';

class FlashCardListingView extends StatelessWidget {
  const FlashCardListingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        onTap: () {
          Navigator.pop(context);
        },
      ),
      body: Column(
        children: [
          SearchField(),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FlashCardView(),
                        ));
                  },
                  child: const ListingTileView(
                    title: "Every day tasks",
                    description:
                        "Master common expressions used in daily conversations.",
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
