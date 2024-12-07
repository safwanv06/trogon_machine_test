import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trogon_machine_test/screens/flash_card_screen/controller/controller.dart';
import 'package:trogon_machine_test/screens/flash_card_screen/screen/widget/action_buttons.dart';
import 'package:trogon_machine_test/screens/flash_card_screen/screen/widget/slider_view/corousal_slider.dart';
import 'package:trogon_machine_test/screens/flash_card_screen/screen/widget/custom_app_bar_widget.dart';
import 'package:trogon_machine_test/screens/flash_card_screen/screen/widget/slider_progress/slider_progress_card.dart';

import '../../../utils/shared_data/static_data.dart';

class FlashCardView extends StatelessWidget {
  const FlashCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<FlashCardController>(
        builder: (context, value, child) {
          return Column(
            children: [
              const CustomAppBarWidget(),
              Expanded(
                child: SliderProgressCard(
                  currentValue: value.index,
                  totalCount: words.length,
                ),
              ),
              Expanded(
                  flex: 3,
                  child: CarouselSliderView(
                    controller: value.controller,
                  )),
              Expanded(
                  child: ActionButtons(
                onNextTap: () {
                  value.onNextTap();
                },
                onPreviousTap: () {
                  value.onPreviousTap();
                },
              )),
            ],
          );
        },
      ),
    );
  }
}
