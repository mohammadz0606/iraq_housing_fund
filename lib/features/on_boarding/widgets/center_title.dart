import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constants/assets.dart';

class CenterTitleWidget extends StatelessWidget {
  const CenterTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Column(
        spacing: 20,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            AppAssets.logo,
            alignment: Alignment.center,
          ),
          Text(
            tr('WelcomeBack'),
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 31.sp,
            ),
          ),
          Text(
            tr('WelcomeBackDescription'),
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w300,
              fontSize: 13.sp,
            ),
          ),
        ],
      ),
    );
  }
}
