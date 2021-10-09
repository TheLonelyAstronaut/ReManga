import 'package:flutter/material.dart';
import 'package:remanga/core/di/dependency_injection_root.dart';
import 'package:remanga/core/presentation/navigation/app_navigator.dart';

class ReaderScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ReaderScreenState(instance.get<AppNavigator>());
  }
}

class ReaderScreenState extends State<ReaderScreen> {
  AppNavigator navigator;
  
  ReaderScreenState(this.navigator);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Reader',
            ),
            TextButton(onPressed: () => navigator.goBack(context), child: Text('Go back'))
          ],
        ),
      ),
    );
  }
}
