import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trogon_machine_test/main.dart';
import 'package:trogon_machine_test/screens/subscription_screen/screen/widgets/tab_chip_widget.dart';

class PlanTabWidget extends StatelessWidget {
  const PlanTabWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TabChipWidget(title: "Basic",isSelected: true,),
        SizedBox(width: appSizeChart.padding_8.w,),
        TabChipWidget(title: "Gold",isSelected: false,),
        SizedBox(width: appSizeChart.padding_8.w,),
        TabChipWidget(title: "Premium",isSelected: false,),
      ],
    );
  }
}
