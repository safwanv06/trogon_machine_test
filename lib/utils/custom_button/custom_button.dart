import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trogon_machine_test/main.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
        this.prefixIcon,
      this.isFilled = false,
      required this.buttonName,
      required this.onTap});

  final bool isFilled;
  final String buttonName;
  final Function() onTap;
  final Widget? prefixIcon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
            vertical: appSizeChart.padding_16.h,),
        decoration: ShapeDecoration(
          color: isFilled ? appColors.color890CB2 : null,
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1, color: appColors.color890CB2),
            borderRadius: BorderRadius.circular(appSizeChart.radius_6),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: appSizeChart.padding_28.w,),
            prefixIcon??SizedBox(),
            SizedBox(width: prefixIcon!=null?appSizeChart.padding_8:0,),
            Text(buttonName,
                style: isFilled
                    ? fontStyles.font12_600_FFFFFF
                    : fontStyles.font12_600_000000),
            SizedBox(width: appSizeChart.padding_28.w,),
          ],
        ),
      ),
    );
  }
}
