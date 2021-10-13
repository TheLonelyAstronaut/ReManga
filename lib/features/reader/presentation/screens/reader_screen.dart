import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:remanga/core/di/dependency_injection_root.dart';
import 'package:remanga/core/model/chapter/full/chapter.dart';
import 'package:remanga/core/model/chapter/preview/chapter_preview.dart';
import 'package:remanga/core/presentation/navigation/app_navigator.dart';
import 'package:remanga/features/reader/domain/chapter_info_bloc.dart';
import 'package:remanga/features/reader/utils/ImageSizeHelper.dart';

class ReaderScreen extends StatefulWidget {
  final ChapterPreview _preview;

  ReaderScreen(this._preview);

  @override
  State<StatefulWidget> createState() {
    return ReaderScreenState(
        instance.get<AppNavigator>(),
        instance.get<ChapterInfoBloc>(),
        _preview
    );
  }
}

class ReaderScreenState extends State<ReaderScreen> {
  AppNavigator navigator;
  ChapterInfoBloc chapterInfoBloc;
  ChapterPreview preview;
  
  ReaderScreenState(this.navigator, this.chapterInfoBloc, this.preview);

  @override
  void initState() {
    super.initState();

    updateData();
  }

  void updateData() {
    print(preview.id);
    chapterInfoBloc.getTitleInfo(preview.id.toString());
  }

  @override
  void dispose() {
    super.dispose();
    chapterInfoBloc.dispose();
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
                'Reader',
              ),
              TextButton(onPressed: () => navigator.goBack(context), child: Text('Go back')),
              Expanded(
                child: StreamBuilder(
                    stream: chapterInfoBloc.chapter,
                    builder: (BuildContext context, AsyncSnapshot<Chapter> snapshot) {
                      if (snapshot.hasError) {
                        return Text('Error: ${snapshot.error}');
                      }

                      switch (snapshot.connectionState) {
                        case ConnectionState.waiting:
                          return const Text('Loading...');
                        default:
                          var data = snapshot.data!;

                          return ListView.builder(
                              itemCount: data.pages.length,
                              restorationId: 'Bruh',
                              // Ultra unperformance usage bruh, but one image
                              // could be 7000 px height and we need to pre-render
                              // next or last to avoid seeing loading indicator
                              cacheExtent: 10000,
                              // To remove glitches between image via scrolling
                              addRepaintBoundaries: false,
                              // iPhone 12 - still 60 FPS
                              itemBuilder: (context, int index) {
                                var image = data.pages[index];
                                var size = ImageSizeHelper(
                                    image.height.toDouble(),
                                    image.width.toDouble()
                                );

                                return CachedNetworkImage(
                                    imageUrl: image.link,
                                    height: size.height,
                                    width: size.width,
                                    progressIndicatorBuilder: (context, url, progress) {
                                      return CircularProgressIndicator.adaptive();
                                    },
                                );
                              }
                          );
                      }
                    }
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
