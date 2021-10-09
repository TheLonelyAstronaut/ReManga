import 'package:flutter/material.dart';
import 'package:remanga/app/presentation/navigation_deprecated/main_navigator/page_manager/main_route_page_manager.dart';

import '../../global_navigation_configuration.dart';

abstract class MainRouterDelegate
    extends RouterDelegate<GlobalNavigationConfiguration>
    with
        ChangeNotifier,
        PopNavigatorRouterDelegateMixin<GlobalNavigationConfiguration> {
  MainRoutePageManager get internalPageManager;
}
