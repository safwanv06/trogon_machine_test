import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trogon_machine_test/main.dart';
import 'package:trogon_machine_test/utils/custom_button/custom_button.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons(
      {super.key, required this.onPreviousTap, required this.onNextTap});

  final Function() onPreviousTap;
  final Function() onNextTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: appSizeChart.padding_35.w),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              onTap: onPreviousTap,
              buttonName: "Previous",
            ),
          ),
          SizedBox(
            width: appSizeChart.padding_58.w,
          ),
          Expanded(
            child: CustomButton(
              onTap: onNextTap,
              buttonName: "Next",
            ),
          ),
        ],
      ),
    );
  }
}
