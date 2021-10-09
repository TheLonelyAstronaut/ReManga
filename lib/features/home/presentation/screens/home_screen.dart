import 'package:flutter/material.dart';
import 'package:remanga/core/di/dependency_injection_root.dart';
import 'package:remanga/core/presentation/navigation/app_navigator.dart';
import 'package:remanga/core/presentation/navigation/route_names.dart';
import 'package:remanga/features/title/domain/title_list/title_list_bloc.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeScreenState(
        instance.get<AppNavigator>(), instance.get<TitleListBloc>());
  }
}

class HomeScreenState extends State<HomeScreen> {
  final AppNavigator navigator;
  final TitleListBloc titleListBloc;

  HomeScreenState(this.navigator, this.titleListBloc);

  @override
  void initState() {
    super.initState();

    titleListBloc.states.titles.listen((event) {
      print(event);
    });

    titleListBloc.states.isLoading.listen((event) {
      print(event);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Home',
            ),
            TextButton(
                onPressed: () => navigator.openModal(context, RouteNames.title),
                child: Text('Open title')),
            TextButton(
                onPressed: titleListBloc.events.getTopThirty,
                child: Text('Get top 30'))
          ],
        ),
      ),
    );
  }
}
