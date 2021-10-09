import 'package:flutter/material.dart';
import 'package:remanga/core/di/dependency_injection_root.dart';
import 'package:remanga/core/presentation/navigation/app_navigator.dart';
import 'package:remanga/core/presentation/navigation/route_names.dart';

class BookmarksScreen extends StatefulWidget {
  @override
  State<BookmarksScreen> createState() {
    return BookmarksScreenState(instance.get<AppNavigator>());
  }
}

class BookmarksScreenState extends State<BookmarksScreen> {
  AppNavigator navigator;

  BookmarksScreenState(this.navigator);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Bookmarks',
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
