import 'package:flutter/material.dart';

class SlideFromBottomPage<T> extends Page<T> {
  final Widget child;

  const SlideFromBottomPage({
    required this.child,
    //maintainState = true,
    //fullscreenDialog = false,
    LocalKey? key,
    String? name,
    Object? arguments,
    String? restorationId,
  }) : super(
            key: key,
            name: name,
            arguments: arguments,
            restorationId: restorationId);

  @override
  Route<T> createRoute(BuildContext context) {
    return PageRouteBuilder(
        pageBuilder: (BuildContext context, Animation<double> animation,
            Animation<double> secondaryAnimation) {
          return this.child;
        },
        settings: this,
        transitionsBuilder: (context, animation, secondaryAnimation, widget) {
          return SlideTransition(
              child: widget,
              position: animation.drive(
                  Tween(begin: Offset(0, 1), end: Offset(0, 0))
                      .chain(CurveTween(curve: Curves.easeInOut))));
        });
  }
}
