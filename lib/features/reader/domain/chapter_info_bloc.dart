import 'package:injectable/injectable.dart';
import 'package:remanga/core/domain/base_bloc.dart';
import 'package:remanga/core/model/chapter/full/chapter.dart';
import 'package:remanga/features/title/data/repository/title_repository.dart';
import 'package:rxdart/rxdart.dart';

@injectable
class ChapterInfoBloc extends BaseBloc {
  final _$getChapterInfo = BehaviorSubject<String>();

  final TitleRepository _titleRepository;

  late Stream<Chapter> chapter;

  ChapterInfoBloc(this._titleRepository): super() {
    chapter = _$getChapterInfo
        .doOnEach((_) => switchLoadingState())
        .flatMap((String chapterID) =>
          _titleRepository
              .getChapterInfo(chapterID)
              .doOnDone(switchLoadingState)
        )
        .asBroadcastStream();
  }

  void getTitleInfo(String titleID) => _$getChapterInfo.add(titleID);

  @override
  void dispose() async {
    super.dispose();
    await _$getChapterInfo.drain();
    _$getChapterInfo.close();
  }
}