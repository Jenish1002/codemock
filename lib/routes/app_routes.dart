import 'package:flutter/material.dart';
import 'package:codemock/presentation/control_ac_off_screen/control_ac_off_screen.dart';
import 'package:codemock/presentation/control_ac_on_screen/control_ac_on_screen.dart';
import 'package:codemock/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String controlAcOffScreen = '/control_ac_off_screen';

  static const String controlAcOnScreen = '/control_ac_on_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    controlAcOffScreen: (context) => ControlAcOffScreen(),
    controlAcOnScreen: (context) => ControlAcOnScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
