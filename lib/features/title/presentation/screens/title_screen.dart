import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:remanga/core/di/dependency_injection_root.dart';
import 'package:remanga/core/model/title/full/title.dart' as TitleModel;
import 'package:remanga/core/model/title/preview/title_preview.dart';
import 'package:remanga/core/presentation/navigation/app_navigator.dart';
import 'package:remanga/core/presentation/navigation/route_names.dart';
import 'package:remanga/features/title/domain/title_info_bloc.dart';

class TitleScreen extends StatefulWidget {
  final TitlePreview _preview;

  TitleScreen(this._preview);

  @override
  State<StatefulWidget> createState() {
    return TitleScreenState(
        instance.get<AppNavigator>(),
        instance.get<TitleInfoBloc>(),
        _preview
    );
  }
}

class TitleScreenState extends State<TitleScreen> {
  AppNavigator navigator;
  TitleInfoBloc titleInfo;
  TitlePreview titlePreview;

  TitleScreenState(this.navigator, this.titleInfo, this.titlePreview) {
    titleInfo.title.listen((event) {
      print(event.img);
    });
  }

  @override
  void initState() {
    super.initState();

    updateData();
  }

  void updateData() {
    titleInfo.getTitleInfo(titlePreview.dir);
  }

  @override
  void dispose() {
    super.dispose();
    titleInfo.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Title Description',
              ),
              TextButton(onPressed: () => navigator.goBack(context), child: Text('Go back')),
              TextButton(onPressed: () => navigator.toRoot(context), child: Text('To root')),
              Expanded(
                  child: StreamBuilder(
                    stream: titleInfo.title,
                    builder: (BuildContext context, AsyncSnapshot<TitleModel.Title> snapshot) {
                      if (snapshot.hasError) {
                        return Text('Error: ${snapshot.error}');
                      }

                      switch (snapshot.connectionState) {
                        case ConnectionState.waiting:
                          return const Text('Loading...');
                        default:
                          var data = snapshot.data!;

                          return ListView(
                            children: [
                              CachedNetworkImage(
                                  imageUrl: "https://api.remanga.org" + data.img.high
                              ),
                              TextButton(
                                  onPressed: () {
                                    navigator.openModal(
                                        context,
                                        RouteNames.reader,
                                        arguments: data.firstChapter
                                    );
                                  },
                                  child: Text('Reader')
                              ),
                              Text("Rus: " + data.rusName),
                              Text("En: " + data.enName),
                              Text("Desc: " + data.description),
                              Text(data.countChapters.toString())
                            ],
                          );
                      }
                    },
                  )
              )
              /*TextButton(
                onPressed: toTitle,
                child: Text('Open another title description')),
            TextButton(onPressed: openReader, child: Text('Open reader')),
            TextButton(onPressed: goHome, child: Text('Go home'))*/
            ],
          ),
        ),
      ),
    );
  }
}
