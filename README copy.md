# ReManga Demo App

Mobile app for [ReManga portal](https://remanga.org), adopted for mobile designs and best practices. For now using fake data.

## Key Technologies Stack

- Flutter (2.2)
- RxDart
- BLoC
- Codegen
- Rx BLoC bindings (rx_bloc)
- DI (injectable)
- SQFLite
- Cached Image 
- http, graphql_flutter (?)

## Commands
    //Get dependencies
    flutter pub get

    //Run codegen for DI
    flutter packages pub run build_runner build --delete-conflicting-outputs
    
    //Run app
    flutter run
