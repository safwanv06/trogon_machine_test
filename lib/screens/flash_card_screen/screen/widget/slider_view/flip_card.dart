import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trogon_machine_test/main.dart';
import 'package:trogon_machine_test/model/card_data_model.dart';
import 'package:trogon_machine_test/screens/flash_card_screen/screen/widget/slider_view/card_view.dart';

class FlipCardView extends StatelessWidget {
  FlipCardView({super.key, required this.word});

  final CardDataModel word;
  final GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();

  @override
  Widget build(BuildContext context) {
    return FlipCard(
        flipOnTouch: false,
        key: cardKey,
        front: Padding(
          padding: EdgeInsets.symmetric(vertical: appSizeChart.padding_16.h),
          child: CardView(
            text: word.word,
            isFrontView: true,
            onTap: () {
              cardKey.currentState?.toggleCard();
            },
          ),
        ),
        back: Padding(
          padding: EdgeInsets.symmetric(vertical: appSizeChart.padding_16.h),
          child: CardView(
            text: word.meaning,
            isFrontView: false,
            onTap: () {
              cardKey.currentState?.toggleCard();
            },
          ),
        ));
  }
}
