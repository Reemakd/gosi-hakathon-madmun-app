import 'package:flutter/material.dart';
import '../presentation/iphone_14_15_pro_one_screen/iphone_14_15_pro_one_screen.dart';

class AppRoutes {
  static const String iphone1415ProOneScreen = '/iphone_14_15_pro_one_screen';

  static Map<String, WidgetBuilder> routes = {
    iphone1415ProOneScreen: (context) => Iphone1415ProOneScreen()
  };
}
