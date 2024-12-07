import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../main.dart';

class CircularProgressWidget extends StatelessWidget {
  const CircularProgressWidget(
      {super.key, required this.currentValue, required this.totalCount});

  final int currentValue;
  final int totalCount;

  @override
  Widget build(BuildContext context) {
    var h;
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        SizedBox(
          width: appSizeChart.size73.w,
          height: appSizeChart.size73.h,
          child: CircularProgressIndicator(
            backgroundColor: appColors.colorE0E0E0,
            color: appColors.color890CB2,
            strokeWidth: appSizeChart.strokeSize,
            strokeCap: StrokeCap.round,
            value: currentValue / totalCount,
          ),
        ),
        Text(
          "$currentValue/$totalCount",
          style: fontStyles.font14_400_11144C,
        )
      ],
    );
  }
}
