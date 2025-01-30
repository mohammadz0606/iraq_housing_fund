import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/networks/network.dart';
import 'core/theme/app_theme.dart';
import 'core/utils/global_values.dart';
import 'core/utils/shared_preferences.dart';
import 'features/on_boarding/screens/splash.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Network().init();
  _statusBaSettings();

  await Future.wait([
    EasyLocalization.ensureInitialized(),
    AppSharedPreferences().init(),
    _setPreferredOrientations(),
  ]);

  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('en'),
        Locale('ar'),
      ],
      path: 'assets/lang',
      saveLocale: true,
      useOnlyLangCode: true,
      fallbackLocale: const Locale('en'),
      child: const IraqHousingFundApp(),
    ),
  );
}

void _statusBaSettings() {
  return SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.dark,
    ),
  );
}

Future<void> _setPreferredOrientations() {
  return SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
    ],
  );
}

class IraqHousingFundApp extends StatelessWidget {
  const IraqHousingFundApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      useInheritedMediaQuery: true,
      builder: (_, child) {
        return MaterialApp(
          title: 'Iraq Housing Fund',
          debugShowCheckedModeBanner: false,
          navigatorKey: GlobalValues.navigatorKey,
          locale: context.locale,
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          builder: (context, child) {
            return MediaQuery(
              data: MediaQuery.of(context).copyWith(
                textScaler: TextScaler.noScaling,
              ),
              child: child!,
            );
          },
          theme: appTheme,
          home: child,
        );
      },
      child: const SplashScreen(),
    );
  }
}
