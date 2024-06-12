import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:telead/routes/routes_names.dart';
import 'package:telead/utils/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Get.toNamed(RouteNames.onboarding);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColors,
      body: Center(
        child: Image.asset('assets/images/splash_icon.png'),
      ),
    );
  }
}
