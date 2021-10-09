import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:provider/provider.dart';
import 'package:remanga/app/presentation/navigation_deprecated/main_navigator/page_manager/main_route_page_manager.dart';
import 'package:remanga/core/presentation/navigation_deprecated/transitions/no_animation_transition_delegate.dart';

import '../../global_navigation_configuration.dart';
import 'main_router_delegate.dart';

@LazySingleton(as: MainRouterDelegate)
class MainRouterDelegateImpl
    extends RouterDelegate<GlobalNavigationConfiguration>
    with
        ChangeNotifier,
        PopNavigatorRouterDelegateMixin<GlobalNavigationConfiguration>
    implements MainRouterDelegate {
  late final MainRoutePageManager pageManager;
  MainRoutePageManager get internalPageManager => pageManager;

  MainRouterDelegateImpl(this.pageManager);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MainRoutePageManager>.value(
        value: pageManager,
        child: Consumer<MainRoutePageManager>(
          builder: (context, pageManager, child) {
            return Navigator(
                key: navigatorKey,
                onPopPage: _onPopPage,
                transitionDelegate: NoAnimationTransitionDelegate(),
                pages: pageManager.pages);
          },
        ));
  }

  @override
  GlobalKey<NavigatorState> get navigatorKey => pageManager.navigatorKey;

  @override
  Future<void> setNewRoutePath(
      GlobalNavigationConfiguration configuration) async {
    pageManager.setNewRoutePath(configuration);
  }

  bool _onPopPage(Route<dynamic> route, dynamic result) {
    return route.didPop(result);
  }
}
