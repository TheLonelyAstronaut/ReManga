// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../app/presentation/navigation_deprecated/global_navigator/page_manager/global_route_page_manager.dart'
    as _i5;
import '../../app/presentation/navigation_deprecated/global_navigator/page_manager/global_route_page_manager_impl.dart'
    as _i6;
import '../../app/presentation/navigation_deprecated/global_navigator/route_information_parser/global_route_information_parser.dart'
    as _i3;
import '../../app/presentation/navigation_deprecated/global_navigator/route_information_parser/global_route_information_parser_impl.dart'
    as _i4;
import '../../app/presentation/navigation_deprecated/global_navigator/router_delegate/global_router_deleagte.dart'
    as _i7;
import '../../app/presentation/navigation_deprecated/global_navigator/router_delegate/global_router_delegate_impl.dart'
    as _i8;
import '../../app/presentation/navigation_deprecated/main_navigator/page_manager/main_route_page_manager.dart'
    as _i10;
import '../../app/presentation/navigation_deprecated/main_navigator/page_manager/main_route_page_manager_impl.dart'
    as _i11;
import '../../app/presentation/navigation_deprecated/main_navigator/router_delegate/main_router_delegate.dart'
    as _i12;
import '../../app/presentation/navigation_deprecated/main_navigator/router_delegate/main_router_delegate_impl.dart'
    as _i13;
import '../../features/title/data/title_repository.dart' as _i15;
import '../../features/title/data/title_repository_impl.dart' as _i16;
import '../../features/title/domain/title_list/title_list_bloc.dart' as _i17;
import '../data/api/api_service.dart' as _i14;
import '../data/api/http_client.dart'
    as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.GlobalRouteInformationParser>(
      () => _i4.GlobalRouteInformationParserImpl());
  gh.lazySingleton<_i5.GlobalRoutePageManager>(
      () => _i6.GlobalRoutePageManagerImpl());
  gh.lazySingleton<_i7.GlobalRouterDelegate>(
      () => _i8.GlobalRouterDelegateImpl(get<_i5.GlobalRoutePageManager>()));
  gh.singleton<_i9.HttpClient>(_i9.HttpClient());
  gh.lazySingleton<_i10.MainRoutePageManager>(
      () => _i11.MainRoutePageManagerImpl());
  gh.lazySingleton<_i12.MainRouterDelegate>(
      () => _i13.MainRouterDelegateImpl(get<_i10.MainRoutePageManager>()));
  gh.singleton<_i14.APIService>(_i14.APIService(get<_i9.HttpClient>()));
  gh.singleton<_i15.TitleRepository>(
      _i16.TitleRepositoryImpl(get<_i14.APIService>()));
  gh.factory<_i17.TitleListBloc>(
      () => _i17.TitleListBloc(get<_i15.TitleRepository>()));
  return get;
}
