import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:remanga/app/presentation/navigation/routes.dart';
import 'package:remanga/core/presentation/navigation/app_navigator.dart';

import 'dependency_injection_root.config.dart';

final instance = GetIt.instance;

@InjectableInit()
void configureDependencies() {
  $initGetIt(instance);

  instance.registerSingleton(AppNavigator(Routes.getConfiguredRouter()));
}
