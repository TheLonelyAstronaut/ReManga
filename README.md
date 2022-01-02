# ReManga

Mobile app for [ReManga project](https://remanga.org), adapted for mobile designs and best practices.

## Key Technologies Stack

- Flutter (2.2)
- Fluro
- RxDart
- BLoC
- Codegen
- DI (injectable)
- SQFLite
- Cached Image
- Dio, retrofit_dart

## Commands
    //Get dependencies
    flutter pub get

    //Run codegen for DI
    flutter packages pub run build_runner build --delete-conflicting-outputs
    
    //Run app
    flutter run

## Patching flutter
Cause of strange default behavior of zoomable list, you need to patch lib/src/gestures/scale.dart:

    void _advanceStateMachine(bool shouldStartIfAccepted, PointerDeviceKind pointerDeviceKind) {
      if (_state == _ScaleState.ready)
        _state = _ScaleState.possible;

    // add this
    if (_pointerQueue.length == 2) {
      resolve(GestureDisposition.accepted);
    }

    if (_state == _ScaleState.possible) {
    ...

