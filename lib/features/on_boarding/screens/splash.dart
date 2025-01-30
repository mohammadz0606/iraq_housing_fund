import 'dart:async';

import 'package:flutter/material.dart';
import 'package:iraq_housing_fund/core/constants/assets.dart';
import 'package:iraq_housing_fund/core/utils/navigation.dart';
import 'package:iraq_housing_fund/features/on_boarding/screens/lunch/welcome.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    _thenEndSplash();
    super.initState();
  }

  void _thenEndSplash() {
    Timer(
      const Duration(seconds: 2),
      () {
        pushAndReplacementReplacement(context, const WelcomeScreen());
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppAssets.backGround),
            fit: BoxFit.cover,
          ),
        ),
        alignment: Alignment(0, -0.5),
        child: Image.asset(
          AppAssets.logo,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
