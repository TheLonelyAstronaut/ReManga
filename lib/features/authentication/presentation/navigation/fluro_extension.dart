import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:remanga/features/authentication/presentation/screens/login_screen.dart';

extension LoginScreenExtension on LoginScreen {
  static Handler getRouteHandler() {
    return Handler(handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
      return LoginScreen();
    });
  }
}