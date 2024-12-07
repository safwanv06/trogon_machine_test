import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../main.dart';

class CustomAppBarWidget extends StatelessWidget {
  const CustomAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          imageData.appBarImage,
          width: screenUtil.screenWidth,
          fit: BoxFit.fitWidth,
        ),
        Padding(
            padding: EdgeInsets.only(
                top: appSizeChart.padding_58.h,
                left: appSizeChart.padding_28.w),
            child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: SvgPicture.asset(iconData.backButton))),
      ],
    );
  }
}
