// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: RxBlocGeneratorForAnnotation
// **************************************************************************

part of 'title_list_bloc.dart';

/// Used as a contractor for the bloc, events and states classes
/// {@nodoc}
abstract class TitleListBlocType extends RxBlocTypeBase {
  TitleListBlocEvents get events;
  TitleListBlocStates get states;
}

/// [$TitleListBloc] extended by the [TitleListBloc]
/// {@nodoc}
abstract class $TitleListBloc extends RxBlocBase
    implements TitleListBlocEvents, TitleListBlocStates, TitleListBlocType {
  final _compositeSubscription = CompositeSubscription();

  /// Тhe [Subject] where events sink to by calling [getTopThirty]
  final _$getTopThirtyEvent = PublishSubject<void>();

  /// The state of [titles] implemented in [_mapToTitlesState]
  late final Stream<String> _titlesState = _mapToTitlesState();

  /// The state of [isLoading] implemented in [_mapToIsLoadingState]
  late final Stream<bool> _isLoadingState = _mapToIsLoadingState();

  /// The state of [errors] implemented in [_mapToErrorsState]
  late final Stream<String> _errorsState = _mapToErrorsState();

  @override
  void getTopThirty() => _$getTopThirtyEvent.add(null);

  @override
  Stream<String> get titles => _titlesState;

  @override
  Stream<bool> get isLoading => _isLoadingState;

  @override
  Stream<String> get errors => _errorsState;

  Stream<String> _mapToTitlesState();

  Stream<bool> _mapToIsLoadingState();

  Stream<String> _mapToErrorsState();

  @override
  TitleListBlocEvents get events => this;

  @override
  TitleListBlocStates get states => this;

  @override
  void dispose() {
    _$getTopThirtyEvent.close();
    _compositeSubscription.dispose();
    super.dispose();
  }
}
