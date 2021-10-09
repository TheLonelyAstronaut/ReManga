import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:provider/provider.dart';
import 'package:remanga/app/presentation/navigation_deprecated/global_navigator/page_manager/global_route_page_manager.dart';

import '../../global_navigation_configuration.dart';
import 'global_router_deleagte.dart';

@LazySingleton(as: GlobalRouterDelegate)
class GlobalRouterDelegateImpl
    extends RouterDelegate<GlobalNavigationConfiguration>
    with
        ChangeNotifier,
        PopNavigatorRouterDelegateMixin<GlobalNavigationConfiguration>
    implements GlobalRouterDelegate {
  late final GlobalRoutePageManager pageManager;

  @override
  GlobalKey<NavigatorState> get navigatorKey => pageManager.navigatorKey;

  @override
  GlobalNavigationConfiguration get currentConfiguration =>
      pageManager.currentConfiguration;

  // DI xDDDDD
  GlobalRouterDelegateImpl(this.pageManager);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<GlobalRoutePageManager>.value(
        value: pageManager,
        child: Consumer<GlobalRoutePageManager>(
          builder: (context, pageManager, child) {
            return Navigator(
                key: navigatorKey,
                onPopPage: _onPopPage,
                pages: pageManager.pages);
          },
        ));
  }

  @override
  Future<void> setNewRoutePath(
      GlobalNavigationConfiguration configuration) async {
    await pageManager.setNewRoutePath(configuration);
  }

  bool _onPopPage(Route<dynamic> route, dynamic result) {
    return route.didPop(result);
  }
}
