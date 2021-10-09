import 'package:flutter/material.dart';

import '../../global_navigation_configuration.dart';

abstract class GlobalRoutePageManager extends ChangeNotifier {
  List<Page> get pages;
  GlobalKey<NavigatorState> get navigatorKey;
  GlobalNavigationConfiguration get currentConfiguration;
  Future<void> setNewRoutePath(GlobalNavigationConfiguration configuration);
  void didPop(Page page);
  void openMain();
  void openUnknown();
  void openLogin();
  void openReader();
  void openTitleDescription();
}
