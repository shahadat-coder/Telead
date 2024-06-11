import 'package:get/get.dart';
import 'package:telead/screens/splash/splash.dart';

import 'routes_names.dart';

class RouteDestinations{
  static List<GetPage> pages = [

  GetPage(
  name: RouteNames.splash,
  page: ()=> const SplashScreen(),
  ),

  ];
}