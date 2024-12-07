import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../main.dart';

class TabChipWidget extends StatelessWidget {
  const TabChipWidget({super.key, required this.title,required this.isSelected});

  final String title;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: appSizeChart.padding_16.w,
          vertical: appSizeChart.padding_8.sp),
      decoration: BoxDecoration(
        color: isSelected?appColors.colorFFFFFF:appColors.colorE0E0E0.withOpacity(0.4),
        borderRadius: BorderRadius.circular(appSizeChart.radius_20),
      ),
      child: Text(
        title,
        style: isSelected?fontStyles.font12_600_000000:fontStyles.font12_600_FFFFFF,
      ),
    );
  }
}
