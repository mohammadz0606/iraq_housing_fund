import 'package:flutter/material.dart';
import 'package:iraq_housing_fund/core/utils/functions.dart';

import 'app_colors.dart';

final ThemeData appTheme = ThemeData(
  //: 'Cairo'
  fontFamily: 'IBM Plex Sans' ,
  primaryColor: AppColors.primary,
  useMaterial3: true,
  appBarTheme: const AppBarTheme(
    scrolledUnderElevation: 0,
    elevation: 0,
    centerTitle: true,
    backgroundColor: Colors.white,
    iconTheme: IconThemeData(
      color: Colors.black,
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: ButtonStyle(
      side: WidgetStatePropertyAll(BorderSide(width: 1, color: Colors.white)),
      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      foregroundColor: WidgetStatePropertyAll(Colors.white),
      iconColor: WidgetStatePropertyAll(Colors.white),
      overlayColor: WidgetStatePropertyAll(Colors.white.withValues(alpha: 0.2)),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      foregroundColor: WidgetStatePropertyAll(Colors.white),
      backgroundColor: WidgetStatePropertyAll(AppColors.primary),
      padding: WidgetStatePropertyAll(EdgeInsets.only(top: 15,bottom: 15)),
      overlayColor: WidgetStatePropertyAll(Colors.white.withValues(alpha: 0.2)),
      side: WidgetStatePropertyAll(BorderSide(width: 0, color: Colors.transparent)),
      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    )
  ),
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      foregroundColor: WidgetStatePropertyAll(Colors.white),
      overlayColor: WidgetStatePropertyAll(AppColors.primary.withValues(alpha: 0.2)),
    ),
  ),
);
