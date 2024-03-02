import 'package:flutter/material.dart';
import '../view/home_page.dart';
import '../view/splash_screen.dart'; 

class AppRoutes {
  static const String homePage = '/home_page';
  static const String splashScreen = '/splash_screen'; 

  static Map<String, WidgetBuilder> routes = {
    homePage: (context) => const HomePage(),
    splashScreen: (context) => SplashScreen(), 
  };
}
