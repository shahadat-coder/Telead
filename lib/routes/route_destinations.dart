import 'package:get/get.dart';
import 'package:telead/screens/auth/continue_screen/continue_screen.dart';
import 'package:telead/screens/auth/login/login.dart';
import 'package:telead/screens/auth/register/register.dart';
import 'package:telead/screens/onboardings/onboarding.dart';
import 'package:telead/screens/splash/splash.dart';

import 'routes_names.dart';

class RouteDestinations{
  static List<GetPage> pages = [

  GetPage(
  name: RouteNames.splash,
  page: ()=> const SplashScreen(),
  ),
    GetPage(
      name: RouteNames.onboarding,
      page: ()=> const OnboardingScreen(),
    ),
    GetPage(
      name: RouteNames.login,
      page: ()=> const LoginScreen(),
    ),
    GetPage(
      name: RouteNames.register,
      page: ()=> const RegisterScreen(),
    ),GetPage(
      name: RouteNames.continueScreen,
      page: ()=> const ContinueScreen(),
    ),

  ];
}