import 'package:flutter/material.dart';
import 'package:remanga/core/di/dependency_injection_root.dart';
import 'package:remanga/core/presentation/navigation/app_navigator.dart';
import 'package:remanga/core/presentation/navigation/route_names.dart';

class TitleScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TitleScreenState(instance.get<AppNavigator>());
  }
}

class TitleScreenState extends State<TitleScreen> {
  AppNavigator navigator;

  TitleScreenState(this.navigator);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Title Description',
            ),
            TextButton(onPressed: () => navigator.openModal(context, RouteNames.title), child: Text('Another Title')),
            TextButton(onPressed: () => navigator.goBack(context), child: Text('Go back')),
            TextButton(onPressed: () => navigator.toRoot(context), child: Text('To root')),
            TextButton(
                onPressed: () {
                  navigator.openModal(context, RouteNames.reader);
                },
                child: Text('Reader')
            ),
            /*TextButton(
                onPressed: toTitle,
                child: Text('Open another title description')),
            TextButton(onPressed: openReader, child: Text('Open reader')),
            TextButton(onPressed: goHome, child: Text('Go home'))*/
          ],
        ),
      ),
    );
  }
}
