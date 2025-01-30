import 'package:easy_localization/easy_localization.dart';
import 'package:iraq_housing_fund/core/utils/global_values.dart';

bool get isEnLang {
  return GlobalValues.navigatorKey.currentContext?.locale.languageCode == 'en'
      ? true
      : false;
}
