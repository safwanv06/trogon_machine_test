import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trogon_machine_test/main.dart';
import 'package:trogon_machine_test/utils/custom_button/custom_button.dart';

class ListingTileView extends StatelessWidget {
  const ListingTileView(
      {super.key, required this.title, required this.description});

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(appSizeChart.padding_16.sp),
      child: SizedBox(
        height: screenUtil.screenHeight / 3.8,
        width: screenUtil.screenWidth - 36,
        child: Stack(
          children: [
            Positioned(
              left: 14,
              top: 4,
              child: Container(
                height: screenUtil.screenHeight / 3.8,
                width: screenUtil.screenWidth - 64,
                decoration: ShapeDecoration(
                  color: appColors.colorFCF4D2,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: appColors.colorF8F0CD),
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                height: screenUtil.screenHeight / 4,
                width: screenUtil.screenWidth - 36,
                padding:
                    const EdgeInsets.symmetric(horizontal: 18, vertical: 19),
                decoration: ShapeDecoration(
                  color: Color(0xFFFFFCF0),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: Color(0xFFF8F0CD)),
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          title,
                          style: fontStyles.font16_600black,
                        ),
                        Spacer(),
                        Icon(
                          Icons.more_vert,
                          color: appColors.color000000,
                          size: appSizeChart.size30,
                        )
                      ],
                    ),
                    SizedBox(
                      height: appSizeChart.padding_16.h,
                    ),
                    Text(
                      description,
                      style: fontStyles.font12_500_8B8585,
                    ),
                    SizedBox(
                      height: appSizeChart.padding_8.h,
                    ),
                    Row(
                      children: [
                        CustomButton(
                          prefixIcon: Icon(
                            Icons.add,
                            color: appColors.colorFFFFFF,
                          ),
                          buttonName: "Add card",
                          onTap: () {},
                          isFilled: true,
                        ),
                        SizedBox(
                          width: appSizeChart.padding_16.w,
                        ),
                        CustomButton(
                          buttonName: "Practice",
                          onTap: () {},
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
