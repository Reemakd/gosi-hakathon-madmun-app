import 'package:flutter/material.dart';
import 'package:gosi_hakathon_madmun_app/view/saving_screen.dart';
import 'package:gosi_hakathon_madmun_app/view/onboarding_screen.dart';
import '../view/home_page.dart';
import '../view/splash_screen.dart'; 

class AppRoutes {
  static const String homePage = '/home_page';
  static const String splashScreen = '/splash_screen'; 
  static const String savingScreen = '/saving_screen'; 
  static const String onboardingScreen = '/onboarding';

  static Map<String, WidgetBuilder> routes = {
    homePage: (context) => const HomePage(),
    splashScreen: (context) => SplashScreen(), 
    savingScreen: (context) => const SavingScreen(), 
    onboardingScreen: (context) => OnboardingScreen()
  };
}