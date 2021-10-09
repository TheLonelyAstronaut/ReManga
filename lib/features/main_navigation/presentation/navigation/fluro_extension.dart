import 'package:fluro/fluro.dart';
import 'package:flutter/widgets.dart';
import 'package:remanga/features/main_navigation/presentation/screens/main_navigation_screen.dart';

extension MainNavigationScreenNavigation on MainNavigationScreen {
  static Handler getRouteHandler() {
    return Handler(handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
      return MainNavigationScreen();
    });
  }
}