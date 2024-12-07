import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trogon_machine_test/main.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: appSizeChart.padding_16.w),
      child: TextField(
        enabled: false,
        decoration: InputDecoration(
            hintText: "Search",
            hintStyle: fontStyles.font14_400_11144C,
            fillColor: appColors.colorF5F5F5,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(appSizeChart.radius_10),
                borderSide: BorderSide(color: appColors.colorE0E0E0)),
            prefixIcon: const Icon(Icons.search)),
      ),
    );
  }
}
