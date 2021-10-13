import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:remanga/core/di/dependency_injection_root.dart';
import 'package:remanga/core/model/title/preview/title_preview.dart';
import 'package:remanga/core/presentation/navigation/app_navigator.dart';
import 'package:remanga/core/presentation/navigation/route_names.dart';
import 'package:remanga/features/home/domain/top_thirty_bloc.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeScreenState(
        instance.get<AppNavigator>(), instance.get<TopThirtyBloc>());
  }
}

class HomeScreenState extends State<HomeScreen> {
  final AppNavigator navigator;
  final TopThirtyBloc topThirtyBloc;

  HomeScreenState(this.navigator, this.topThirtyBloc) {
    topThirtyBloc.titles.listen((event) {
      print(event);
    });

    topThirtyBloc.isLoading.listen((event) {
      print(event);
    });
  }

  @override
  void initState() {
    super.initState();

    updateData();
  }

  void updateData() {
    topThirtyBloc.getTopThirty();
  }

  @override
  void dispose() {
    super.dispose();
    topThirtyBloc.dispose();
  }

  void handleTitlePress(TitlePreview title) {
    navigator.openModal(context, RouteNames.title, arguments: title);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Text(
                'Home',
              ),
              TextButton(
                  onPressed: topThirtyBloc.getTopThirty,
                  child: Text('Get top 30')),
              Expanded(
                  child: StreamBuilder(
                      stream: topThirtyBloc.titles,
                      builder: (BuildContext context, AsyncSnapshot<List<TitlePreview>> snapshot) {
                        if (snapshot.hasError) {
                          return Text('Error: ${snapshot.error}');
                        }

                        switch (snapshot.connectionState) {
                          case ConnectionState.waiting:
                            return const Text('Loading...');
                          default:
                            return ListView.builder(
                                itemCount: snapshot.data?.length ?? 0,
                                itemBuilder: (context, int index) {
                                  var data = snapshot.data![index];

                                  return GestureDetector(
                                    onTap: () => handleTitlePress(data),
                                    child: Container(
                                      color: Colors.transparent,
                                      child: Row(
                                        children: [
                                          CachedNetworkImage(
                                              imageUrl: "https://api.remanga.org" + data.img.low
                                          ),
                                          Flexible(child: Text(data.rusName))
                                        ],
                                      ),
                                    ),
                                  );
                                }
                            );
                        }
                      }
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}
