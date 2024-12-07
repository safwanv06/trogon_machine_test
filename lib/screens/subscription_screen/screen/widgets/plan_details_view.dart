import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trogon_machine_test/main.dart';

class PlanDetailsView extends StatelessWidget {
  const PlanDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenUtil.screenWidth - 32,
      decoration: BoxDecoration(
          color: appColors.colorFFFFFF,
          borderRadius: BorderRadius.circular(appSizeChart.radius_20),
          border: Border.all(color: appColors.colorFFE67A)),
      child: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                imageData.subscriptionBanner,
                fit: BoxFit.fitWidth,
                width: screenUtil.screenWidth - 32,
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: appSizeChart.padding_16.h,
                    left: appSizeChart.padding_16.h,
                    right: appSizeChart.padding_16.h),
                child: Row(
                  children: [
                    Text(
                      "BASIC",
                      style: fontStyles.font18_600black,
                    ),
                    Spacer(),
                    Icon(Icons.currency_rupee),
                    Text(
                      "4500",
                      style: fontStyles.font18_600black,
                    )
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(appSizeChart.padding_16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Self-paced learning - I am self-motivated and disciplined to learn by myself through recorded lessons.",
                  style: fontStyles.font12_600_000000,
                ),
                SizedBox(
                  height: appSizeChart.padding_8.h,
                ),
                Text(
                  "Recorded Lessons by Aparna (6-month validity)",
                  style: fontStyles.font12_600_000000,
                ),
                SizedBox(
                  height: appSizeChart.padding_8.h,
                ),
                Text(
                  "AI-powered speech/pronunciation practice is available for 2 weeks with an option to extend with an additional add-on subscription.",
                  style: fontStyles.font12_600_000000,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
