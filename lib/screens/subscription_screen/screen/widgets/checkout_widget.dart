import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trogon_machine_test/main.dart';
import 'package:trogon_machine_test/screens/flash_card_listing_screen/screen/flash_card_listing_view.dart';
import 'package:trogon_machine_test/utils/custom_button/custom_button.dart';

class CheckoutWidget extends StatelessWidget {
  const CheckoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(appSizeChart.padding_16.sp),
      width: screenUtil.screenWidth,
      decoration: BoxDecoration(
        color: appColors.colorFFFFFF,
        boxShadow: [
          BoxShadow(
            color: appColors.color000000.withOpacity(0.2),
            blurRadius: 4,
            offset: Offset(0, 0),
            spreadRadius: 0,
          )
        ],
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.currency_rupee),
                  Text(
                    "4500",
                    style: fontStyles.font18_600black,
                  )
                ],
              ),
              Text(
                "For 3 Months Plan",
                style: fontStyles.font12_600_000000,
              )
            ],
          ),
          Spacer(),
          CustomButton(
            isFilled: true,
            buttonName: "Buy Now",
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FlashCardListingView(),
                  ));
            },
          )
        ],
      ),
    );
  }
}
