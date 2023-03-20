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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyCLrherphcE5sswcjS-oXuJHdXrGeLUy9A',
    appId: '1:168127031547:web:c55ee0e896311ef7eda85e',
    messagingSenderId: '168127031547',
    projectId: 'contactpractice-c88ee',
    authDomain: 'contactpractice-c88ee.firebaseapp.com',
    storageBucket: 'contactpractice-c88ee.appspot.com',
    measurementId: 'G-ZY4N2JM0WN',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD8-x_kex_1qBWMfSDhO6Ap2V0Ak3xqQ2Y',
    appId: '1:168127031547:android:5df48a5aafec8d19eda85e',
    messagingSenderId: '168127031547',
    projectId: 'contactpractice-c88ee',
    storageBucket: 'contactpractice-c88ee.appspot.com',
  );
}