import 'package:injectable/injectable.dart';
import 'package:remanga/core/domain/base_bloc.dart';
import 'package:remanga/core/model/title/full/title.dart';
import 'package:remanga/features/title/data/repository/title_repository.dart';
import 'package:rxdart/rxdart.dart';

@injectable
class TitleInfoBloc extends BaseBloc {
  final _$getTitleInfo = PublishSubject<String>();

  final TitleRepository _titleRepository;

  late Stream<Title> title;

  TitleInfoBloc(this._titleRepository): super() {
    title = _$getTitleInfo
        .doOnEach((_) => switchLoadingState())
        .flatMap((String titleDir) =>
          _titleRepository
              .getTitleInfo(titleDir)
              .doOnDone(switchLoadingState)
        )
        .asBroadcastStream();
  }

  void getTitleInfo(String titleID) => _$getTitleInfo.add(titleID);

  @override
  void dispose() async {
    super.dispose();
    await _$getTitleInfo.drain();
    _$getTitleInfo.close();
  }
}