import 'package:flutter/material.dart';
import 'package:remanga/core/di/dependency_injection_root.dart';
import 'package:remanga/core/presentation/navigation/app_navigator.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginScreenState(instance.get<AppNavigator>());
  }
}

class LoginScreenState extends State<LoginScreen> {
  AppNavigator navigator;

  LoginScreenState(this.navigator);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Login',
            ),
            TextButton(onPressed: () => navigator.goBack(context), child: Text('Go back'))
          ],
        ),
      ),
    );
  }
}
