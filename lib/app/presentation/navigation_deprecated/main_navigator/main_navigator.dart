import 'package:flutter/material.dart';
import 'package:remanga/app/presentation/navigation_deprecated/global_navigator/page_manager/global_route_page_manager_impl.dart';

import 'router_delegate/main_router_delegate.dart';

class MainNavigator extends StatelessWidget {
  late final MainRouterDelegate routerDelegate;

  MainNavigator(this.routerDelegate);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Router(
        routerDelegate: routerDelegate,
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: Text('Home'),
              onTap: () {
                routerDelegate.internalPageManager.openHome();

                Navigator.of(context).pop();
              },
            ),
            ListTile(
              title: Text('User'),
              onTap: () {
                routerDelegate.internalPageManager.openUser();

                Navigator.of(context).pop();
              },
            ),
            ListTile(
              title: Text('Settings'),
              onTap: () {
                routerDelegate.internalPageManager.openSettings();

                Navigator.of(context).pop();
              },
            ),
            ListTile(
                title: Text('Login'),
                onTap: () {
                  GlobalRoutePageManagerImpl.of(context).openLogin();

                  Navigator.of(context).pop();
                }),
            ListTile(
                title: Text('TitleDescription'),
                onTap: () {
                  GlobalRoutePageManagerImpl.of(context).openTitleDescription();

                  Navigator.of(context).pop();
                }),
          ],
        ),
      ),
    );
  }
}
