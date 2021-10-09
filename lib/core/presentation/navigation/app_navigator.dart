import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';

class AppNavigator {
  FluroRouter _fluro;

  AppNavigator(this._fluro);
  
  void navigate(BuildContext context, String path, { Object? arguments }) {
    this._fluro.navigateTo(
        context,
        path,
        routeSettings: RouteSettings(
          arguments: arguments
        ),
        transition: TransitionType.native
    );
  }

  void openModal(BuildContext context, String path, { Object? arguments }) {
    this._fluro.navigateTo(
        context,
        path,
        routeSettings: RouteSettings(
            arguments: arguments
        ),
        transition: TransitionType.nativeModal
    );
  }

  void goBack(BuildContext context) {
    if(Navigator.of(context).canPop()) {
      this._fluro.pop(context);
    }
  }

  void toRoot(BuildContext context) {
    Navigator.of(context).popUntil((route) => route.isFirst);
  }

  FluroRouter getRawNavigator() => _fluro;
}