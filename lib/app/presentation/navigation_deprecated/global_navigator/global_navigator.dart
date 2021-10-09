import 'package:flutter/material.dart';
import 'package:remanga/app/presentation/navigation_deprecated/global_navigator/route_information_parser/global_route_information_parser.dart';
import 'package:remanga/app/presentation/navigation_deprecated/global_navigator/router_delegate/global_router_deleagte.dart';
import 'package:remanga/core/di/dependency_injection_root.dart';

class GlobalNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routeInformationParser: instance.get<GlobalRouteInformationParser>(),
      routerDelegate: instance.get<GlobalRouterDelegate>(),
    );
  }
}
