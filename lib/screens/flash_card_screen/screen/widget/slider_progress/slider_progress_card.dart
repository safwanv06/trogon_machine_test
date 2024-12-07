import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trogon_machine_test/screens/flash_card_screen/screen/widget/slider_progress/circular_progress_widget.dart';

import '../../../../../main.dart';

class SliderProgressCard extends StatelessWidget {
  const SliderProgressCard(
      {super.key, required this.totalCount, required this.currentValue});

  final int currentValue;
  final int totalCount;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        SizedBox(
          width: appSizeChart.padding_58.w,
        ),
        Text(
          "Everyday Phrases",
          style: fontStyles.font16_600black,
        ),
        Spacer(),
        CircularProgressWidget(
            currentValue: currentValue, totalCount: totalCount),
        SizedBox(
          width: appSizeChart.padding_58.w,
        ),
      ],
    );
  }
}
