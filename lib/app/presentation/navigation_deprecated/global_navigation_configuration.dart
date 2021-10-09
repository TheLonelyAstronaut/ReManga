class GlobalNavigationConfiguration {
  final int id;

  GlobalNavigationConfiguration.main() : id = 0;
  GlobalNavigationConfiguration.home() : id = 1;
  GlobalNavigationConfiguration.settings() : id = 2;
  GlobalNavigationConfiguration.user() : id = 3;
  GlobalNavigationConfiguration.login() : id = 4;
  GlobalNavigationConfiguration.titleDescription() : id = 5;
  GlobalNavigationConfiguration.reader() : id = 6;
  GlobalNavigationConfiguration.unknown() : id = -1;

  bool get isMain => id == 0 || id == 1 || id == 2 || id == 3;
  bool get isHome => id == 1;
  bool get isSettings => id == 2;
  bool get isUser => id == 3;
  bool get isLogin => id == 4;
  bool get isTitleDescription => id == 5;
  bool get isReader => id == 6;
  bool get isUnknown => id == -1;
}

GlobalNavigationConfiguration parseRoute(Uri uri) {
  print(uri);

  //Handle '/'
  if (uri.pathSegments.isEmpty) {
    return GlobalNavigationConfiguration.main();
  }

  return GlobalNavigationConfiguration.unknown();
}
