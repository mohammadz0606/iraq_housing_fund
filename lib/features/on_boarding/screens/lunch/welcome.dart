import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iraq_housing_fund/core/theme/app_colors.dart';
import 'package:iraq_housing_fund/core/utils/navigation.dart';

import '../../../../core/constants/assets.dart';
import '../../widgets/center_title.dart';
import '../../widgets/change_lang.dart';
import 'start_app.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

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
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    spacing: 10,
                    children: [
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
                          onPressed: () {
                            pushAndReplacementReplacement(
                              context,
                              const StartAppScreen(),
                            );
                          },
                          child: Text(tr('GetStarted')),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '${tr('AlreadyHaveAccount')}?',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                              fontSize: 14.sp,
                            ),
                          ),
                          TextButton(
                            onPressed: () {

                            },
                            child: Text(
                              tr('SignIn'),
                            ),
                          ),
                        ],
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
