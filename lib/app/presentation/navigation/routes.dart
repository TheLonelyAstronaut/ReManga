import 'package:fluro/fluro.dart';
import 'package:remanga/core/presentation/navigation/route_names.dart';
import 'package:remanga/features/home/presentation/navigation/fluro_extension.dart';
import 'package:remanga/features/title/presentation/navigation/fluro_extension.dart';
import 'package:remanga/features/reader/presentation/navigation/fluro_extension.dart';
import 'package:remanga/features/main_navigation/presentation/navigation/fluro_extension.dart';
import 'package:remanga/features/authentication/presentation/navigation/fluro_extension.dart';
import 'package:remanga/features/settings/presentation/navigation/fluro_extension.dart';

class Routes {
  static FluroRouter getConfiguredRouter() {
    FluroRouter router = FluroRouter();

    router.define(RouteNames.main, handler: MainNavigationScreenNavigation.getRouteHandler());
    router.define(RouteNames.home, handler: HomeScreenNavigation.getRouteHandler());
    router.define(RouteNames.title, handler: TitleDescriptionScreenNavigation.getRouteHandler());
    router.define(RouteNames.reader, handler: ReaderScreenScreenNavigation.getRouteHandler());
    router.define(RouteNames.login, handler: LoginScreenExtension.getRouteHandler());
    router.define(RouteNames.settings, handler: SettingsScreenNavigation.getRouteHandler());

    return router;
  }
}