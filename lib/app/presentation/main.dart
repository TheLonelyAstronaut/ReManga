import 'package:flutter/material.dart';
import 'package:remanga/core/di/dependency_injection_root.dart';

import 'navigation/global_navigator.dart';

void main() {
  configureDependencies();

  runApp(ReManga());
}

class ReManga extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GlobalNavigator();
  }
}
