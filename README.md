# ReManga

Mobile app for [ReManga project](https://remanga.org), adapted for mobile designs and best practices. For now using fake data.

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
