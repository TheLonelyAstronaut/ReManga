import 'package:fluro/fluro.dart';
import 'package:flutter/widgets.dart';
import 'package:remanga/features/settings/presentation/screens/settings_screen.dart';

extension SettingsScreenNavigation on SettingsScreen {
  static Handler getRouteHandler() {
    return Handler(handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
      return SettingsScreen();
    });
  }
}