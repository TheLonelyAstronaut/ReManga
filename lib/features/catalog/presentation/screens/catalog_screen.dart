import 'package:flutter/material.dart';
import 'package:remanga/core/di/dependency_injection_root.dart';
import 'package:remanga/core/presentation/navigation/app_navigator.dart';
import 'package:remanga/core/presentation/navigation/route_names.dart';

class CatalogScreen extends StatefulWidget {
  @override
  State<CatalogScreen> createState() {
    return CatalogScreenState(instance.get<AppNavigator>());
  }
}

class CatalogScreenState extends State<CatalogScreen> {
  AppNavigator navigator;

  CatalogScreenState(this.navigator);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Catalog',
            ),
            TextButton(onPressed: () => navigator.openModal(context, RouteNames.title), child: Text(
              'To Title',
            ))
          ],
        ),
      ),
    );
  }
}
