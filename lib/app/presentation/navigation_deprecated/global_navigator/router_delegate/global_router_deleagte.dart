import 'package:flutter/material.dart';

import '../../global_navigation_configuration.dart';

abstract class GlobalRouterDelegate
    extends RouterDelegate<GlobalNavigationConfiguration>
    with
        ChangeNotifier,
        PopNavigatorRouterDelegateMixin<GlobalNavigationConfiguration> {}
