import 'package:injectable/injectable.dart';
import 'package:remanga/core/domain/base_bloc.dart';
import 'package:remanga/core/model/title/preview/title_preview.dart';
import 'package:remanga/features/title/data/title_repository.dart';
import 'package:rxdart/rxdart.dart';

@injectable
class TitleListBloc extends BaseBloc {
  final _$getTopThirtyEvent = PublishSubject<void>();

  final TitleRepository _titleRepository;

  late Stream<List<TitlePreview>> titles;

  TitleListBloc(this._titleRepository): super() {
    titles = _$getTopThirtyEvent
        .doOnEach((_) => switchLoadingState())
        .flatMap((_) =>
          _titleRepository
              .getTopThirty()
              .doOnDone(switchLoadingState)
        )
        .asBroadcastStream();
  }

  void getTopThirty() => _$getTopThirtyEvent.add(null);
}