import 'package:fluro/fluro.dart';
import 'package:flutter/widgets.dart';
import 'package:remanga/core/model/title/preview/title_preview.dart';
import 'package:remanga/features/title/presentation/screens/title_screen.dart';

extension TitleDescriptionScreenNavigation on TitleScreen {
  static Handler getRouteHandler() {
    return Handler(handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
      final args = context?.settings?.arguments as TitlePreview;

      return TitleScreen(args);
    });
  }
}