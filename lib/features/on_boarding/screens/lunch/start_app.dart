import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/assets.dart';
import '../../../../core/theme/app_colors.dart';
import '../../widgets/center_title.dart';
import '../../widgets/change_lang.dart';

class StartAppScreen extends StatelessWidget {
  const StartAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppAssets.backGround),
            fit: BoxFit.cover,
          ),
        ),
        //alignment: Alignment(0, -0.5),
        child: SafeArea(
          child: Column(
            spacing: 50,
            children: [
              ChangeLangWidget(),
              CenterTitleWidget(),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 20.w,
                    right: 20.w,
                    bottom: 10.h,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    spacing: 20,
                    children: [
                      Text(
                        tr('startAppDescription'),
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 14.sp,
                          color: AppColors.lightGray,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: Theme.of(context)
                              .elevatedButtonTheme
                              .style
                              ?.copyWith(
                                foregroundColor:
                                    WidgetStatePropertyAll(Colors.black),
                                backgroundColor:
                                    WidgetStatePropertyAll(Colors.white),
                                overlayColor: WidgetStatePropertyAll(
                                  AppColors.primary.withValues(alpha: 0.2),
                                ),
                              ),
                          onPressed: () {},
                          child: Text(tr('EnterLoanID')),
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: OutlinedButton(
                          style: Theme.of(context)
                              .outlinedButtonTheme
                              .style
                              ?.copyWith(
                                padding: WidgetStatePropertyAll(
                                  EdgeInsets.only(top: 15, bottom: 15),
                                ),
                                overlayColor: WidgetStatePropertyAll(
                                  AppColors.primary.withValues(alpha: 0.2),
                                ),
                              ),
                          onPressed: () {},
                          child: Text(tr('ScanCode')),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
