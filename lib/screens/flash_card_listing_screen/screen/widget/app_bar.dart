import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../main.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, required this.onTap});

  final Function() onTap;

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(70.h);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(onTap: onTap, child: SvgPicture.asset(iconData.backButton2)),
          const Spacer(),
          Text(
            "Flash Card",
            style: fontStyles.font18_600black,
          ),
          const Spacer(),
        ],
      ),
      actions: [
        Icon(
          Icons.add,
          size: appSizeChart.size40,
          color: appColors.color000000,
        ),
        SizedBox(
          width: appSizeChart.padding_16.w,
        )
      ],
    );
  }
}
