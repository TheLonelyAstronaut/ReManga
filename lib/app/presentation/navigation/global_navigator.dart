import 'package:flutter/material.dart';
import 'package:remanga/core/di/dependency_injection_root.dart';
import 'package:remanga/core/presentation/navigation/app_navigator.dart';

class GlobalNavigator extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return GlobalNavigatorState(instance.get<AppNavigator>());
  }
}

class GlobalNavigatorState extends State<GlobalNavigator> {
  AppNavigator navigator;

  GlobalNavigatorState(this.navigator);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: navigator.getRawNavigator().generator,
    );
  }
}
