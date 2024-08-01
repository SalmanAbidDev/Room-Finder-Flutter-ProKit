// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyD79n9l75F4BXndb6MoLT9FWXIarzgcXTU',
    appId: '1:97747204153:web:ecf66c1a65cebf581bb5e8',
    messagingSenderId: '97747204153',
    projectId: 'room-finder-dc35b',
    authDomain: 'room-finder-dc35b.firebaseapp.com',
    storageBucket: 'room-finder-dc35b.appspot.com',
    measurementId: 'G-16WDZH4PBF',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCaYhWpkPIQV-PC6-unGILxY2SjnmJLL4M',
    appId: '1:97747204153:android:e082400d60396aa01bb5e8',
    messagingSenderId: '97747204153',
    projectId: 'room-finder-dc35b',
    storageBucket: 'room-finder-dc35b.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBD9Z8RGmebU1NlgxdZYh2mQfQCae9Fu8Q',
    appId: '1:97747204153:ios:9bf96005e7c278bd1bb5e8',
    messagingSenderId: '97747204153',
    projectId: 'room-finder-dc35b',
    storageBucket: 'room-finder-dc35b.appspot.com',
    iosBundleId: 'com.example.proKitRoomFinder',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyD79n9l75F4BXndb6MoLT9FWXIarzgcXTU',
    appId: '1:97747204153:web:4771d799a545ea9d1bb5e8',
    messagingSenderId: '97747204153',
    projectId: 'room-finder-dc35b',
    authDomain: 'room-finder-dc35b.firebaseapp.com',
    storageBucket: 'room-finder-dc35b.appspot.com',
    measurementId: 'G-T8NEYWV5NY',
  );

}