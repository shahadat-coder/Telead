import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:telead/routes/routes_names.dart';

import '../../utils/colors.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          image: Image.asset(
            'assets/images/icon.png',
            height: 350,
            width: 350,
          ),
          title: "Online Learning",
          body:
          "We Provide Classes Online Classes and Pre Recorded Leactures.!",
        ),
        PageViewModel(
          image: Image.asset(
            'assets/images/icon.png',
            height: 350,
            width: 350,
          ),
          title: "Learn from Anytime",
          body:
          "Analyse your scores and Track your results",
        ),
        PageViewModel(
          image: Image.asset(
            'assets/images/icon.png',
            height: 350,
            width: 350,
          ),
          title: "Get Online Certificate",
          body: "Let's start living healthy and well with us right now",
        ),
      ],
      onDone: () {
        Get.toNamed(RouteNames.continueScreen);
      },
      done: const Text(
        'Done',
        style: TextStyle(color: AppColors.primaryColors),
      ),
      // onSkip: () {
      //
      // },
      showSkipButton: true,
      skip: const Text(
        'Skip',
        style: TextStyle(color: AppColors.primaryColors),
      ),
      showNextButton: true,
      next: const Icon(
        Icons.arrow_forward,
        color: AppColors.primaryColors,
      ),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        activeColor: AppColors.primaryColors,
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
      ),
      bodyPadding: const EdgeInsets.only(top: 150),
    );
  }
}