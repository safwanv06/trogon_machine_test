import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trogon_machine_test/screens/subscription_screen/screen/widgets/checkout_widget.dart';
import 'package:trogon_machine_test/screens/subscription_screen/screen/widgets/foreground_widgets.dart';
import 'package:trogon_machine_test/screens/subscription_screen/screen/widgets/plan_details_view.dart';

import '../../../main.dart';

class SubscriptionScreen extends StatelessWidget {
  const SubscriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: screenUtil.screenHeight / 2.5,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: const Alignment(1, 0),
                end: const Alignment(-1, 0),
                colors: [
                  appColors.colorA40DEE.withOpacity(0.8),
                  appColors.color9C1DC2
                ],
              ),
            ),
          ),
          ForegroundWidgets(),
          Positioned(
              top: screenUtil.screenHeight/2.8,
              left: appSizeChart.padding_16.w,
              child: PlanDetailsView()),
          Positioned(
              bottom: 0,
              child: CheckoutWidget())
        ],
      ),
    );
  }
}
