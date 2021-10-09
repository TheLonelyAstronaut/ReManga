import 'package:injectable/injectable.dart';
import 'package:remanga/features/title/data/title_repository.dart';
import 'package:rx_bloc/rx_bloc.dart';
import 'package:rxdart/rxdart.dart';

part 'title_list_bloc.rxb.g.dart';

abstract class TitleListBlocEvents {
  /// TODO: Document the event
  void getTopThirty();
}

abstract class TitleListBlocStates {
  Stream<String> get titles;
  Stream<bool> get isLoading;
  Stream<String> get errors;
}

@injectable
@RxBloc()
class TitleListBloc extends $TitleListBloc {
  final TitleRepository titleRepository;

  TitleListBloc(this.titleRepository);

  @override
  Stream<String> _mapToErrorsState() =>
      errorState.map((error) => error.toString());

  @override
  Stream<bool> _mapToIsLoadingState() => loadingState;

  @override
  Stream<String> _mapToTitlesState() {
    return Rx.merge<Result<String>>([
      _$getTopThirtyEvent
          .flatMap((_) => titleRepository.getTopThirty().asResultStream())
    ]).setResultStateHandler(this).whereSuccess();
  }
}