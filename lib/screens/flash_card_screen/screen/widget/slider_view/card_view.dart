import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trogon_machine_test/main.dart';

class CardView extends StatelessWidget {
  const CardView(
      {super.key,
      required this.text,
      required this.isFrontView,
      required this.onTap});

  final String text;
  final bool isFrontView;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: ShapeDecoration(
        gradient: LinearGradient(
          begin: const Alignment(0.00, -1.00),
          end: const Alignment(0, 1),
          colors: [appColors.colorA40DEE, appColors.color9C1DC2],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(appSizeChart.radius_30),
        ),
      ),
      child: Column(
        children: [
          const Spacer(),
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: appSizeChart.padding_16.w),
            child: Text(
              text,
              style: isFrontView
                  ? fontStyles.font40_500_FFFFFF
                  : fontStyles.font12_600_FFFFFF,
            ),
          ),
          Spacer(),
          InkWell(
            onTap: onTap,
            child: Container(
              decoration: ShapeDecoration(
                color: appColors.colorFFFFFF,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(appSizeChart.radius_20),
                ),
                shadows: [
                  BoxShadow(
                    color: appColors.color000000.withOpacity(0.5),
                    blurRadius: 15,
                    offset: const Offset(0, 5),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: appSizeChart.padding_28.w,
                    vertical: appSizeChart.padding_16.h),
                child: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: appColors.colorA40DEE,
                  size: appSizeChart.size20.sp,
                ),
              ),
            ),
          ),
          SizedBox(
            height: appSizeChart.padding_28.h,
          )
        ],
      ),
    );
  }
}
