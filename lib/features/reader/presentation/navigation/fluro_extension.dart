import 'package:fluro/fluro.dart';
import 'package:flutter/widgets.dart';
import 'package:remanga/features/reader/presentation/screens/reader_screen.dart';

extension ReaderScreenScreenNavigation on ReaderScreen {
  static Handler getRouteHandler() {
    return Handler(handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
      return ReaderScreen();
    });
  }
}