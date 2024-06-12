import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'routes/route_destinations.dart';
import 'routes/routes_names.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      getPages: RouteDestinations.pages,
      initialRoute: RouteNames.splash,
    );
  }
}


