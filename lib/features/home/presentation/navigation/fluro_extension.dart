import 'package:fluro/fluro.dart';
import 'package:flutter/widgets.dart';
import 'package:remanga/features/home/presentation/screens/home_screen.dart';

extension HomeScreenNavigation on HomeScreen {
  static Handler getRouteHandler() {
    return Handler(handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
      return HomeScreen();
    });
  }
}