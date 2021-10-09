import 'package:flutter/material.dart';
import 'package:remanga/core/di/dependency_injection_root.dart';
import 'package:remanga/core/presentation/navigation/app_navigator.dart';
import 'package:remanga/core/presentation/navigation/route_names.dart';

class ProfileScreen extends StatefulWidget {
  @override
  State<ProfileScreen> createState() {
    return ProfileScreenState(instance.get<AppNavigator>());
  }
}

class ProfileScreenState extends State<ProfileScreen> {
  AppNavigator navigation;

  ProfileScreenState(this.navigation);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Profile',
            ),
            TextButton(onPressed: () => navigation.openModal(context, RouteNames.login), child: Text(
              'To Login',
            )),
            TextButton(onPressed: () => navigation.openModal(context, RouteNames.settings), child: Text(
              'To Settings',
            ))
          ],
        ),
      ),
    );
  }
}
