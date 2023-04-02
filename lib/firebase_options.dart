// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBIB8DYFa8GIUdWvJcLILmWAUuy8XzR7TE',
    appId: '1:592244073089:web:aeba71e0eb0cdfdeb0e380',
    messagingSenderId: '592244073089',
    projectId: 'flutter-final-project-c0b11',
    authDomain: 'flutter-final-project-c0b11.firebaseapp.com',
    storageBucket: 'flutter-final-project-c0b11.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB8aLd-d-FpK1Ar4UoT2zMvC7F1LCgIDnE',
    appId: '1:592244073089:android:3b6c1be3191473a1b0e380',
    messagingSenderId: '592244073089',
    projectId: 'flutter-final-project-c0b11',
    storageBucket: 'flutter-final-project-c0b11.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD4jQRQ8DF4vioLILpNB4pihynI_nNGmMM',
    appId: '1:592244073089:ios:ddb6ba7cf409c813b0e380',
    messagingSenderId: '592244073089',
    projectId: 'flutter-final-project-c0b11',
    storageBucket: 'flutter-final-project-c0b11.appspot.com',
    iosClientId: '592244073089-i33f1kjna7edarsebj9rdt7n5b4dp1l2.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterFinalProject',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD4jQRQ8DF4vioLILpNB4pihynI_nNGmMM',
    appId: '1:592244073089:ios:ddb6ba7cf409c813b0e380',
    messagingSenderId: '592244073089',
    projectId: 'flutter-final-project-c0b11',
    storageBucket: 'flutter-final-project-c0b11.appspot.com',
    iosClientId: '592244073089-i33f1kjna7edarsebj9rdt7n5b4dp1l2.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterFinalProject',
  );
}
