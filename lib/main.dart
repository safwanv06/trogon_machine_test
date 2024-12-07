import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:trogon_machine_test/screens/flash_card_screen/controller/controller.dart';
import 'package:trogon_machine_test/utils/image_data/icon_data.dart';
import 'package:trogon_machine_test/utils/image_data/image_data.dart';
import 'package:trogon_machine_test/utils/size_chart/app_size_chart.dart';
import 'package:trogon_machine_test/utils/styles/color_theme.dart';
import 'package:trogon_machine_test/utils/styles/font_style.dart';

import 'screens/subscription_screen/screen/subscription_screen.dart';

ImageData imageData = ImageData();
ScreenUtil screenUtil = ScreenUtil();
AppSizeChart appSizeChart = AppSizeChart();
IconsData iconData = IconsData();
AppColors appColors =AppColors();
FontStyles fontStyles =FontStyles();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => FlashCardController(),)
      ],
      child: ScreenUtilInit(
        designSize: const Size(390, 828),
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const SubscriptionScreen(),
        ),
      ),
    );
  }
}
