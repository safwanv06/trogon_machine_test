import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trogon_machine_test/main.dart';
import 'package:trogon_machine_test/screens/subscription_screen/screen/widgets/plan_tab_widget.dart';

class ForegroundWidgets extends StatelessWidget {
  const ForegroundWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(appSizeChart.padding_16.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CircleAvatar(
                  backgroundColor: appColors.colorE0E0E0.withOpacity(0.7),
                  child: Icon(
                    Icons.close,
                    color: appColors.colorFFFFFF,
                    size: appSizeChart.size20,
                  ),
                ),
              ],
            ),
            Text(
              "Upgrade",
              style: fontStyles.font21_600_FFFFFF,
            ),
            SizedBox(height: appSizeChart.padding_8.h,),
            Text(
              "Unlock premium features and take your English skills to the next level.",
              style: fontStyles.font14_400_FFFFFF,
            ),
            SizedBox(height: appSizeChart.padding_58.h,),
            PlanTabWidget()
          ],
        ),
      ),
    );
  }
}
