import 'package:flutter/material.dart';

sealed class GlobalValues {
  GlobalValues._();

  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
}
