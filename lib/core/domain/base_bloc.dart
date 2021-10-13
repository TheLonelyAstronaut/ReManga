import 'package:rxdart/rxdart.dart';

abstract class BaseBloc {
  final _$isLoading = BehaviorSubject<bool>();
  late Stream<bool> isLoading;

  // TODO: Implement
  //late Stream<> error;

  BaseBloc() {
    _$isLoading.value = false;

    isLoading = _$isLoading
        .asBroadcastStream();
  }

  void switchLoadingState() {
    _$isLoading.add(!_$isLoading.value);
  }

  void dispose() {
    _$isLoading.close();
  }
}