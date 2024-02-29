import 'package:flutter/material.dart';
import '../view/home_page.dart';

class AppRoutes {
  static const String homePage = '/home_page';

  static Map<String, WidgetBuilder> routes = {
    homePage: (context) => const HomePage()
  };
}
