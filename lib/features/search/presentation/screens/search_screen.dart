import 'package:flutter/material.dart';
import 'package:remanga/core/di/dependency_injection_root.dart';
import 'package:remanga/core/presentation/navigation/app_navigator.dart';
import 'package:remanga/core/presentation/navigation/route_names.dart';

class SearchScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SearchScreenState(instance.get<AppNavigator>());
  }
}

class SearchScreenState extends State<SearchScreen> {
  AppNavigator navigator;

  SearchScreenState(this.navigator);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Search',
            ),
            TextButton(onPressed: () => navigator.openModal(context, RouteNames.title), child: Text('Search title'))
          ],
        ),
      ),
    );
  }
}
