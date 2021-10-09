import 'package:flutter/material.dart';
import 'package:remanga/core/di/dependency_injection_root.dart';
import 'package:remanga/core/presentation/navigation/app_navigator.dart';

class SettingsScreen extends StatefulWidget {
  @override
  State<SettingsScreen> createState() {
    return SettingsScreenState(instance.get<AppNavigator>());
  }
}

class SettingsScreenState extends State<SettingsScreen> {
  AppNavigator navigation;

  SettingsScreenState(this.navigation);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Settings',
            ),
            TextButton(onPressed: () => navigation.goBack(context), child: Text("Go back"))
          ],
        ),
      ),
    );
  }
}
