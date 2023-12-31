// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;
import 'package:firebase_core/firebase_core.dart';
// ...

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
    apiKey: 'AIzaSyCfiRdPU2QMhTiJ3D_XTeNWYBNNILpNirU',
    appId: '1:895752599807:web:b9aac64145223b3620f4ca',
    messagingSenderId: '895752599807',
    projectId: 'habitup-abc',
    authDomain: 'habitup-abc.firebaseapp.com',
    storageBucket: 'habitup-abc.appspot.com',
    measurementId: 'G-L54SRP3M9F',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAXsHI1VgIV68q2lwpyhUXGwTw8GKa2SnQ',
    appId: '1:895752599807:android:16a6870da753fef220f4ca',
    messagingSenderId: '895752599807',
    projectId: 'habitup-abc',
    storageBucket: 'habitup-abc.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB86l6c7GiAmpu4hwDHgZT_M3E13PxEeU0',
    appId: '1:895752599807:ios:04ad4ee02dc30a4320f4ca',
    messagingSenderId: '895752599807',
    projectId: 'habitup-abc',
    storageBucket: 'habitup-abc.appspot.com',
    iosBundleId: 'com.example.routinerHabitTrackerApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB86l6c7GiAmpu4hwDHgZT_M3E13PxEeU0',
    appId: '1:895752599807:ios:2c539de88f4fb38d20f4ca',
    messagingSenderId: '895752599807',
    projectId: 'habitup-abc',
    storageBucket: 'habitup-abc.appspot.com',
    iosBundleId: 'com.example.routinerHabitTrackerApp.RunnerTests',
  );
}
